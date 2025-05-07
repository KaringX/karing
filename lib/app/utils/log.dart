import 'dart:io';
import 'package:karing/app/utils/error_reporter_utils.dart';
import 'package:karing/app/utils/path_utils.dart';
import 'package:logger/logger.dart';

class DevelopmentFilter extends LogFilter {
  @override
  bool shouldLog(LogEvent event) => event.level.index >= level!.index;
}

class FileLogOutput extends LogOutput {
  File? _file;
  RandomAccessFile? _raf;
  final bool _inProduction = bool.fromEnvironment("dart.vm.product");
  bool _noSpace = false;

  final List<OutputEvent> _cacheEvents = [];
  bool _fileAppending = false;

  @override
  Future<void> init() async {
    String logFilePath = await PathUtils.logFilePath();
    _file = File(logFilePath);
    _raf = await _file!.open(mode: FileMode.writeOnlyAppend);
  }

  @override
  Future<void> destroy() async {
    _cacheEvents.clear();
    try {
      await _raf?.close();
    } catch (err) {}
    _raf = null;
    _file = null;
  }

  @override
  void output(OutputEvent event) async {
    if (_file == null || _raf == null) {
      return;
    }
    if (_noSpace) {
      return;
    }

    if (_cacheEvents.length < 100) {
      _cacheEvents.add(event);
    }

    _write();
  }

  Future<void> _write() async {
    if (_file == null || _raf == null) {
      return;
    }
    if (_noSpace) {
      return;
    }
    if (_fileAppending || _cacheEvents.isEmpty) {
      return;
    }

    _fileAppending = true;
    final buffer = StringBuffer();
    for (var event in _cacheEvents) {
      buffer.writeAll(event.lines, ' ');
    }
    _cacheEvents.clear();

    try {
      final fileSize = await _file!.length();
      if (fileSize > 100 * 1024) {
        await _raf!.setPosition(0);
      } else {
        final pos = await _raf!.position();
        if (pos > fileSize) {
          await _raf!.setPosition(fileSize);
        }
      }

      await _raf!.writeString(buffer.toString());
    } catch (err) {
      if (!_noSpace) {
        _noSpace = ErrorReporterUtils.tryReportNoSpace(err.toString());
      }
    }
    _fileAppending = false;
    Future.delayed(const Duration(seconds: 1), _write);
  }
}

class Printer extends LogPrinter {
  final Map<Level, String> _prefixMap = {
    Level.debug: 'DEBUG',
    Level.info: 'INFO',
    Level.warning: 'WARNING',
    Level.error: 'ERROR',
  };

  @override
  List<String> log(LogEvent event) {
    String zone = event.time.timeZoneOffset.inHours.toString();
    zone = zone.padLeft(2, '0');
    String time =
        "${event.time.timeZoneOffset.inHours > 0 ? "+" : "-"}$zone  ${event.time.toLocal().toString()}";
    List<String> ret = [
      time,
      _prefixMap[event.level] ?? 'UNKNOWN',
      event.message,
    ];

    if (event.error != null) {
      ret.add(event.error.toString());
    }
    if (event.stackTrace != null) {
      ret.add(event.stackTrace.toString());
    }

    ret.add('\n');
    return ret;
  }
}

class Log {
  static final FileLogOutput _fileLogOutput = FileLogOutput();
  static final Logger _logger = Logger(
    printer: Printer(),
    filter: DevelopmentFilter(),
    output: _fileLogOutput,
    level:
        bool.fromEnvironment("dart.vm.product") ? Level.warning : Logger.level,
  );

  Log._();
  static Future<void> init() async {
    await _fileLogOutput.init();
  }

  static Future<void> uninit() async {
    await _fileLogOutput.destroy();
  }

  static void d(dynamic message) {
    _logger.d(message);
  }

  static void i(dynamic message) {
    _logger.i(message);
  }

  static void w(dynamic message) {
    _logger.w(message);
  }

  static void e(dynamic message) {
    _logger.e(message);
  }
}
