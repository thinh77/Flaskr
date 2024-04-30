pipeline {
    agent any
    
    stages {
        stage('Test') {
            // when {
            //     expression {
            //         // Run tests only on the 'dev' branch
            //         return env.BRANCH_NAME == 'dev'
            //     }
            // }
          //   agent {
          //       docker {
          //   image 'python:3.12.0-slim-bullseye'
          //   // args '-u 0:0 -v /tmp:/root/.cache'
          // }
          //   }
            steps {
                // Install dependencies
                // sh 'pip install -U -r requirements.txt'
                // // Install the project
                // sh 'source /home/.venv/bin/activate'
                sh '/home/.venv/bin/pip3 install pytest'
                sh '/home/.venv/bin/activate'
                // Run test
                sh 'pytest'
            
                
            }
        }

        // stage("Docker Build") {
        //     when {
        //         expression {
        //             // Run tests only on the 'dev' branch
        //             return env.BRANCH_NAME == 'main'
        //         }
        //     }
        //     environment {
        //         DOCKER_IMAGE = "vdthinh/flask-blog"
        //         DOCKER_TAG = "${GIT_BRANCH.tokenize('/').last()}-${GIT_COMMIT.substring(0, 7)}"
        //     }
        //     steps {
        //         // Build image
        //         sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} . "
        //         sh "docker tag ${DOCKER_IMAGE}:${DOCKER_TAG} ${DOCKER_IMAGE}:latest"
        //         // Display information about the built images
        //         sh "docker image ls | grep ${DOCKER_IMAGE}"
        //         // Push image into docker hub
        //         withCredentials([usernamePassword(credentialsId: 'docker-hub', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
        //             sh 'echo $DOCKER_PASSWORD | docker login --username $DOCKER_USERNAME --password-stdin'
        //             sh "docker push ${DOCKER_IMAGE}:${DOCKER_TAG}"
        //             sh "docker push ${DOCKER_IMAGE}:latest"
        //         }
        //         //clean to save disk
        //         sh "docker image rm ${DOCKER_IMAGE}:${DOCKER_TAG}"
        //         sh "docker image rm ${DOCKER_IMAGE}:latest"
        //     }
        // }
    }

    post {
        success {
            // Additional steps to perform on success
            echo "SUCCESSFUL"
        }

        failure {
            // Additional steps to perform on failure
            echo "FAILURE"
        }
    }
}
