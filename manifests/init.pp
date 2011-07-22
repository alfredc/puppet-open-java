class open-java {
  package { "openjdk-6-jre":
    ensure => installed,
  }

  package { "openjdk-6-jdk":
    ensure => installed,
  }
}