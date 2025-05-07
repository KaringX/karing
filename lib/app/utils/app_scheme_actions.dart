abstract final class AppSchemeActions {
  static String scheme() {
    return "karing";
  }

  static String installConfigAction() {
    return "install-config";
  }

  static String connectAction() {
    return "connect";
  }

  static String disconnectAction() {
    return "disconnect";
  }

  static String reconnectAction() {
    return "reconnect";
  }

  static String syncDownloadAction() {
    return "sync-download";
  }

  static String syncUploadAction() {
    return "sync-upload";
  }

  static String restoreBackup() {
    return "restore-backup";
  }

  static String appleTVHost() {
    return "tvos";
  }

  static String appleTVSyncUploadAction() {
    return "sync-upload";
  }

  static String appleTVDeleteCoreConfigAction() {
    return "delete-core-config";
  }

  static String appleTVGetFileContentAction() {
    return "get-file-content";
  }
}
