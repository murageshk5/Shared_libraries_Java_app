@Library ('Java-Shared-Libraries') _





pipeline {

        parameters{

            choice(name:'action', choices:'create\ndelete', description:'Choose create/delete')
            string(name: 'ImageName', defaultValue: 'shared_libraries_java_app', description: 'Give the name for docker image')
            string(name: 'ImageTag', defaultValue: 'v1', description: 'Give the tag for docker image')
            string(name: 'DockerHubName', defaultValue: 'murageshk5', description: 'Specify the dockerhub account name to push docker image')
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

            // stage("Mvn Unit Test") {
            // when { expression { params.action == 'create' } }
            //     steps{
            //         script{

            //             mvnTest()

            //         }
            //     }
            // }

            // stage("Mvn Intigration Test") {
            // when { expression { params.action == 'create' } }
            //     steps{
            //         script{

            //             mvnIntigrationTest()

            //         }
            //     }
            // }

            // stage("Static code analysis") {
            // when { expression { params.action == 'create' } }
            //     steps{
            //         script{

            //             def credentialsId = 'sonar-auth'
            //             staticCodeAnalysis(credentialsId)

            //         }
            //     }
            // }

            // stage("SOnar Quality gate status") {
            // when { expression { params.action == 'create' } }
            //     steps{
            //         script{

            //             def credentialsId = 'sonar-auth'
            //             sonarQualityGateStatus(credentialsId)

            //         }
            //     }
            // }

            stage("Mvn Build") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        mvnCleanInstall ()

                    }
                }
            }

            stage("Docker image build") {
            when { expression { params.action == 'create' } }
                steps{
                    script{

                        dockerBuild ("${params.DockerHubName}", "${params.ImageName}", "${params.ImageTag}",)

                    }
                }
            }
            
        }
}