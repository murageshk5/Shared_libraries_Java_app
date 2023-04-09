@Library ('Java-Shared-Libraries') _





pipeline {

        parameters{
            choice(name:'action', choices:'create\ndelete', description:'Choose create/delete')
            }
        agent any

        stages{

            stage("Git Chekout") {
            when { expression { params.action == 'create' } }
                steps{
                      gitCheckout (
                        branch:"main",
                        url: "https://github.com/murageshk5/Shared_libraries_Java_app.git"
                    )
                }
            }

            stage("Mvn Unit Test") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        mvnTest()

                    }
                }
            }

            stage("Mvn Intigration Test") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        mvnIntigrationTest()

                    }
                }
            }

            stage("Static code analysis") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        def credentialsId = 'sonar-auth'
                        staticCodeAnalysis(credentialsId)

                    }
                }
            }

            stage("SOnar Quality gate status") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        def credentialsId = 'sonar-auth'
                        sonarQualityGateStatus(credentialsId)

                    }
                }
            }

            stage("Mvn Build") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        mvnCleanInstall ()

                    }
                }
            }
        }
}