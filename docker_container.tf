# Configure the Docker provider
provider "docker" {
  host = "${aws_instance.example.private_ip}:2376/"
}

# Create a container
resource "docker_container" "foo" {
  image = "${docker_image.test1.latest}"
  name  = "foo"
}

resource "docker_image" "test1" {
  name = "rajeshgopal/rg-expo:latest"
}
