pipeline {
  agent any
  stages {
    // stage('start') {
    //   steps {
    //     sh """\
    //       /Users/shaunxu/github/wt-rd-pipeline/packages/agent_rust/target/debug/agent_rust \
    //       --pipeline=5c4034b045871184af1ed67a \
    //       --job-name=${env.JOB_NAME} \
    //       --build-id=${env.BUILD_ID} \
    //       --build-tag=${env.BUILD_TAG} \
    //       --build-url=${env.BUILD_URL} \
    //       --action=BEGIN
    //     """
    //   }
    // }
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
    always {
        sh """\
          /Users/shaunxu/github/wt-rd-pipeline/packages/agent_rust/target/debug/agent_rust \
          --pipeline=5c4034b045871184af1ed67a \
          --job-name=${env.JOB_NAME} \
          --build-id=${env.BUILD_ID} \
          --build-tag=${env.BUILD_TAG} \
          --build-url=${env.BUILD_URL} \
          --action=BEGIN
        """
    }
  }
}