node('master') {
    stage('Checkout') {
        checkout scm
    }
    stage('building image') {
      image = docker.build "dyindude/hashibuild:$BUILD_NUMBER"
    }
    stage('publishing image') {
      docker.withRegistry( '', 'dockerhub' ) {
        image.push()
        image.push('latest')
      }
    }
}
