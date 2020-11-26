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
                sh '''bash scripts/buildStage.sh
                bash bash scripts/pushBuilds.sh'''
            }
        }
        stage('run'){
            steps{
                sh'''docker swarm init
                bash scripts/launchSwarm.sh'''
            }
        }
    }
}