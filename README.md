# dockerForJavaDevs
This is support project for the linked in course: https://www.linkedin.com/learning/introduction-to-docker-for-java-developers



error while runing the image, 
the curl does not work

i HAD THIS ERROR

                              ^
    raffenio@Rafflap:~/Development/dockerForJavaDevs$ curl localhost:8080/actuator/health

    <!doctype html><html lang="en"><head><title>HTTP Status 404 – Not Found</title><style type="text/css">body {font-family:Tahoma,Arial,sans-serif;} h1, h2, h3, b {color:white;background-color:#525D76;} h1 {font-size:22px;} h2 {font-size:16px;} h3 {font-size:14px;} p {font-size:12px;} a {color:black;} .line {height:1px;background-color:#525D76;border:none;}</style></head><body><h1>HTTP Status 404 – Not Found</h1><hr class="line" /><p><b>Type</b> Status Report</p><p><b>Message</b> The requested resource [&#47;actuator&#47;health] is not available</p><p><b>Description</b> The origin server did not find a current representation for the target resource or is not willing to disclose that one exists.</p><hr class="line" /><h3>Apache Tomcat/9.0.90</h3></body></html>r

IT was resolved by changing the FROM to : 

    #I HAVE UPDATED TO THIS VERSION
    FROM tomcat:jdk17-temurin


I just selected a version with JDFk 17 from :
    
    https://hub.docker.com/_/tomcat/tags?page=&page_size=&ordering=&name=jdk

also i ran a command to have the .mvn folder, and creates that wrapper path with the property i think