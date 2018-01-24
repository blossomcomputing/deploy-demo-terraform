node {
    
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }
    
    stage('Deploy') {
	sh "/usr/local/bin/terraform init"    
	    sh "/usr/local/bin/terraform apply -var DOCKER_IMAGE=${imagename} -auto-approve"
    }
    stage('Terminate') {
        input "Terminate terraform managed instances?"
        sh "/usr/local/bin/terraform destroy -force"
    }

    
}
