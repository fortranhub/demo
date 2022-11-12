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
            /kaniko/executor --context `pwd` --destination hakobmkoyan771/kaniko-test:0.1.0
          '''
        }
      }
    }
  }
}
