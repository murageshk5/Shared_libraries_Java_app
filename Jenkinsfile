@Library ('Java-Shared-Libraries') _


pipeline {

    agent any

        stages{
            stage("Git Chekout") {
                steps{
                      gitCheckout (
                        branch: [["main"]],
                        url: [["https://github.com/murageshk5/Shared_libraries_Java_app.git"]]
                    )
                }
            }
        }
}