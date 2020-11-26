pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash scripts/frontEndUnitTests.sh" 
            }
        }
        stage('build'){
            steps{
                sh '''docker build -f frontEnd/Dockerfile -t appfrontend:miniproject frontEnd/
                docker build -f backEnd/Dockerfile -t appbackend:miniproject backEnd/'''
            }
        }
    }
}