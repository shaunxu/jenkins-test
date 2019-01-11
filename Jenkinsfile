pipeline {
  agent {
    node {
      label 'nodejs'
    }

  }
  stages {
    stage('build') {
      steps {
        sh 'npm run build'
      }
    }
    stage('test') {
      steps {
        sh 'npm test'
      }
    }
    stage('deploy') {
      steps {
        sh 'pm2 restart all'
      }
    }
  }
}