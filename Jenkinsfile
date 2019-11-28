pipeline {
    agent any
 stages {       
         stage('Compile') {
             steps{
         sh "sbt clean compile"
             }
      }

        stage('Run') {
            steps {
                echo "Running..."
                sh "sbt run"
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

        stage('sanity check'){
            steps{
             input("does the project  is ready to deploy ?")
            }
        }

         stage('Dockerize'){
                    steps{
                       echo "Dockerize..."
                       sh "sudo docker build -t HelloWorld ."
                       sh "sudo docker run HelloWorld"
                    }
                }

    }
}

