variable "region" {
  description = "The AWS region to create resources in"
  type        = string
  default     =  "ap-south-1"
}

variable "ami" {
  description = "The AMI ID to use for the instance"
  type        = string
  default     = "ami-05e00961530ae1b55"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
  default     = "netflix"
}

variable "instance_large_type" {
  description = "The instance type for the large instance"
  type        = string
  default     = "t2.large"
}

variable "instance_medium_type" {
  description = "The instance type for the medium instance"
  type        = string
  default     = "t2.medium"
}

variable "volume_size" {
  description = "The size of the root volume"
  type        = number
  default     = 60
}
