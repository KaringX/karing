// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:karing/app/utils/platform_utils.dart';
import 'package:karing/app/utils/qrcode_utils.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';
import 'package:screen_capturer/screen_capturer.dart';

class QrcodeScanResult {
  String? qrcode;
}

class AddProfileByScanQrcodeScanScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "AddProfileByScanQrcodeScanScreen");
  }

  const AddProfileByScanQrcodeScanScreen({super.key});

  @override
  State<AddProfileByScanQrcodeScanScreen> createState() =>
      _AddProfileByScanQrcodeScanScreenState();
}

class _AddProfileByScanQrcodeScanScreenState
    extends LasyRenderingState<AddProfileByScanQrcodeScanScreen> {
  final QrcodeScanResult _result = QrcodeScanResult();
  Barcode? result;
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  Image? _image;
  String _qrContent = "";
  bool _scanFromFile = false;
  bool _showSnackBarShowed = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    controller?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    //Size windowSize = MediaQuery.of(context).size;
    return PopScope(
        canPop: true,
        onPopInvokedWithResult: (didPop, result) {
          if (_showSnackBarShowed) {
            ScaffoldMessenger.of(context).removeCurrentSnackBar();
          }
        },
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.zero,
            child: AppBar(),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: buildBar(context),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  PlatformUtils.isMobile()
                      ? _scanFromFile
                          ? buildForMobileScanByImport(context)
                          : buildForMobile(context)
                      : buildForPC(context),
                ],
              ),
            ),
          ),
        ));
  }

  List<Widget> buildBar(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    if (PlatformUtils.isMobile()) {
      return [
        InkWell(
          onTap: () => Navigator.pop(context),
          child: const SizedBox(
            width: 50,
            height: 30,
            child: Icon(
              Icons.arrow_back_ios_outlined,
              size: 26,
            ),
          ),
        ),
        SizedBox(
          width: windowSize.width - 50 * 2 - (_scanFromFile ? 70 : 100),
          child: Text(
            tcontext.meta.qrcodeScan,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
                fontWeight: ThemeConfig.kFontWeightTitle,
                fontSize: ThemeConfig.kFontSizeTitle),
          ),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _scanFromFile
              ? IconButton(
                  icon: const Icon(Icons.fit_screen_outlined),
                  iconSize: 26,
                  onPressed: () {
                    _scanFromFile = false;
                    setState(() {});
                  })
              : IconButton(
                  icon: const Icon(Icons.file_open_outlined),
                  iconSize: 26,
                  onPressed: () {
                    _scanFromFile = true;
                    setState(() {});
                  }),
          _scanFromFile
              ? const SizedBox(
                  width: 1,
                )
              : IconButton(
                  icon: FutureBuilder(
                      future: getFlashState(),
                      builder:
                          (BuildContext context, AsyncSnapshot<bool> snapshot) {
                        return snapshot.hasData && snapshot.data!
                            ? const Icon(Icons.flash_on_outlined,
                                color: ThemeDefine.kColorBlue)
                            : const Icon(Icons.flash_off_outlined);
                      }),
                  iconSize: 26,
                  onPressed: () async {
                    try {
                      await controller!.toggleFlash();
                    } catch (err) {
                      DialogUtils.showAlertDialog(context, err.toString(),
                          showCopy: true, showFAQ: true, withVersion: true);
                    }

                    setState(() {});
                  },
                ),
          InkWell(
            onTap: () async {
              if (_qrContent.isEmpty) {
                DialogUtils.showAlertDialog(
                    context, tcontext.meta.qrcodeScanResultEmpty);
                return;
              }
              if (!mounted) {
                return;
              }
              _result.qrcode = _qrContent;
              Navigator.pop(context, _result);
            },
            child: Tooltip(
                message: tcontext.meta.save,
                child: const SizedBox(
                  width: 50,
                  height: 30,
                  child: Icon(
                    Icons.done,
                    size: 26,
                  ),
                )),
          ),
        ]),
      ];
    }
    return [
      InkWell(
        onTap: () => Navigator.pop(context),
        child: const SizedBox(
          width: 50,
          height: 30,
          child: Icon(
            Icons.arrow_back_ios_outlined,
            size: 26,
          ),
        ),
      ),
      SizedBox(
        width: windowSize.width - 50 * 2,
        child: Text(
          tcontext.meta.qrcodeScan,
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontWeight: ThemeConfig.kFontWeightTitle,
              fontSize: ThemeConfig.kFontSizeTitle),
        ),
      ),
      InkWell(
        onTap: () async {
          if (_qrContent.isEmpty) {
            DialogUtils.showAlertDialog(
                context, tcontext.meta.qrcodeScanResultEmpty);
            return;
          }
          _result.qrcode = _qrContent;
          Navigator.pop(context, _result);
        },
        child: Tooltip(
            message: tcontext.meta.save,
            child: const SizedBox(
              width: 50,
              height: 30,
              child: Icon(
                Icons.done,
                size: 26,
              ),
            )),
      ),
    ];
  }

  Widget buildForMobile(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;
    return SizedBox(
        width: windowSize.width,
        child: Column(
          children: [
            SizedBox(
              width: windowSize.width,
              height: windowSize.height * 0.7,
              child: _buildQrView(context),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(_qrContent, maxLines: 5),
          ],
        ));
  }

  Widget buildForMobileScanByImport(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    double w = windowSize.width < windowSize.height
        ? windowSize.width
        : windowSize.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.0,
              child: ElevatedButton(
                  child: Text(tcontext.meta.qrcodeScanFromImage),
                  onPressed: () async {
                    await onPressScanFromImageMobile();
                  }),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: w * 0.7,
          height: w * 0.7,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5), child: _image),
        ),
        const SizedBox(
          height: 30,
        ),
        Text(_qrContent, maxLines: 5),
      ],
    );
  }

  Widget buildForPC(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
    double w = windowSize.width < windowSize.height
        ? windowSize.width
        : windowSize.height;
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 45.0,
              child: ElevatedButton(
                  child: Text(tcontext.meta.screenshot),
                  onPressed: () async {
                    await onPressScreenshot();
                  }),
            ),
            const SizedBox(
              width: 20,
            ),
            SizedBox(
              height: 45.0,
              child: ElevatedButton(
                  child: Text(tcontext.meta.qrcodeScanFromImage),
                  onPressed: () async {
                    await onPressScanFromImagePC();
                  }),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          width: w * 0.7,
          height: w * 0.7,
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5), child: _image),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(_qrContent, maxLines: 5),
      ],
    );
  }

  Widget _buildQrView(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double wh = size.width < size.height ? size.width : size.height;
    // For this example we check how width or tall the device is and change the scanArea and overlay accordingly.
    var scanArea = (wh < 400) ? wh - 20 : 400.0 - 20;
    // To ensure the Scanner view is properly sizes after rotation
    // we need to listen for Flutter SizeChanged notification and update controller
    return QRView(
      key: qrKey,
      onQRViewCreated: _onQRViewCreated,
      overlay: QrScannerOverlayShape(
          borderColor: Colors.red,
          borderRadius: 10,
          borderLength: 30,
          borderWidth: 10,
          cutOutSize: scanArea),
      onPermissionSet: (ctrl, p) => _onPermissionSet(context, ctrl, p),
    );
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    setState(() {});
    controller.scannedDataStream.listen((scanData) {
      if (scanData.format != BarcodeFormat.qrcode) {
        return;
      }
      controller.pauseCamera();
      if (!mounted) {
        return;
      }
      result = scanData;
      _qrContent = result!.code ?? "";
      setState(() {});
    });
  }

  void _onPermissionSet(
      BuildContext context, QRViewController ctrl, bool p) async {
    if (!p) {
      if (!mounted) {
        return;
      }
      if (_showSnackBarShowed) {
        return;
      }
      _showSnackBarShowed = true;
      final tcontext = Translations.of(context);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            showCloseIcon: true,
            content: Text(tcontext.permission
                .requestNeed(p: tcontext.permission.camera))),
      );
    }
  }

  Future<bool> getFlashState() async {
    if (controller == null) {
      return false;
    }
    try {
      bool? ret = await controller!.getFlashStatus();
      return ret == true;
    } catch (err) {
      return false;
    }
  }

  Future<void> onPressScanFromImageMobile() async {
    if (Platform.isAndroid) {
      //ImagesPicker impl error on android
      return await onPressScanFromImagePC();
    }
    final tcontext = Translations.of(context);
    try {
      _image = null;
      _qrContent = "";
      setState(() {});

      final ImagePicker picker = ImagePicker();
      final XFile? result = await picker.pickImage(source: ImageSource.gallery);

      if ((result != null) && result.path.isNotEmpty) {
        String filePath = result.path;
        var file = File(filePath);
        if (await file.exists()) {
          _image = Image.file(file);
        }
        if (!mounted) {
          return;
        }
        setState(() {});

        String? qrcode = await QrcodeUtils.scanFromFile(filePath);
        if (!mounted) {
          return;
        }
        if (qrcode == null) {
          DialogUtils.showAlertDialog(
              context, tcontext.meta.qrcodeScanResultFailed);
        } else {
          _qrContent = qrcode;
          setState(() {});
        }
      }
    } catch (err, _) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onPressScanFromImagePC() async {
    final tcontext = Translations.of(context);
    _image = null;
    _qrContent = "";
    setState(() {});

    try {
      List<String> extensions = ['png', 'jpg'];
      FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: Platform.isAndroid ? FileType.any : FileType.custom,
        allowedExtensions: Platform.isAndroid ? null : extensions,
      );
      if (result != null) {
        String ext = path
            .extension(result.files.first.name)
            .replaceAll('.', '')
            .toLowerCase();
        if (!extensions.contains(ext)) {
          DialogUtils.showAlertDialog(
              context, tcontext.meta.fileTypeInvalid(p: ext));
          return;
        }
        String filePath = result.files.first.path!;
        var file = File(filePath);
        if (await file.exists()) {
          _image = Image.file(file);
        }
        setState(() {});
        String? qrcode = await QrcodeUtils.scanFromFile(filePath);
        if (mounted) {
          if (qrcode == null) {
            DialogUtils.showAlertDialog(
                context, tcontext.meta.qrcodeScanResultFailed);
          } else {
            _qrContent = qrcode;
            setState(() {});
          }
        }
      }
    } catch (err, _) {
      if (!mounted) {
        return;
      }
      DialogUtils.showAlertDialog(context, err.toString(),
          showCopy: true, showFAQ: true, withVersion: true);
    }
  }

  Future<void> onPressScreenshot() async {
    final tcontext = Translations.of(context);
    _image = null;
    _qrContent = "";
    setState(() {});

    if (Platform.isMacOS) {
      bool allowed = await ScreenCapturer.instance.isAccessAllowed();
      if (!allowed) {
        DialogUtils.showAlertDialog(context,
            tcontext.permission.requestNeed(p: tcontext.permission.screen));
        ScreenCapturer.instance.requestAccess(onlyOpenPrefPane: true);
        return;
      }
    }
    CapturedData? capturedData;
    try {
      capturedData = await ScreenCapturer.instance.capture(
        mode: CaptureMode.region,
        copyToClipboard: true,
      );
    } catch (err, _) {}

    if ((capturedData != null) && (capturedData.imageBytes != null)) {
      _image = Image.memory(capturedData.imageBytes!);
      setState(() {});
      try {
        String? qrcode =
            await QrcodeUtils.scanFromImageData(capturedData.imageBytes!);
        if (mounted) {
          if (qrcode == null) {
            DialogUtils.showAlertDialog(
                context, tcontext.meta.qrcodeScanResultFailed);
          } else {
            _qrContent = qrcode;
            setState(() {});
          }
        }
      } catch (err, _) {
        DialogUtils.showAlertDialog(context, err.toString(),
            showCopy: true, showFAQ: true, withVersion: true);
      }
    }
  }
}
