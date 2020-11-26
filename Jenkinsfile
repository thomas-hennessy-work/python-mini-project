pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash scripts/frontEndUnitTests.sh" 
            }
        }
        stage('build and run'){
            steps{
                sh "bash scripts/launchSwarm.sh"
            }
        }
    }
}