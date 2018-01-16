import groovy.json.JsonSlurper;

def jsonSluper = new JsonSlurper() ;
def obj = readFileFromWorkspace('test.json');

println (obj);

def parsedData = jsonSlurper.parse(obj);

println(parsedData);

def env = "local\ndev10\ndev20"


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
