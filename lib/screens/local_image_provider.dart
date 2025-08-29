import 'dart:async';
import 'dart:io';
import 'dart:ui' as ui show Codec, ImmutableBuffer;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

@immutable
class LocalImageProvider extends ImageProvider<LocalImageProvider> {
  const LocalImageProvider(
    this.path, {
    this.scale = 1.0,
  });

  /// path of the image to load
  final String path;

  /// Scale of the image
  final double scale;
  @override
  Future<LocalImageProvider> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture<LocalImageProvider>(this);
  }

  @override
  ImageStreamCompleter loadImage(
    LocalImageProvider key,
    ImageDecoderCallback decode,
  ) {
    final chunkEvents = StreamController<ImageChunkEvent>();
    final imageStreamCompleter = MultiFrameImageStreamCompleter(
      codec: _loadImageAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: key.scale,
      informationCollector: () => <DiagnosticsNode>[
        DiagnosticsProperty<ImageProvider>('Image provider', this),
        DiagnosticsProperty<LocalImageProvider>('Image key', key),
      ],
    );

    return imageStreamCompleter;
  }

  Future<ui.Codec> _loadImageAsync(
    LocalImageProvider key,
    StreamController<ImageChunkEvent> chunkEvents,
    ImageDecoderCallback decode,
  ) async {
    assert(key == this);
    final file = File(path);
    if (!await file.exists()) {
      PaintingBinding.instance.imageCache.evict(key);
      throw StateError('$path is not exist.');
    }
    final bytes = file.readAsBytesSync();
    if (bytes.lengthInBytes == 0) {
      PaintingBinding.instance.imageCache.evict(key);
      throw StateError('$path cannot be loaded as an image.');
    }
    return decode(await ui.ImmutableBuffer.fromUint8List(bytes));
  }

  @override
  bool operator ==(Object other) {
    if (other is LocalImageProvider) {
      return ((path) == (path)) && scale == other.scale;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(path, scale);

  @override
  String toString() => 'LocalImageProvider("$path", scale: $scale)';
}
