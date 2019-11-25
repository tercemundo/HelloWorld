pipeline {
    agent any
 stages {       
         stage('build') {
             steps{
         sh "sbt clean compile"
             }
      }

        stage('Test') {
            steps {
                echo "Testing..."
                sh "sbt run"
            }
        }

        stage('Package') {
            steps {
                echo "Packaging..."
                sh "sbt test"
            }
        }

    }
}

