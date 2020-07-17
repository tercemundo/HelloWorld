pipeline {
    agent any
 stages {       
         stage('Compile') {
             steps{
                         sh "sbt compile"
             }
      }

        stage('Test') {
            steps {
                echo "Testing..."
                sh "sbt test"

            }
        }
        stage('Package'){
            steps{
               echo "Packaging..."
               sh "sbt package"


            }
        }
        stage('Run') {
            steps {
                echo "Running..."
                sh "sbt run"
            }
        }
     stage('Build status') {
            steps {
                githubNotify account: 'sakshigawande12', context: 'build-status', credentialsId: '5f3f4be6-94a3-4991-8515-d8936cc4f147', description: 'passed', gitApiUrl: '', repo: 'HelloWorld', sha: "${GIT_COMMIT}", status: 'SUCCESS', targetUrl: 'http://104.154.65.36:8080'
            }
     }
      stage('Build status1') {
            steps {
                githubNotify account: 'sakshigawande12', context: 'build-status', credentialsId: '5f3f4be6-94a3-4991-8515-d8936cc4f147', description: 'failed', gitApiUrl: '', repo: 'HelloWorld', sha: "${GIT_COMMIT}", status: 'FAILURE', targetUrl: 'http://104.154.65.36:8080'
            }
     }
     stage('B1') {
            steps {
     sh label: '', script: '''curl "https://api.GitHub.com/repos/sakshigawande12/HelloWorld/statuses/$GIT_COMMIT?access_token=e770bb9ff5a7a2a5125011b1915eb22f5531306a" \\
  -H "Content-Type: application/json" \\
  -X POST \\
  -d "{\\"state\\": \\"success\\",\\"context\\": \\"continuous-integration/jenkins\\", \\"description\\": \\"Jenkins\\", \\"target_url\\": \\"http://104.154.65.36:8080/job/mul-2-hello/$BUILD_NUMBER/console\\"}"'''
    }
   }
 }
}
