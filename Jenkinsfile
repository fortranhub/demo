podTemplate(container: [
  containerTemplate(name: 'kaniko', image: 'gcr.io/kaniko-project/executor:debug', command: 'sleep', args: '99999999')
])

{
  node(POD_LABEL) {
    stage('Build image') {
      git: 'https://github.com/fortranhub/demo.git' 
      container('kaniko') {
        stage('Build and Push image to dockerhub') {
          sh '''
            /kaniko/executor --context `pwd` --destination hakobmkoyan771/kaniko-test-image:0.1.0
          '''
        }
      }
    }
  }
}
