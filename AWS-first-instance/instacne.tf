resource "aws_key_pair" "keypair-name" {
  key_name   = "deployer-key"
  public_key = file("${path.module}/id_rsa.pub")
}


resource "aws_security_group" "allow_tls" {
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"

  dynamic "ingress" {
    for_each = [80, 443, 27017, 3306]
    iterator = port
    content {
      description = "TLS from VPC"
      from_port   = port.value
      to_port     = port.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

output "securityGroupDetails" {
  value = aws_security_group.allow_tls
}

resource "aws_instance" "this" {
  ami             = "ami-0dcc1e21636832c5d"
  instance_type   = "m5.large"
  key_name        = aws_key_pair.keypair-name
  security_groups = ["${aws_security_group.allow_tls}"]
  tenancy         = "host"
}