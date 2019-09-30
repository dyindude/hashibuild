node('master') {
    stage('Checkout') {
        checkout scm
    }
    stage('building image') {
      image = docker.build "dyindude/hashibuild:light"
    }
    stage('publishing image') {
      docker.withRegistry( '', 'dockerhub' ) {
        image.push()
      }
    }
}
