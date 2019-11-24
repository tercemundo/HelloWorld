pipeline {
    agent any

    stages {

        stage('Compile') {
            steps {
                echo "Compiling..."
                sh "sbt compile"
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

