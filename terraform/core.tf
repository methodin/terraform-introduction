variable "access_key" { default = "" }
variable "secret_key" { default = "" }
variable "profile" { default = "default" }
variable "region" { default = "us-east-1" }

data "aws_caller_identity" "current" {}

resource "random_uuid" "test" { }

provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  profile    = "${var.profile}"
  region     = "${var.region}"
}
