# AWS Variables
variable "aws_region" {
  description = "The AWS region"
  default     = "us-east-1"
}

# Custom Variables
variable "owner" {
  description = "Owner of the app"
  default = "jhonmora"
}

# VPC Variables
variable "vpc_cidr_block" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "172.23.0.0/16"
}

variable "private_subnets_cidr_block" {
  description = "The CIDR block for the private subnets"
  type        = list(string)
  default     = ["172.23.0.0/24", "172.23.1.0/24", "172.23.2.0/24"]
}

variable "public_subnets_cidr_block" {
  description = "The CIDR block for the public subnets"
  type        = list(string)
  default     = ["172.23.3.0/24", "172.23.4.0/24", "172.23.5.0/24"]
}

variable "app" {
  description = "Nombre de la app"
  default     = "jhonmora-proyecto-final"
}

variable "number_instances" {
  description = "Número de instancias a crear"
  type        = number
  default     = 2
}

variable "database_username" {
  description = "Usuario de la base de datos"
  default     = "admin"
  sensitive   = true
}

variable "database_password" {
  description = "Contraseña de la base de datos"
  sensitive   = true
  default = "Calidad2022*"
}

variable "public_key" {
  description = "Llave pública"
  sensitive   = true
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCXb6G47p7ye3+FzBS9DCku8I8Eui7CHjEq+4DPT8X9HkAD9pYu7EleAoLmP4KffCi5DynkS7KANa3VxrUyTScorILWSS0AhYVxHrQT79xFVfapqXZEGtzqTK8W3wmtFYnE0i46XuLSk9WGwm17env2kN1JvyWL52RZZMvVP60mwinmVIMeBTdf9SWwLFyjKksZilBWbmybgqOatuwpfvtMUOuHkQsVKSHBEM5JSYCAOCPOQkHoMDsVoMCX7qh6j6ysDIZ3hcM7uOs2oR1uuc2rhTGJtpqfusdlrCu7HorBH54ZbyneOzGKQB3IAou0tCex+y7Wl6PminZy1V0YGNrh"
}

variable "ami_id" {
  description = "ID de la AMI"
  default     = "ami-05fa00d4c63e32376"
}