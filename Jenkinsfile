pipeline {

    agent any

        stages{
            stage("Git Chekout") {
                steps{
                    script{

                      git branch: 'main', credentialsId: 'github-auth', url: 'https://github.com/murageshk5/Shared_libraries_Java_app.git'

                    }
                }
            }
        }
}