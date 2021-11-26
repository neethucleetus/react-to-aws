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
        stage('deploy_to _aws') {
                            steps {
                               bat 'aws ecr get-login-password --region us-east-2 | docker login --username AWS --password-stdin 583893226381.dkr.ecr.us-east-2.amazonaws.com'
                               bat 'docker tag react-app:latest 583893226381.dkr.ecr.us-east-2.amazonaws.com/react-to-aws:latest'
                               bat 'docker push 583893226381.dkr.ecr.us-east-2.amazonaws.com/react-to-aws:latest'

                            }
                        }
   }
    
}
