pipeline{
    agent{
        label 'aws-agent'
    }

    stages{
        stage('build'){
            steps{
                script{
                    echo "build stage"
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

post {
  success {
    slackSend channel: '#jenkins-ci', message: "Build Success- ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)", teamDomain: 'hadeelheadquarters', tokenCredentialId: 'slack-notifications'
  }

  failure {
    slackSend channel: '#jenkins-ci', message: "Build Failed- ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)", teamDomain: 'hadeelheadquarters', tokenCredentialId: 'slack-notifications'
  }
}

}