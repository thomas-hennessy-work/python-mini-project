pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash ./unit-tests.sh"
            }
        }
        stage('build and run'){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}