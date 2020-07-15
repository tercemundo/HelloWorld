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

    }
}

