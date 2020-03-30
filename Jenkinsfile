pipeline {
    agent any
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
                    def dockerBuildParams
                    dockerBuildParams = "--build-arg ENVIRONMENT=$ENVIRONMENT"
                    docker.build("myimage:1.0", dockerBuildParams)
                }
                echo "env: ${ENVIRONMENT}"
            }
        }
    }
}
