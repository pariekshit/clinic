#!/bin/groovy

def envs = "a\nb\nc";

properties([
   parameters([
      choice(choices: envs, description: 'Please select an environment', name: 'Env')
   ])
])
node { 
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
}
