variable  "project" {
    type = string  
}

variable "environment" {
    type = string
}

variable "instance_type" {
    type = string
}
variable "ami_id" {
    type = string
}

variable "sg_id" {
    type = list(string)
}

variable "tags" {
    type = map
    default = {}    
}

