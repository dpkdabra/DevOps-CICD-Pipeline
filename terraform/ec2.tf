resource "aws_instance" "jenkins_server" {
  ami           = "ami-0f58b397bc5c1f2e8" # Amazon Linux 2023 (ap-south-1)
  instance_type = "t3.micro"

  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.jenkins_sg.id]

  associate_public_ip_address = true

  key_name = "deepak" # Your existing EC2 Key Pair

  tags = {
    Name = "DevOps-CICD-Terraform-Server"
  }
}