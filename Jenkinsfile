pipeline{
    agent any
    stages {
        stage(" Verifying Tooling") {
            steps {
                sh '''
                 docker version
                 docker info
                 docker compose version
                 java version
                 jq --version
                 curl --version
                '''
            }
        }
        stage {" Prune Docker Data "} {
            steps {
                sh 'docker system prune -a --volumes -f'
            }
        }
        stage {" Start the container"} {
            steps {
                sh 'docker compose up -d --no-color --wait'
                sh 'docker compose ps'
            }
        }
        stage {" Run tests against container"} {
            step {
                sh 'curl http:YOUR_MACHINE IP:port-no/param?quer=demo' | jq
            }
        }
    post {
        always {
            sh 'docker compose down --remove-orphans -v'
            sh 'docker compose ps'
         }
      }    
        
    }
}