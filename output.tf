
output "instance_id" {
  description = "ID de l'instance EC2"
  value       = aws_instance.web_server.id
  }
  
  output "public_ip" {
  description = "IP publique de l'instance"
  value       = aws_eip.web.public_ip
 }
  
 1output "ssh_command" {
    description = "Commande SSH pour se connecter"
    value       = "ssh ec2-user@${aws_eip.web.public_ip}"
  }
  
  output "vpc_id" {
    description = "ID de la VPC"
   value       = aws_vpc.main.id
  }
 
~                                                                                                                                                                               
~                                                                                                                                                                               
~                                                     
