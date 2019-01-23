pipeline {
  agent any
  environment{
    JENKINS_USER = 'admin'
    JENKINS_PASS = '11111111'
  }
  stages {
    stage('start') {
      steps {
        echo "env.BRANCH_NAME = ${env.BRANCH_NAME}"
        echo "env.CHANGE_ID = ${env.CHANGE_ID}"
        echo "env.CHANGE_URL = ${env.CHANGE_URL}"
        echo "env.CHANGE_TITLE = ${env.CHANGE_TITLE}"
        echo "env.CHANGE_AUTHOR = ${env.CHANGE_AUTHOR}"
        echo "env.CHANGE_AUTHOR_DISPLAY_NAME = ${env.CHANGE_AUTHOR_DISPLAY_NAME}"
        echo "env.CHANGE_AUTHOR_EMAIL = ${env.CHANGE_AUTHOR_EMAIL}"
        echo "env.CHANGE_TARGET = ${env.CHANGE_TARGET}"
        echo "env.BUILD_NUMBER = ${env.BUILD_NUMBER}"
        echo "env.BUILD_ID = ${env.BUILD_ID}"
        echo "env.BUILD_DISPLAY_NAME = ${env.BUILD_DISPLAY_NAME}"
        echo "env.JOB_NAME = ${env.JOB_NAME}"
        echo "env.JOB_BASE_NAME = ${env.JOB_BASE_NAME}"
        echo "env.BUILD_TAG = ${env.BUILD_TAG}"
        echo "env.EXECUTOR_NUMBER = ${env.EXECUTOR_NUMBER}"
        echo "env.NODE_NAME = ${env.NODE_NAME}"
        echo "env.NODE_LABELS = ${env.NODE_LABELS}"
        echo "env.WORKSPACE = ${env.WORKSPACE}"
        echo "env.JENKINS_HOME = ${env.JENKINS_HOME}"
        echo "env.JENKINS_URL = ${env.JENKINS_URL}"
        echo "env.BUILD_URL = ${env.BUILD_URL}"
        echo "env.JOB_URL = ${env.JOB_URL}"
        echo "currentBuild.number = ${currentBuild.number}"
        echo "currentBuild.result = ${currentBuild.result}"
        echo "currentBuild.currentResult = ${currentBuild.currentResult}"
        echo "currentBuild.displayName = ${currentBuild.displayName}"
        echo "currentBuild.fullDisplayName = ${currentBuild.fullDisplayName}"
        echo "currentBuild.projectName = ${currentBuild.projectName}"
        echo "currentBuild.fullProjectName = ${currentBuild.fullProjectName}"
        echo "currentBuild.description = ${currentBuild.description}"
        echo "currentBuild.timeInMillis = ${currentBuild.timeInMillis}"
        echo "currentBuild.startTimeInMillis = ${currentBuild.startTimeInMillis}"
        echo "currentBuild.duration = ${currentBuild.duration}"
        echo "currentBuild.durationString = ${currentBuild.durationString}"
        echo "currentBuild.absoluteUrl = ${currentBuild.absoluteUrl}"
        echo "currentBuild.buildVariables = ${currentBuild.buildVariables}"
        echo "currentBuild.changeSets = ${currentBuild.changeSets}"
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