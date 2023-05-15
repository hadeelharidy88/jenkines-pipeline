pipeline{
    agent any

    stages{
        stage('build'){
            steps{
                script{
                    sh "build stage"
                }
            }
        }

        stage('test'){
            steps{
                script{
                    echo "test stage"
                }
            }
        }
    }
}