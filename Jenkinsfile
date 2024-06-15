pipeline {
   agent any

   stages{
    stage ('Build the Docker image') {
        steps {
            sh 'docker build -t 730335231371.dkr.ecr.ap-south-1.amazonaws.com/project .'
        }
    }
    stage ('Push Image In ECR') {
     steps {
        sh 'docker push 730335231371.dkr.ecr.ap-south-1.amazonaws.com/project:latest'
     }
   }

}
}
   
