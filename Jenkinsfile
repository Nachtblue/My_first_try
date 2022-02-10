pipeline {
  agent any
  stages {
    stage('Find IP') {
      parallel {
        stage('Find IP') {
          steps {
            bat 'ipconfig'
          }
        }

        stage('Create and validate file') {
          steps {
            writeFile(file: 'config.conf', text: 'This is a conf file to our app')
          }
        }

        stage('verify') {
          steps {
            fileExists 'config.conf'
          }
        }

      }
    }

    stage('Development') {
      steps {
        echo 'Dev print'
      }
    }

    stage('Test') {
      steps {
        echo 'Test print'
      }
    }

    stage('Production') {
      steps {
        echo 'User print'
      }
    }

  }
}