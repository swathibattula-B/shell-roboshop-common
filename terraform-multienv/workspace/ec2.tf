resource  "aws_instance" "my_ec2"{
  ami = local.ami_id
  instance_type = lookup(var.instance_type,local.environment)
  vpc_security_group_ids = [aws_security_group.sg.id]

  tags = {
    Name = "${var.project}-${local.environment}"
    project = "robooshop"
    Environment = local.environment
  }
}

resource "aws_security_group" "sg"{
  name = "allow-all-terraform-${local.environment}"
  description = "all_all_ports"
  
  egress {
    
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]

  }
  ingress{
    from_port = 0
    to_port = 0
    protocol ="-1"
    cidr_blocks = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
  tags = {
    Name = "allow-all-terraform-${local.environment}"

  }

  lifecycle {
    create_before_destroy = true
  }
}