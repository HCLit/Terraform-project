terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "3.0.1"
    }
  }
}
provider "docker" {}

resource "docker_image" "ubuntu" {
  name = "ubuntu:precise"
}

resource "docker_container" "ubuntu" {
  name  = "foo"
  restart = "always"
  image = docker_image.ubuntu.image_id
  ports {
    internal = 80
    external = 8080
  }

}