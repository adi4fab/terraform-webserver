output "publicip_instance1" {
  value = aws_instance.web.public_ip
}


output "publicip_instance2" {
  value = aws_instance.secondweb.public_ip
}
