node('docker') {
    stage 'checkout source' {
        git url: 'https://github.com/marhan/docker-rpi-java8.git', branch: 'master'
    }

    stage 'build image' {
        sh 'make -B private-build'
    }

    stage 'push image' {
        sh 'make private-push'
    }
}    