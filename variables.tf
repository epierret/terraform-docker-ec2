variable "aws_region" {
  description = "Region AWS"
  type        = string
  default     = "eu-west-3" # Paris
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t4g.small"
}

variable "public_key_path" {
  description = "Chemin vers la clé publique SSH"
  type        = string
  default     = "/home/cloudshell-user/.ssh/my_terraform_key.pub"
}

variable "key_name" {
  description = "Nom de la clé SSH"
  type        = string
  default     = "key"
}

variable "ami_id" {
  description = "ID de l'AMI"
  type        = string
  default     = "ami-0f903816bdd6b80eb"  # Amazon Linux 2 eu-west-3
}
