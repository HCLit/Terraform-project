variable "image_name" {
  type        = string
  description = "The name of image"

}
variable "image_tag" {
  type        = string
  description = "The tag of Docker image"
}

variable "internal_port" {
  type        = number
  description = "The internal port of the docker image"
  default     = 80
}

variable "external_port" {
  type        = number
  description = "The external port of the docker image"
  default     = 8080
}