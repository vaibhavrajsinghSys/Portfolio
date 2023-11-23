pipeline {
  agent any
  tools {
    maven 'maven_3_8_4'
  }
 
  stages {
    stage ('Run SAST Scan') {
      steps {
        sh 'mvn clean verify sonar:sonar -Dsonar.projectkey=Test -Dsonar.organization=demo-sast1 -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=f14ddb9009339e2c9cea2c1c86c2da1261c589fa'
}
}
  }
}
