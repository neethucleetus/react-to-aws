pipeline {
    agent any 
     environment {
            CI = 'false'
        }
   
   stages {
        stage('Build') {
            steps {
                bat 'npm install'
            }
        }
       
       stage('Deliver') {
                            steps {
                               bat 'npm run build'
                            }
                        }
   }
    
}
