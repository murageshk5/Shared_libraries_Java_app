@Library ('Java-Shared-Libraries@master') _


pipeline {

    agent any

        stages{
            stage("Git Chekout") {
                steps{
                      gitCheckout (

                        branch: "main",
                        url: "https://github.com/murageshk5/Shared_libraries_Java_app.git",
                        credentialsId: 'github-auth'

                    )
                }
            }
        }
}