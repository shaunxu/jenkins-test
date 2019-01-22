pipeline {
  agent any
  stages {
    stage('start') {
      steps {
        sh '/Users/shaunxu/github/wt-rd-pipeline/packages/agent/node_modules/.bin/ts-node /Users/shaunxu/github/wt-rd-pipeline/packages/agent/src/index.ts --pipeline=5c4034b045871184af1ed67a --event=start'
      }
    }
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
  }
  post {
    success {
      sh '/Users/shaunxu/github/wt-rd-pipeline/packages/agent/node_modules/.bin/ts-node /Users/shaunxu/github/wt-rd-pipeline/packages/agent/src/index.ts --pipeline=5c4034b045871184af1ed67a --event=end --is-success=1'
    }
    unsuccessful {
      sh '/Users/shaunxu/github/wt-rd-pipeline/packages/agent/node_modules/.bin/ts-node /Users/shaunxu/github/wt-rd-pipeline/packages/agent/src/index.ts --pipeline=5c4034b045871184af1ed67a --event=end --is-success=0'
    }
  }
}