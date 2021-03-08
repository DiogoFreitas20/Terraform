# aws_instance.instance:
resource "aws_instance" "instance" {
  ami = "ami-042e8287309f5df03"
  count = 5
  associate_public_ip_address = true
  instance_type = "t2.micro"
  key_name = "GRSI-EMAIL-TESTE"
  source_dest_check = true
  tags = {
    Name = "Client${count.index}"
  }
  vpc_security_group_ids = [
    aws_security_group.instance.id,
  ]
}

# aws_security_group.instance:
resource "aws_security_group" "instance" {
  egress = [
    {
      cidr_blocks = [
        "0.0.0.0/0",
      ]
      description = ""
      from_port = 0
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      protocol = "-1"
      security_groups = []
      self = false
      to_port = 0
    },
  ]
  ingress = [
    {
      cidr_blocks = [
        "172.31.86.62/32",
      ]
      description = ""
      from_port = 22
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      protocol = "tcp"
      security_groups = []
      self = false
      to_port = 22
    },
    {
      cidr_blocks = [
        "83.240.158.54/32",
      ]
      description = ""
      from_port = 0
      ipv6_cidr_blocks = []
      prefix_list_ids = []
      protocol = "-1"
      security_groups = []
      self = false
      to_port = 0
    },
  ]
  name = "client-security-group"
}
