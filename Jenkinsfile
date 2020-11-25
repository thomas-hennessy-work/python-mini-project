pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh '''sudo apt install python3 python3-pip -y
                    pip3 install -r requierments.txt
                    pytest frontEnd/'''
            }
        }
        stage('build and run'){
            steps{
                sh "bash createImagesLaunchSwarm.sh"
            }
        }
    }
}