println new ProcessBuilder('sh','-c',' du -ah --max-depth=5 /var/jenkins_home/workspace | sort -k 1 -h -r | head -n 30').redirectErrorStream(true).start().text

pipeline {
  agent any
  parameters {
        choice(choices: env, name: 'env', description: 'How should I greet the world?')
    }
  stages {
    stage('SCM') {
      steps {
        sh 'pwd'
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
