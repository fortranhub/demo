pipeline {
  agent none 
  
  stages {
    stage('Build image') {
      agent {
        kubernetes {
          yamlFile 'kaniko.yaml' 
        }
      }
      steps {
        sh ''
      }
    }
  }
}
