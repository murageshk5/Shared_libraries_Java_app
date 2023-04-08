@Library ('Java-Shared-Libraries') _


parameters{
    choice(name:'action', choices: 'create\ndelete', description:'Choose create/delete')
}



pipeline {

    agent any

        stages{
            when { expression { params.action == 'create' } }
            stage("Git Chekout") {
                steps{
                      gitCheckout (
                        branch:"main",
                        url: "https://github.com/murageshk5/Shared_libraries_Java_app.git"
                    )
                }
            }
            when { expression { params.action == 'create' } }
            stage("Mvn Unit Test") {
                steps{
                    script{

                        mvnTest()

                    }
                }
            }
            when { expression { params.action == 'create' } }
            stage("Mvn Intigration Test") {
                steps{
                    script{

                        mvnIntigrationTest()

                    }
                }
            }

            stage("Static code analysis") {
                steps{
                    script{
                        withSonarQubeEnv(credentialsId: 'sonar-auth') {

                        staticCodeAnalysis()

                        }
                    }
                }
            }
        }
}