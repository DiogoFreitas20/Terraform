variable "key_name" {
  default = "GRSI-EMAIL-TESTE"
}



variable "volume_tags" {
  type = map(string)
  default = {
    Ano = "2021"
    Curso = "Server"
  }
}

variable "tags1" {
  type = map(string)
  default = {
    Ano = "2021"
    Curso = "CLIENTE"
    Name = "CLIENTE"
  }
}

variable "volume_tags1" {
  type = map(string)
  default = {
    Ano = "CLIENTE"
    Curso = "CLIENTE"
  }
}

variable "sec_group_name" {
  default = "TF-GROUP"
}


variable "sec_group_description" {
  default = "TF-GROUP"
}

variable "instance_count" {
  default = "5"
}

variable "CLI" {
  default = "./client.sh"
}

variable "volume_size" {
  default = 30
}


variable "ip_list" {
  description = "Allowed IPs"
  type = list(string)
  default = [
    "0.0.0.0/0",
  ]
}

variable "port_list" {
  description = "Allowed ports"
  type = list(number)
  default = [
    22,
    80,
  ]
}
