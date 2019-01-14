pipeline {
  agent any
  stages {
    stage('install') {
      steps {
        sh 'npm i'
      }
    }
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
        sh 'pm2 startOrReload ecosystem.config.js'
      }
    }
  }
}