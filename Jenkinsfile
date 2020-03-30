def call() {
    def dockerBuildParams
    def env = System.getenv('ENVIRONMENT')
    pipeline {
        agent {
            dockerfile {
                filename "Dockerfile"
                //args "-e 'ENVIRONMENT=${params.ENVIRONMENT}'"
            }
        }
        parameters {
            choice(
                    name: 'ENVIRONMENT',
                    choices: 'qa\nuat',
                    description: 'Select environment'
            )
        }
        stages {
            stage('Init') {
                steps {
                    echo 'Hello World'
                    script {
                        dockerBuildParams = "--build-arg ENVIRONMENT=$env"
                    }
                    echo "env: ${ENVIRONMENT}"
                }
                stage('Build') {
                    steps {
                        echo 'build'
                        script {
                            docker.build("myImage:1.0", dockerBuildParams)
                        }
                    }
                }
            }
        }
    }
}
