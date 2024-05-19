pipeline {
  agent any
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/trhieung/studies', branch: 'main')
      }
    }

    stage('cmd test') {
      steps {
        sh 'ls -la'
      }
    }

  }
}