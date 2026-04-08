variable "aws_region" {
  description = "Região da AWS para provisionar os recursos"
  type        = string
  default     = "us-east-1"
}

variable "instance_type" {
  description = "Tipo da instância EC2"
  type        = string
  default     = "t3.micro" # Geração atual — Free Tier elegível em contas novas
}

variable "key_name" {
  description = "Nome do Key Pair AWS para acesso SSH à instância"
  type        = string
}

variable "ssh_allowed_cidr" {
  description = "CIDR permitido para acesso SSH (use seu IP: x.x.x.x/32)"
  type        = string
  default     = "0.0.0.0/0" # Altere para seu IP real em produção
}

variable "ami_id" {
  description = "ID da AMI (Amazon Linux 2023)"
  type        = string
  default     = "ami-0c101f26f147fa7fd" # us-east-1 (Amazon Linux 2023)
}
