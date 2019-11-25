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
                echo "Testing..."
                sh "sbt run"
            }
        }

        stage('Test') {
            steps {
                echo "Packaging..."
                sh "sbt test"
            }
        }

    }
}

