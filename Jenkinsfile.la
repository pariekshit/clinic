def sout = new StringBuffer(), serr = new StringBuffer()
 
def proc ='cat test.json'.execute()
 
proc.consumeProcessOutput(sout, serr)
proc.waitForOrKill(1000)
println sout

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
