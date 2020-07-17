pipeline {
    agent any
 stages {       
         stage('Compile') {
             steps{
                         sh "sbt compile"
             }
      }
<<<<<<< HEAD
         stage('Test') {
=======

        stage('Test') {
>>>>>>> 37f80246788cda2ab018fbcf80c165a345f5389c
            steps {
                echo "Testing..."
                sh "sbt test"

            }
        }
        stage('Package'){
            steps{
               echo "Packaging..."
               sh "sbt package"
<<<<<<< HEAD
            }
        }
        stage('Build Docker Image'){
            steps{
               echo "Packaging..."
               sh "docker build -t sakshigawande12/knolx-rest:2.0.0 ."
            }
        }
        stage('Push Docker Image'){
            steps{
             withCredentials([string(credentialsId: 'dockerHubPwd', variable: 'dockerHubPwd')]) {
                    sh "docker login -u sakshigawande12 -p ${dockerHubPwd} "
                  }
               sh "docker push sakshigawande12/knolx-rest:2.0.0"
            }
        }

        stage('sanity check'){
            steps{
             input("does the project  is ready to deploy ?")
=======

>>>>>>> 37f80246788cda2ab018fbcf80c165a345f5389c

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
                githubNotify account: 'sakshigawande12', context: 'build-status', credentialsId: '5f3f4be6-94a3-4991-8515-d8936cc4f147', description: 'passed', gitApiUrl: '', repo: 'HelloWorld', sha: "${GIT_COMMIT}", status: 'SUCCESS', targetUrl: ''
            }
     }
    }
}

