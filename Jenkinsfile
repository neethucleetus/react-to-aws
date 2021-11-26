pipeline {
    agent any 
     environment {
            CI = 'false'
        }
   
   stages {
        stage('Build') {
            steps {
                bat 'npm install'
                bat 'npm run build'
            }
        }
       
       stage('dockerize') {
                            steps {
                               bat 'docker build -t neethucleetus/react-to-aws:latest .'
                            }
                        }
   }
    
}
