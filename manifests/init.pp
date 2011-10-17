class open-java {
  package { "openjdk-6-jre":
    ensure => installed,
  }

  package { "openjdk-6-jdk":
    ensure => installed,
  }
  
  exec { "java-home":
    command => "sed -i '1i JAVA_HOME=/usr/lib/jvm/java-6-openjdk/' /etc/bash.bashrc",
    unless => "grep 'JAVA_HOME=' /etc/bash.bashrc",
    path => ["/bin", "/usr/bin"],
    require => Package["openjdk-6-jdk"],
  }
}