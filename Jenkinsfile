pipeline {
    agent {
     dockerfile {
          filename "Dockerfile"
        }
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
