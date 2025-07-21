// ignore_for_file: use_build_context_synchronously, empty_catches

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:karing/i18n/strings.g.dart';
import 'package:karing/screens/dialog_utils.dart';
import 'package:karing/screens/theme_config.dart';
import 'package:karing/screens/theme_define.dart';
import 'package:karing/screens/widgets/framework.dart';
import 'package:qr_code_scanner_plus/qr_code_scanner_plus.dart';

class QrcodeScanScreen extends LasyRenderingStatefulWidget {
  static RouteSettings routSettings() {
    return const RouteSettings(name: "QrcodeScanScreen");
  }

  const QrcodeScanScreen({super.key});

  @override
  State<QrcodeScanScreen> createState() => _QrcodeScanScreenState();
}

class _QrcodeScanScreenState extends LasyRenderingState<QrcodeScanScreen> {
  QRViewController? controller;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QRScan');
  bool _showSnackBarShowed = false;
  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller?.pauseCamera();
    } else if (Platform.isIOS) {
      controller?.resumeCamera();
    }
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tcontext = Translations.of(context);
    Size windowSize = MediaQuery.of(context).size;
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
                    children: [
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
                      SizedBox(
                        width: 50,
                        height: 30,
                        child: IconButton(
                          icon: FutureBuilder(
                              future: getFlashState(),
                              builder: (BuildContext context,
                                  AsyncSnapshot<bool> snapshot) {
                                return snapshot.hasData && snapshot.data!
                                    ? const Icon(Icons.flash_on_outlined,
                                        color: ThemeDefine.kColorBlue)
                                    : const Icon(Icons.flash_off_outlined);
                              }),
                          iconSize: 26,
                          onPressed: () async {
                            try {
                              await controller?.toggleFlash();
                            } catch (err) {
                              DialogUtils.showAlertDialog(
                                  context, err.toString(),
                                  showCopy: true,
                                  showFAQ: true,
                                  withVersion: true);
                            }

                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                      width: windowSize.width,
                      child: Column(
                        children: [
                          Container(
                            color: Colors.white,
                            width: windowSize.width,
                            height: windowSize.height * 0.8,
                            child: Padding(
                                padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                child: _buildQrView(context)),
                          ),
                        ],
                      ))
                ],
              ),
            ),
          ),
        ));
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
      if (this.controller == null) {
        return;
      }
      this.controller = null;
      try {
        Navigator.pop(context, scanData.code!);
      } catch (err, stacktrace) {}
    });
  }

  void _onPermissionSet(BuildContext context, QRViewController ctrl, bool p) {
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
}
