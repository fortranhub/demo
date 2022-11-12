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
        container('kaniko') {
          sh '''
            /kaniko/executor --context `pwd` --destination hakobmkoyan771/todoapp
          '''
        }
      }
    }
  }
}
