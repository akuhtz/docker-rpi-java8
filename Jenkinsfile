    stage 'Build'
    git url: 'https://github.com/marhan/docker-rpi-java8.git', branch: 'master'

    sh 'chmod +x gradlew'
    sh './gradlew clean buildDockerImage'