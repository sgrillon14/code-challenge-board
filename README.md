# code-challenge-board
code challenge board is a Web board for code challenge.

# Data Init

- modify the exercises.txt files under data
- modify the teams.txt files under data
- modify the users.txt files under data

# Docker Postgres Installation
    $ cd data/
    $ docker build -t battle-postgres .
    $ docker run -d --name battle-postgres battle-postgres:latest

# Docker Tomcat Installation
    $ cd app/
    $ docker build -t battle-tomcat .
    $ docker run -d --name battle-tomcat --link battle-postgres:postgres -p 8080:8080 -p 4443:4443 battle-tomcat:latest

# Battle Board Access

The battle board is accessible on URL: http://<your-server>:8080/battle-board-web/login
