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
    stage ('deploying to EKS') {
           steps {
                echo "deploying imges to EKS"
                sh 'kubectl apply -f deployment.yaml'
                sh 'kubectl set image deployment/nodejs-deployment nodejs-deployment=730335231371.dkr.ecr.ap-south-1.amazonaws.com/project:latest'
                sh 'kubectl apply -f service.yaml'
                sh 'kubectl rollout restart deployment/nodejs-deployment'
                sh 'docker rmi -f $(docker images --filter "dangling=true" -q --no-trunc)'
               
           }
    }  

}
}
   
