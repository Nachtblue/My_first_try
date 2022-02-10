pipeline {
  agent any
  stages {
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            echo 'Mr tester'
          }
        }

        stage('checks') {
          steps {
            echo 'Checking stuff'
          }
        }

      }
    }

    stage('Prod') {
      steps {
        echo 'This is user'
      }
    }

  }
}