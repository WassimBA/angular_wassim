pipeline {
agent any
   
    stages {
        

        stage ("Git checkout "){
            steps{
        git branch: 'main', 
            url: 'https://github.com/WassimBA/angular_wassim.git'
            }
        
        }

        
        stage('Build') { 
            steps {
                sh 'npm install'
                sh 'ng build' 
            }
        }

        stage("docker image"){

            steps{
               sh 'docker build -t wassimba/project_ang .'

            }
        }
         }
    }

