
def env = "local\ndev10\ndev20"
pipeline {
  agent any
  parameters {
        string(name: env, defaultValue: 'Hello', description: 'How should I greet the world?')
    }
  stages {
    stage('SCM') {
      steps {
        sh 'echo "Github checkout"'
      }
    }
    stage('Build') {
      steps {
        sh 'echo "Build Sucessful"'
      }
    }
    stage('Deploy') {
      steps {
        sh 'echo "Deployed Sucessfully"'
      }
    }
  }
}
