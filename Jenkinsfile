pipeline {
  agent any
  stages {
    stage('deploy') {
      agent any
      steps {
        powershell 'docker-compose --build down'
        powershell 'docker-compose up --build -d'
      }
    }

  }
}