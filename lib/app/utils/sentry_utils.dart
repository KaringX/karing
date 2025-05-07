import 'package:flutter/widgets.dart';
import 'package:karing/app/utils/analytics_utils.dart';
import 'package:karing/app/utils/did.dart';
import 'package:karing/app/utils/log.dart';
import 'package:karing/app/utils/stacktrace_utils.dart';
import 'package:karing/app/utils/zip_utils.dart';
import 'package:path/path.dart' as path;
import 'package:sentry_flutter/sentry_flutter.dart';

class SentryUtils {
  static const _inProduction = bool.fromEnvironment("dart.vm.product");
  static NavigatorObserver getOvserver() {
    return SentryNavigatorObserver();
  }

  static Future<void> addBreadcrumb(Breadcrumb crumb, {Hint? hint}) async {
    /* SentryUtils.addBreadcrumb(
          Breadcrumb(category: "server_manager_add", message: ur.host));
    */
    await Sentry.addBreadcrumb(crumb, hint: hint);
  }

  static Future<void> captureMessage(
      String message, List<String> params, SentryLevel level) async {
    if (!_inProduction) {
      return;
    }
    String template = "";
    for (var _ in params) {
      template += "%s ";
    }
    await Sentry.captureMessage(message,
        level: level, template: template, params: params);
  }

  static Future<void> captureException(String message, List<String> params,
      dynamic exception, StackTrace stackTrace,
      {List<String> attachments = const []}) async {
    if (!_inProduction) {
      return;
    }

    AnalyticsUtils.logEvent(
        analyticsEventType: analyticsEventTypeException,
        name: "exception",
        parameters: {
          "message": message,
          "exception": exception.toString(),
          "stack_trace": StackTraceUtils.trim(stackTrace, 3),
          "params": params,
        });

    await Sentry.captureException(
      exception,
      stackTrace: stackTrace,
      withScope: (p0) async {
        try {
          var result = await ZipUtils.zipToBytes(attachments);
          if (result.error == null) {
            p0.addAttachment(SentryAttachment.fromUint8List(
              result.data!,
              path.basename("attachments.zip"),
              contentType: "application/zip",
            ));
          }
        } catch (err) {
          Log.w("SentryUtils.captureException exception: ${err.toString()}");
        }
      },
    );
  }

  static Future<void> feedback(String text) async {
    final realHub = HubAdapter();
    await realHub.captureFeedback(SentryFeedback(
      message: text,
      name: await Did.getDid(),
    ));
  }
}
