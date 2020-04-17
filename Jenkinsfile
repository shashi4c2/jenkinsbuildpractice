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
    stage('Sonarqube analysis') {
        withSonarQubeEnv('SONAR-6.7.7') {
            sh 'mvn org.sonarsource.scanner.maven:sonar-maven-plugin:3.2:sonar'
        }
    }
}
