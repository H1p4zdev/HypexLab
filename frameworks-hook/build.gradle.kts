plugins {
    id("java-library")
    id("kotlin")
}

java {
    sourceCompatibility = JavaVersion.VERSION_17
    targetCompatibility = JavaVersion.VERSION_17
}

dependencies {
    compileOnly(files("../libs/framework.jar"))
    compileOnly("androidx.annotation:annotation:1.7.0")
}

tasks.register<Jar>("dexJar") {
    dependsOn("compileJava")
    from(layout.buildDirectory.dir("classes/java/main"))
    archiveBaseName.set("hypex-hook")
    archiveClassifier.set("")

    doLast {
        val jarFile = archiveFile.get().asFile
        val dexFile = File(jarFile.parentFile.parentFile.parentFile, "hypex-hook.dex")
        exec {
            commandLine(
                "d8",
                "--lib", file("../libs/framework.jar").absolutePath,
                "--min-api", "31",
                "--output", dexFile.absolutePath,
                jarFile.absolutePath
            )
        }
    }
}
