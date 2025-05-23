plugins {
    id("java")
}

group = "it.unipv.ingsw.fs"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation(platform("org.junit:junit-bom:5.10.0"))
    testImplementation("org.junit.jupiter:junit-jupiter")
    implementation("com.mysql:mysql-connector-j:9.3.0")
}

tasks.test {
    useJUnitPlatform()
}