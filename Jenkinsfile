pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh '''sudo apt install python3 python3-pip
                    pip install -r requierments.txt
                    pytest --cov frontEnd/'''
            }
        }
        stage('build and run'){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}