pipeline {
    agent {
     dockerfile {
          filename "Dockerfile"
          args "--no-cache -e 'ENVIRONMENT=${params.ENVIRONMENT}'"
        }

//     parameters {
//      choice(
//         name: 'ENVIRONMENT',
//         choices: 'qa\nuat',
//         description: 'Select environment'
//      )
//     }
   stages {
      stage('Hello') {
         steps {
            echo 'Hello World'

            //echo "env: ${ENVIRONMENT}"
         }
      }
   }
}
