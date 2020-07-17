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
     stage('Run') {
            steps {
     githubNotify account: 'https://github.com/sakshigawande12', context: 'jenins-build-status', credentialsId: 'c5002016-bcdf-49aa-aa71-27616b6bd10a', description: 'BUILD-PASS', gitApiUrl: '', repo: 'https://github.com/sakshigawande12/HelloWorld', sha: '${GIT_COMMIT}', status: 'SUCCESS', targetUrl: ''
            }
     }
    }
}

