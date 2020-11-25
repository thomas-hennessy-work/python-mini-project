pipeline{
    agent any
    stages{
        stage(unit tests){
            steps{
                sh "pytest --cov frontend/"
            }
        }
        stage(build and run){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}