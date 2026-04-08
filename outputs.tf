output "public_ip" {
  description = "IP Público da Instância EC2"
  value       = aws_instance.web_server.public_ip
}

output "vpc_id" {
  description = "ID da VPC criada"
  value       = aws_vpc.main_vpc.id
}

output "web_url" {
  description = "URL para acessar o servidor web"
  value       = "http://${aws_instance.web_server.public_ip}"
}

output "security_group_id" {
  description = "ID do Security Group criado"
  value       = aws_security_group.web_sg.id
}
