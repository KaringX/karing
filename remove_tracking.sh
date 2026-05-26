#!/bin/bash
# ============================================
# Karing: Remove all tracking & telemetry
# Run this in your Codespace terminal:
#   bash remove_tracking.sh
# ============================================

set -e
echo "=== Removing tracking from Karing ==="

# --- 1. Neuter Sentry init in main.dart ---
echo "[1/4] Disabling Sentry in lib/main.dart ..."
sed -i 's|if (!SettingManager.getConfig().disableAppImproveData) {|// TRACKING REMOVED\n    if (false) {|' lib/main.dart

# --- 2. Kill all tracking URLs in remote_config.dart ---
echo "[2/4] Replacing tracking URLs in lib/app/modules/remote_config.dart ..."

# Sentry
sed -i 's|static const String kDefaultSentry = "o4508911573663744.ingest.sentry.io";|static const String kDefaultSentry = "";|' lib/app/modules/remote_config.dart

# Outpost (telemetry endpoint)
sed -i 's|static const String kDefaultOutpost = "https://outpost.\$kDefaultHost/put";|static const String kDefaultOutpost = "";|' lib/app/modules/remote_config.dart

# Notice (remote notifications from dev)
sed -i 's|static const String kDefaultNotice = "https://dot.\$kDefaultHost/notice2.json";|static const String kDefaultNotice = "";|' lib/app/modules/remote_config.dart

# Remote config fetch
sed -i 's|static const String kDefaultConfig = "https://dot.\$kDefaultHost/config.json";|static const String kDefaultConfig = "";|' lib/app/modules/remote_config.dart

# Auto-update from original server
sed -i 's|static const String kDefaultAutoUpdate =|// TRACKING REMOVED\n  static const String kDefaultAutoUpdate =|' lib/app/modules/remote_config.dart
sed -i 's|"https://dot.\$kDefaultHost/autoupdate.json";|"";|' lib/app/modules/remote_config.dart

# Harry (ISP binding / tracking)
sed -i 's|static const String kDefaultHarry = "https://harry.\$kDefaultHost/spell/";|static const String kDefaultHarry = "";|' lib/app/modules/remote_config.dart

# ISP panel JS
sed -i 's|static const String kIspPanelJs =|// TRACKING REMOVED\n  static const String kIspPanelJs =|' lib/app/modules/remote_config.dart
sed -i 's|"https://harry.karing.app/assets/bind.js?v=";|"";|' lib/app/modules/remote_config.dart

# Privacy policy (points to dot.karing.app)
sed -i 's|static const String kDefaultPrivacyPolicy =|// TRACKING REMOVED\n  static const String kDefaultPrivacyPolicy =|' lib/app/modules/remote_config.dart
sed -i 's|"https://dot.\$kDefaultHost/privacy_policy.txt";|"";|' lib/app/modules/remote_config.dart

# Advertising/traffic link
sed -i 's|static const String kDefaultGetTranffic = "https://2.x31415926.top/";|static const String kDefaultGetTranffic = "";|' lib/app/modules/remote_config.dart

# Statistics page
sed -i 's|static const String kDefaultStatistic =|// TRACKING REMOVED\n  static const String kDefaultStatistic =|' lib/app/modules/remote_config.dart
sed -i 's|"https://\$kDefaultHost/app-manual/statistics/";|"";|' lib/app/modules/remote_config.dart

# ISP prepare function
sed -i 's|return "https://potter.\$kDefaultHost/isp/\$id/base.json";|return ""; // TRACKING REMOVED|' lib/app/modules/remote_config.dart

# --- 3. Kill periodic remote config check ---
echo "[3/4] Disabling remote config checker in lib/app/modules/remote_config_manager.dart ..."

# Make _check() return immediately
sed -i '/static Future _check() async {/a\    return; // TRACKING REMOVED - no remote config fetch' lib/app/modules/remote_config_manager.dart

# Always reject sentry/analytics submissions
sed -i 's|static bool rejectSentrySubmit() {|static bool rejectSentrySubmit() { return true; // TRACKING REMOVED|' lib/app/modules/remote_config_manager.dart
sed -i 's|static bool rejectAnalyticsSubmit() {|static bool rejectAnalyticsSubmit() { return true; // TRACKING REMOVED|' lib/app/modules/remote_config_manager.dart

# --- 4. Disable install referrer tracking in remote_config.dart ---
echo "[4/4] Disabling install referrer ..."
sed -i "s|import 'package:karing/app/utils/install_referrer_utils.dart';|// TRACKING REMOVED\n// import 'package:karing/app/utils/install_referrer_utils.dart';|" lib/app/modules/remote_config.dart

echo ""
echo "=== DONE ==="
echo ""
echo "Removed:"
echo "  - Sentry crash reporting (sentry.io)"
echo "  - dot.karing.app (config, notice, autoupdate, privacy policy)"
echo "  - outpost.karing.app (telemetry PUT endpoint)"
echo "  - harry.karing.app (ISP binding, panel JS)"
echo "  - potter.karing.app (ISP data)"
echo "  - 2.x31415926.top (ad/traffic tracking)"
echo "  - karing.app/app-manual/statistics"
echo "  - Remote config periodic fetching"
echo "  - Install referrer tracking"
echo ""
echo "Next steps:"
echo "  1. git add -A"
echo "  2. git commit -m 'remove all tracking domains and telemetry'"
echo "  3. git push"
echo ""
