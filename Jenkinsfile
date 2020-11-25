pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "pip3 install -r requierments.txt"
                sh "pytest --cov frontend/"
            }
        }
        stage('build and run'){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}