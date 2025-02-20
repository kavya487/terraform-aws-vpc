variable "project_name" {

}
variable "vpc_cidr" {
    
}

variable "enable_dns_hostnames" {
    default = true
}

variable "environment" {

}

variable "common_tags" {
    type = map
    default = {}
}

variable "vpc_tags" {
    default = {}
}

variable "igw_tags" {
    default = {}
}

variable "public_subnet_cidrs" {
    type =  list
    validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "please provide 2 public subnet ids"
  
}
}

variable "public_subnet_tags" {
    default = {}
}

variable "private_subnet_cidrs" {
    type =  list
    validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "please provide 2 private subnet ids"
  
}
}

variable "private_subnet_tags" {
    default = {}
}



variable "database_subnet_cidrs" {
    type =  list
    validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "please provide 2 database subnet ids"
  
}
}

variable "database_subnet_tags" {
    default = {}
}

variable "aws_nat_gateway_tags" {
    default = {}
}

variable "public_aws_route_tags" {
    default = {}
}

variable "private_aws_route_tags" {
    default = {}
}

variable "database_aws_route_tags" {
    default = {}
}