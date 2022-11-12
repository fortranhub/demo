pipeline {
  agent none
  
  stages {
    stage('Create kaniko secret') {
      agent {
        kubernetes {
          yamlFile 'kaniko-secret.yaml'
        }
      }
    }
  }
}
