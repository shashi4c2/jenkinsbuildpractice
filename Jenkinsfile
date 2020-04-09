node('ubuntu') {
    stage('GIT') {
        git 'https://github.com/shashi4c2/jenkinsbuildpractice.git'
    }
    stage('package') {
        sh 'mvn package'
    }
    stage('archiveartifacts') {
        archive 'gameoflife-web/target/*.war'
    }
    stage('archivetestresults') {
        junit 'gameoflife-web/target/surefire-reports/*.xml'
    }
    stage('deployment') {
        sh 'docker image build -t gameoflife .'
        sh 'docker container run -d -p 8081:8080 gameoflife:1.0'
    }
}
