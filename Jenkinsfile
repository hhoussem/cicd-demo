// devclarative pipeline, as it begins with pipeline {} instruction
// see syntax : https://jenkins.io/doc/book/pipeline/syntax/#declarative-pipeline
pipeline {
    agent {
        docker {
            image 'maven:3-alpine'
            args  '-v /tmp:/tmp'
        }
    }
    //those tools are configured in jenkins/ confiure gloable tools
    //for examlple "maven-3.6.3" is the name of Maven specified above MAVEN_HOME field
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