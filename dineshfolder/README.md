This is a sample Java web Project and Building the source code using Maven
war package will be copied to tomcat container 
build the image 
docker build . -t dinesh_maven
docker run -d -p 81:8080 dinesh_maven
