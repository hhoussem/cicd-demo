// declarative pipeline, as it begins with pipeline {} instruction
// see syntax : https://jenkins.io/doc/book/pipeline/syntax/#declarative-pipeline
pipeline {
    agent any
    //those tools are configured in jenkins/ configure globale tools
    //for example "maven-3.6.3" is the name of Maven specified above MAVEN_HOME field
    // when building the project, maven and jdk directories will be added to PATH so that mvn command can be executed
    tools {
        maven 'maven-3.6.3'
        jdk 'jdk11'
    }
    stages {
        stage('Build') {
            steps {
                sh '''
                    mvn clean install
                '''
            }
        }
    }
}