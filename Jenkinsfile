pipeline {
    agent any

    stages {
        stage('Cpp Check') {
            steps {
                sh "cppcheck -j 4 --enable=all --inconclusive --xml --xml-version=2 . 2> cppcheck-result.xml"
                publishCppcheck pattern:'cppcheck-result.xml'
            }
        }
        stage('Build') {
            steps {
                echo 'Building..'
            }
        }
    }
}
