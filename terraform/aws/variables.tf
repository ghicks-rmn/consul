variable "ami" {
    default = {
        us-east-1 = "ami-3acc7a52"
        us-west-2 = "ami-37501207"
        us-west-1 = "ami-a7515ae2"
    }
}

variable "key_name" {
    description = "SSH key name in your AWS account for AWS instances."
}

variable "key_path" {
    description = "Path to the private key specified by key_name."
}

variable "region" {
    default = "us-east-1"
    description = "The region of AWS, for AMI lookups."
}

variable "servers" {
    default = "3"
    description = "The number of Consul servers to launch."
}

variable "name" {
    default = ""
    description = "The 'Name:' tag to apply to instances."
}

variable "security_group" {
    default = "consul"
    description = "The security group to launch instances into (and create if necessary)."
}

variable "ssh_entry_point" {
    default = "0.0.0.0/0"
    description = "An IP range to enable SSH access from."
}

variable "instance_type" {
    default = "m1.small"
    description = "The AWS instance size to use."
}
