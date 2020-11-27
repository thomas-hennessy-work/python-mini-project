pipeline{
    agent any
    stages{
        stage('unit test'){
            steps{
                sh "bash scripts/frontEndUnitTests.sh" 
            }
        }
        stage('build'){
            steps{
                sh "bash scripts/buildStage.sh"
            }
        }
        stage('push build'){
            steps{
                sh "bash scripts/pushBuilds.sh"
            }
        }
        stage('run'){
            steps{
                sh "bash scripts/launchSwarm.sh"
            }
        }
    }
}