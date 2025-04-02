resource "docker_image" "my_spring_app" {
  name = "openjdk:8"
}

resource "docker_container" "spring_container" {
  image = docker_image.my_spring_app.name
  name  = "spring-mvc-container"

  ports {
    internal = 8080
    external = 9090
  }

  # Ensure your application JAR/WAR is copied and executed
  command = ["java", "-jar", "/app/springmvcapp.jar"]  

  volumes {
    host_path      = "C:/Users/jagru/OneDrive/Documents/Desktop/Integration/SpringMVCProject/target/springmvcapp.jar"
    container_path = "/app/springmvcapp.jar"
  }

  restart = "always"
}
