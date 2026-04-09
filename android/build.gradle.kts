import com.android.build.gradle.internal.crash.afterEvaluate

allprojects {
    repositories {
        google()
        mavenCentral()
    }
    subprojects {
        afterEvaluate {
            if (plugins.hasPlugin("com.android.application") ||
                            plugins.hasPlugin("com.android.library")
            ) {
                extensions.findByType(com.android.build.gradle.BaseExtension::class.java)?.let {
                        androidExt ->
                    androidExt.compileSdkVersion = "android-35"
                    androidExt.ndkVersion = "28.2.13676358"

                    if (androidExt.namespace == null) {
                        androidExt.namespace = project.group.toString()
                    }

                    if (androidExt.buildFeatures.buildConfig == null) {
                        androidExt.buildFeatures.buildConfig = true
                    }

                    project
                            .fileTree(project.projectDir) { include("**/AndroidManifest.xml") }
                            .forEach { manifestFile ->
                                var manifestContent = manifestFile.readText()
                                if (manifestContent.contains("package=")) {
                                    println("Removing package attribute from ${manifestFile}")
                                    manifestContent =
                                            manifestContent.replace(Regex("package=\"[^\"]*\""), "")
                                    manifestFile.writeText(manifestContent)
                                }
                            }
                }
            }
        }
    }
}

allprojects {
    tasks.withType<JavaCompile> {
        options.compilerArgs.plusAssign("-Xlint:unchecked")
        options.compilerArgs.plusAssign("-Xlint:deprecation")
    }
}

val newBuildDir: Directory = rootProject.layout.buildDirectory.dir("../../build").get()

rootProject.layout.buildDirectory.value(newBuildDir)

subprojects {
    val newSubprojectBuildDir: Directory = newBuildDir.dir(project.name)
    project.layout.buildDirectory.value(newSubprojectBuildDir)
}

subprojects { project.evaluationDependsOn(":app") }

tasks.register<Delete>("clean") { delete(rootProject.layout.buildDirectory) }
