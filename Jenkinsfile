pipeline{
    agent any
    stages{
        stage('unit tests'){
            steps{
                sh "bash scripts/frontEndUnitTests.sh" 
            }
        }
        stage('build'){
            steps{
                sh "bash scripts/createImages.sh"
            }
        }
    }
}