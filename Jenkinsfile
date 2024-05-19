pipeline {
  agent any
  stages {
    stage('checkout code') {
      steps {
        git(url: 'https://github.com/trhieung/studies', branch: 'main')
      }
    }

    stage('test cmd') {
      steps {
        sh 'ls -la'
      }
    }

  }
}