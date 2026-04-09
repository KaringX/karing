import java.util.Base64
import java.util.Properties

plugins {
    id("com.android.application")
    id("kotlin-android")
    // The Flutter Gradle Plugin must be applied after the Android and Kotlin Gradle plugins.
    id("dev.flutter.flutter-gradle-plugin")
    id("io.sentry.android.gradle") version "4.11.0"
}

var dartEnvironmentVariables = mutableMapOf("publish" to false)

if (project.hasProperty("dart-defines")) {
    dartEnvironmentVariables.putAll(
            (project.property("dart-defines") as String).split(',').associate { entry ->
                val pair = String(Base64.getDecoder().decode(entry)).split('=')
                pair.first() to (pair.last() == "true")
            }
    )
}

var sentryPublish = false

android {
    namespace = "com.nebula.karing"
    compileSdkVersion = "android-35"
    buildToolsVersion = "36.0.0"
    ndkVersion = "28.2.13676358" // flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions { jvmTarget = JavaVersion.VERSION_17.toString() }

    defaultConfig {
        applicationId = "com.nebula.karing"
        minSdk = 26 // apk size(android:extractNativeLibs):
        // https://github.com/flutter/website/blob/ada9edc19074cce17e92b129eec0759bad7c3c7c/src/content/platform-integration/android/c-interop.md?plain=1#L180
        targetSdk = 35
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {
        val keystore = rootProject.file("./key.properties")
        val prop = Properties().apply { keystore.inputStream().use(this::load) }
        named("debug") { ndk { abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64", "x86") } }
        named("profile") {
            signingConfig =
                    signingConfigs.create("profile") {
                        storeFile = rootProject.file(prop.getProperty("storeFile.release"))
                        storePassword = prop.getProperty("storePassword.release")
                        keyAlias = prop.getProperty("keyAlias.release")
                        keyPassword = prop.getProperty("keyPassword.release")
                    }
            ndk { abiFilters += listOf("armeabi-v7a", "arm64-v8a", "x86_64", "x86") }
        }
        named("release") {
            sentryPublish =
                    dartEnvironmentVariables["publish"] as
                            Boolean // flutter build apk --dart-define=publish=true
            // packagingOptions {
            //   doNotStrip = '**/*.so'
            // }
            // shrinkResources = true
            // proguardFiles = getDefaultProguardFile('proguard-android-optimize.txt'),
            // 'proguard-rules.pro'
            signingConfig =
                    signingConfigs.create("release") {
                        storeFile = rootProject.file(prop.getProperty("storeFile.release"))
                        storePassword = prop.getProperty("storePassword.release")
                        keyAlias = prop.getProperty("keyAlias.release")
                        keyPassword = prop.getProperty("keyPassword.release")
                    }
            ndk {
                abiFilters.clear()
                abiFilters += listOf("armeabi-v7a", "arm64-v8a")
                // debugSymbolLevel = 'FULL'
            }
        }
    }
    splits {
        abi {
            isEnable = true
            isUniversalApk = true
            reset()
            include("armeabi-v7a", "arm64-v8a")
        }
    }
}

flutter { source = "../.." }

dependencies {
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.1.4")
    implementation("androidx.browser:browser:1.8.0")
}

configurations.configureEach {
    resolutionStrategy.force(
            "androidx.browser:browser:1.8.0",
            "androidx.core:core:1.15.0",
            "androidx.core:core-ktx:1.15.0",
            "androidx.activity:activity:1.9.3",
            "androidx.activity:activity-ktx:1.9.3",
    )
}

val sentryKeystore = rootProject.file("../private/karing/android/sign/sentry.properties")
val sentryProp = Properties().apply { sentryKeystore.inputStream().use(this::load) }
///
// import io.sentry.android.gradle.extensions.InstrumentationFeature

sentry {
    // Disables or enables debug log output, e.g. for for sentry-cli.
    // Default is disabled.
    debug.set(false)

    // The slug of the Sentry organization to use for uploading proguard mappings/source contexts.
    org.set("gooringx")

    // The slug of the Sentry project to use for uploading proguard mappings/source contexts.
    projectName.set("flutter-android")

    // The authentication token to use for uploading proguard mappings/source contexts.
    // WARNING: Do not expose this token in your build.gradle files, but rather set an environment
    // variable and read it into this property.
    authToken.set(sentryProp.getProperty("token"))

    // The url of your Sentry instance. If you're using SAAS (not self hosting) you do not have to
    // set this. If you are self hosting you can set your URL here

    // Disables or enables the handling of Proguard mapping for Sentry.
    // If enabled the plugin will generate a UUID and will take care of
    // uploading the mapping to Sentry. If disabled, all the logic
    // related to proguard mapping will be excluded.
    // Default is enabled.
    includeProguardMapping.set(sentryPublish)

    // Whether the plugin should attempt to auto-upload the mapping file to Sentry or not.
    // If disabled the plugin will run a dry-run and just generate a UUID.
    // The mapping file has to be uploaded manually via sentry-cli in this case.
    // Default is enabled.
    autoUploadProguardMapping.set(sentryPublish)

    // Experimental flag to turn on support for GuardSquare's tools integration (Dexguard and
    // External Proguard).
    // If enabled, the plugin will try to consume and upload the mapping file produced by Dexguard
    // and External Proguard.
    // Default is disabled.
    dexguardEnabled.set(sentryPublish)

    // Disables or enables the automatic configuration of Native Symbols
    // for Sentry. This executes sentry-cli automatically so
    // you don't need to do it manually.
    // Default is disabled.
    uploadNativeSymbols.set(sentryPublish)

    // Whether the plugin should attempt to auto-upload the native debug symbols to Sentry or not.
    // If disabled the plugin will run a dry-run.
    // Default is enabled.
    autoUploadNativeSymbols.set(sentryPublish)

    // Does or doesn't include the source code of native code for Sentry.
    // This executes sentry-cli with the --include-sources param. automatically so
    // you don't need to do it manually.
    // Default is disabled.
    includeNativeSources.set(false)

    // Generates a JVM (Java, Kotlin, etc.) source bundle and uploads your source code to Sentry.
    // This enables source context, allowing you to see your source
    // code as part of your stack traces in Sentry.
    includeSourceContext.set(sentryPublish)

    // Configure additional directories to be included in the source bundle which is used for
    // source context. The directories should be specified relative to the Gradle module/project's
    // root. For example, if you have a custom source set alongside 'main', the parameter would be
    // 'src/custom/java'.
    // additionalSourceDirsForSourceContext.set(emptySet())

    // Enable or disable the tracing instrumentation.
    // Does auto instrumentation for specified features through bytecode manipulation.
    // Default is enabled.
    tracingInstrumentation {
        enabled.set(false)

        // Specifies a set of instrumentation features that are eligible for bytecode manipulation.
        // Defaults to all available values of InstrumentationFeature enum class.
        // features.set(setOf(InstrumentationFeature.DATABASE, InstrumentationFeature.FILE_IO,
        // InstrumentationFeature.OKHTTP, InstrumentationFeature.COMPOSE))

        // Enable or disable logcat instrumentation through bytecode manipulation.
        // Default is enabled.
        logcat {
            enabled.set(false)

            // Specifies a minimum log level for the logcat breadcrumb logging.
            // Defaults to LogcatLevel.WARNING.
            // minLevel.set(LogcatLevel.WARNING)
        }

        // The set of glob patterns to exclude from instrumentation. Classes matching any of these
        // patterns in the project's sources and dependencies JARs won't be instrumented by the
        // Sentry
        // Gradle plugin.
        //
        // Don't include the file extension. Filtering is done on compiled classes and
        // the .class suffix isn't included in the pattern matching.
        //
        // Example usage:
        // ```
        // excludes.set(setOf("com/example/donotinstrument/**", "**/*Test"))
        // ```
        //
        // Only supported when using Android Gradle plugin (AGP) version 7.4.0 and above.
        // excludes.set(emptySet())
    }

    // Enable auto-installation of Sentry components (sentry-android SDK and okhttp, timber,
    // fragment and compose integrations).
    // Default is enabled.
    // Only available v3.1.0 and above.
    autoInstallation {
        enabled.set(sentryPublish)

        // Specifies a version of the sentry-android SDK and fragment, timber and okhttp
        // integrations.
        //
        // This is also useful, when you have the sentry-android SDK already included into a
        // transitive dependency/module and want to
        // align integration versions with it (if it's a direct dependency, the version will be
        // inferred).
        //
        // NOTE: if you have a higher version of the sentry-android SDK or integrations on the
        // classpath, this setting will have no effect
        // as Gradle will resolve it to the latest version.
        //
        // Defaults to the latest published Sentry version.
        sentryVersion.set("7.18.0")
    }

    // Disables or enables dependencies metadata reporting for Sentry.
    // If enabled, the plugin will collect external dependencies and
    // upload them to Sentry as part of events. If disabled, all the logic
    // related to the dependencies metadata report will be excluded.
    //
    // Default is enabled.
    //
    includeDependenciesReport.set(sentryPublish)

    // Whether the plugin should send telemetry data to Sentry.
    // If disabled the plugin won't send telemetry data.
    // This is auto disabled if running against a self hosted instance of Sentry.
    // Default is enabled.
    telemetry.set(sentryPublish)
}
