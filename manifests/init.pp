class open-java {
  package { "openjdk-6-jre":
    ensure => installed,
  }

  package { "openjdk-6-jdk":
    ensure => installed,
  }
  
  exec { "java-home":
    command => "bash -c 'echo export JAVA_HOME=/usr/lib/jvm/java-6-openjdk/ >> /etc/profile'",
    unless => "grep 'JAVA_HOME=' /etc/profile",
    path => ["/bin", "/usr/bin"],
    require => Package["openjdk-6-jdk"],
  }
}