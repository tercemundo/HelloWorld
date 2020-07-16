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
        stage('Build Docker Image'){
            steps{
               echo "Packaging..."
                sh "${tool name: 'docker', type: 'dockerTool'} docker build -t sakshigawande12/knolx-rest:2.0.0 ."
            }
        }
        stage('Push Docker Image'){
            steps{
             withCredentials([string(credentialsId: 'dockerHubPwd', variable: 'dockerHubPwd')]) {
                    sh "${tool name: 'docker', type: 'dockerTool'} docker login -u sakshigawande12 -p ${dockerHubPwd} "
                  }
               sh "${tool name: 'docker', type: 'dockerTool'} docker push sakshigawande12/knolx-rest:2.0.0"
            }
        }

        stage('sanity check'){
            steps{
             input("does the project  is ready to deploy ?")


            }
        }

        stage('Build Status'){
            steps{
             echo "Here your pipeline is get successfully executed"

            }
        }

    }
}

