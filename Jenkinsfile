pipeline {
    agent any

    stages {

        stage('Compile') {
            steps {
                echo "Compiling..."
                 sh "sbt compile"

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
               sh "sbt assembly"
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

