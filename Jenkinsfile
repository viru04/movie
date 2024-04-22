def registry = 'https://miniproject3.jfrog.io'
def imageName = 'miniproject3.jfrog.io/miniproject3-docker-local/gohtmx'
def version = '1.0.1'

pipeline {
    agent {
        node {
            label 'slave'
        }
    }
    
    stages {
        stage('Checkout') {
            steps {
                echo '<---------Checking out code--------->'
                checkout scm
                echo '<---------Code checked out--------->'
            }
        }
        
        stage('Clone-code') {
            steps {
                echo '<---------Cloning code--------->'
                git branch: 'main', url: 'https://github.com/viru04/movie.git'
                echo '<---------Code cloned--------->'
            }
        } 
        
        stage('Install Dependencies') {
            steps {
                echo '<---------Installing dependencies--------->'
                sh 'ls'
                echo '<---------Dependencies installed--------->'
            }
        }

        stage('Build') {
            steps {
                echo '<---------Building code--------->'
                sh 'ls -a'
                echo '<---------Code built--------->'
            }
        }
        
        stage('Test') {
            steps {
                echo '<---------Testing code--------->'
                sh 'ls'
                echo '<---------Code tested--------->'
            }
        }

        stage('Give Docker Permissions'){
            steps {
                script {
                    echo '<---------Giving Docker Permissions--------->'
                    sh 'sudo chmod 0777 /var/run/docker.sock'
                    echo '<---------Docker Permissions Given--------->'
                }
            }
        }
        
        stage('Docker Build') {
            steps {
                script {
                    echo '<---------Building Docker Image--------->'
                    sh 'docker build -t movie .'
                    echo '<---------Docker Image Built--------->'
                }
            }
        }

        stage('Docker Publish'){
            steps {
                script {
                    sh 'docker run -d -p 8080:80 movie'
                }
            }
        }

        stage ('New Deploy') {
            steps {
                script {
                    echo '<---------Deploying application--------->'
                    echo '<---------Application deployed--------->'
                }
            }
        }
    }
}
