pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "pip3 install -r requierments"
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