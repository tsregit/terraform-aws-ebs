  
resource "aws_instance" "this" {
  instance_type = var.instance_type
  ami           = var.ami
  iam_instance_profile = var.name_role
  subnet_id     = aws_subnet.this_public.id
  associate_public_ip_address = var.associate_public_ip_address
  vpc_security_group_ids = [aws_security_group.this.id]
  key_name      =  var.key_name 
  tags          =  var.tags.ec2
}