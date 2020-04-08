variable "vpc_cidr" {
  type = string
}

variable "enable_dns_hostnames" {
  type = bool
}

variable "enable_dns_support" {
  type = bool
}

variable "cidr_public" {
  type = string
}

variable "cidr_private" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "ami" {
  type = string
}

variable "associate_public_ip_address" {
  type = bool
}

variable "key_name" {
  type = string
}

variable "tags" {
  type = object({
    vpc = map(string),
    ig = map(string),
    subnet_prublic = map(string),
    subnet_private = map(string),
    sg = map(string),
    ec2 = map(string)
  })
}

variable "name_role" {
  type = string
  
}

variable "availability_zone" {
  type = string
}
