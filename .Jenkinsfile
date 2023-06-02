timeout(time: 5, unit: 'MINUTES') {
    node {
           def workspace = pwd()

           stage("Cleaning workspace") {
              sh "rm -rf ${workspace}/*"
           }

           stage('Git pull') {
              checkout scm
           }

           stage('robot'){
sh 'robot allure_robotframework --outputdir ./output/robot -i Create -v browser:firefox WorkspaceTC.robot'
           }

           /* disabled: false --> history ON */
           /* disabled: true --> history OFF */
           stage('allure'){
               allure([
                  disabled: false,
                  includeProperties: false,
                  jdk: '',
                  reportBuildPolicy: 'ALWAYS',
                  results: [[path: 'output/allure']]
               ])
           }
    }
}