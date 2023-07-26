pipeline {
    agent {
        label 'WS'
    }
    parameters {
        
        choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Pick a Environment')
        choice(name: 'ACTION', choices: ['apply', 'destroy'], description: 'Select create or destroy')
        
        }
    
   stages{
    stage('terraform init') {
        steps {
            sh "terrafile -f env-${ENV}/Terrafile"
            sh "terraform init -backend-config=env-${ENV}/${ENV}-backend.tfvars"
            }
        }
    stage('terrafrom plan') {
        steps {
            sh "terraform plan -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
     stage('terrafrom apply') {
        steps {
            sh "terraform ${ACTION} -auto-approve -var-file=env-${ENV}/${ENV}.tfvars"
            }
        }
    }
}
       
    
 