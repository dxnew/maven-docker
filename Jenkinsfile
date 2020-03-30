pipeline {
    agent {
    dockerfile true
    args '-e "ENVIRONMENT=${params.ENVIRONMENT}"'
     }
    parameters {7
     choice(
        name: 'ENVIRONMENT',
        choices: 'qa\nuat',
        description: 'Select environment'
     )
    }
   stages {
      stage('Hello') {
         steps {
            echo 'Hello World'
            echo "env: ${ENVIRONMENT}"
         }
      }
   }
}
