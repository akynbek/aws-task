variable "region" {}
variable "image_owner" {}
variable "desired_capacity" {}

variable "max_size" {}

variable "min_size" {}

variable "cidr_block" {}
variable "public_cidr_block1" {}
variable "public_cidr_block2" {}
variable "public_cidr_block3" {}

variable "private_cidr_block1" {}
variable "private_cidr_block2" {}
variable "private_cidr_block3" {}

variable "tags" {
  type = "map"
}