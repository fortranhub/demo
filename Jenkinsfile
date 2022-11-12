pipeline {
  agent none
  
  stages {
    stage('nginx') {
      agent {
        kubernetes {
          yamlFile 'nginx.yaml'
        }
      }
      steps {
        sh "echo hello world" 
      }
    }
  }
}
