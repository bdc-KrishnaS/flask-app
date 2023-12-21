pipeline {
    agent any
    
    // environment{
    //     SCANNER_HOME= tool 'sonar-scanner'
    // }
    
    
    stages {
        stage('clean workspace'){
            steps{
                cleanWs()
            }
        }
        
        // stage('Git Clone') {
        //     steps{
        //         git branch: 'main', url: 'https://github.com/Bluedata-Consulting/Document_generator.git'
        //         // sh "git clone https://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@github.com/Bluedata-Consulting/Document_generator.git"
        //         // sh "git clone https://github.com/Bluedata-Consulting/Document_generator.git"
        //     }
        // }
        
        // stage("Docker Build & Push"){
        //     steps{
        //         sh "mkdir .streamlit"
        //         sh "copy C:\\Users\\pc2\\.sec\\.streamlit\\secrets.toml .streamlit\\ "
        //         sh "copy C:\\Users\\pc2\\Desktop\\Deploy_files\\files\\Dockerfile"
        //         sh "docker build -t docgen ."
        //     //   sh "docker push krishna1386/flaskapp:latest "
        //     }
        // }
        
        stage('Deploy to Conatiner') {
            steps {
                // sh "sudo su juser"
                sh "sudo cp /home/user/docker-compose/docker-compose.yml . "
                sh "sudo docker-compose down "
                sh "sudo docker-compose up --build -d"
            }
        }
        
        // stage('OWASP FS SCAN') {
        //     steps {
        //         dependencyCheck additionalArguments: '--scan ./ --disableYarnAudit --disableNodeAudit', odcInstallation: 'DP-Check'
        //         dependencyCheckPublisher pattern: '**\\dependency-check-report.xml'
        //     }
        // }
        
        // stage('Trivy FS Scan') {
        //     steps {
        //         script {
        //             // Assuming your application code is in the 'src' directory
        //             def scanResult = sh(script: "C:\\tools\\trivy\\trivy.exe fs .", returnStatus: true)
        //             if (scanResult != 0) {
        //                 error("Trivy scan failed.")
        //             }
        //         }
        //     }
        // }
        
        // stage('SONARQUBE ANALYSIS') {
        //     steps {
        //         withSonarQubeEnv('sonar-server') {
        //             sh " $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=flaskapp -Dsonar.projectKey=flaskapp "
        //         }
        //     }
        // }
        
        // stage("quality gate"){
        //   steps {
        //         script {
        //             waitForQualityGate abortPipeline: false, credentialsId: 'Sonar_cred' 
        //         }
        //     } 
        // }
        
        // stage("Docker Build & Push"){
        //     steps{
        //         script{
        //           withDockerRegistry(credentialsId: 'Dockerhub', toolName: 'docker'){   
        //               sh "docker build -t flaskapp ."
        //               sh "docker tag flaskapp krishna1386/flaskapp:latest "
        //               sh "docker push krishna1386/flaskapp:latest "
        //             }
        //         }
        //     }
        // }
        // stage("TRIVY IMG Scan"){
        //     steps{
        //         sh "C:\\tools\\trivy\\trivy.exe image krishna1386/flaskapp:latest > trivy.txt" 
        //     }
        // }
    }
}
