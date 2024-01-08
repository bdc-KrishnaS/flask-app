pipeline {
  agent any
  stages {
    stage('deploy') {
      agent any
      steps {
        bat 'docker-compose down'
        bat 'docker-compose up --build -d'
      }
    }

  }
}