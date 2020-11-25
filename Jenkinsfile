pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash frontEndUnitTests.sh" 
            }
        }
        stage('build and run'){
            steps{
                sh "bash launchSwarm.sh"
            }
        }
    }
}