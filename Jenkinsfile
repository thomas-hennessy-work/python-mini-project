pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash unit-test.sh"
            }
        }
        stage('build and run'){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}