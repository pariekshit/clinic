#!/bin/groovy

def envs = "a\nb\nc";

properties([
   parameters([
      choice(choices: envs, description: 'Please select an environment', name: 'Env')
   ])
])
node { 
    stage('SCM') {
      step {
        sh 'pwd'
      }
    }
    stage('Build') {
      step {
        sh 'echo "Build Sucessful"'
      }
    }
}
