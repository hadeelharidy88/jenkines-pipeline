pipeline{
    agent{
        label 'aws-agent'
    }
    stages{
        stage('build'){
            steps{
                script{
                    sh 'docker build -t java-app .'
                }

                }
            }

        stage('push'){
            steps{
                script{
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'Password ', usernameVariable: 'Username ')]){
                        sh 'docker login --username "hadeelharidy" --password "hadeel1988"'
                        sh 'docker tag java-app hadeelharidy/java-app'
                        sh 'docker push hadeelharidy/java-app'
                    }

                }
            }
        }

        stage('deploy'){
            steps{
                script{
                    withAWS(credentials: 'AWS-CLI', region: 'us-east-1') {
                        
                        sh "echo '${eksToken}' | kubectl config set-credentials eks-user --token=''"
                        sh "kubectl config set-context eks-context --cluster=${eksClusterName} --user=eks-user"
                        sh "kubectl config use-context eks-context"
                        sh "kubectl apply -f ./k8s/deployment.yaml"
}


                }
            }
        }

        
        }
    }
