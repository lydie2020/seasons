pipeline {
  agent any 
  tools {
      maven 'M2_HOME'
  }
  environment {
    registry = "chanceline/devops-jenkinsfile"
    registryCredential = 'dockerUserID'
  }
  stages {
    stage ('Build'){
      steps {
       sh 'mvn clean'
       sh 'mvn install'
       sh 'mvn package'
   
      }
     }
     stage ('test'){
      steps {
       echo "test step"
       sh 'mvn test'
      }
     }    
     stage ('deploy'){
      steps {
        script {
         docker.build registry + " :$BUILD_NUMBER"
      }   
     }   
     stage ('docker'){
      steps {
       echo "image step"
       sleep 10
      }
     }   
    }
  }
