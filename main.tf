 --- Terraform provider ---
  2 terraform { --- Terraform provider ---
  2 terraform {
  3   required_version = ">= 1.0" --- Terraform provider ---
  2 terraform {
  3   required_version = ">= 1.0"
  4   required_providers {terraform {
  3   required_version = ">= 1.0"
  4   required_providers {
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
"main.tf" 128L, 2436B                                                                                                                                         1,1           Top
  4   required_providers {
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
"main.tf" 128L, 2436B                                                                                                                                         1,1           Top
  3   required_version = ">= 1.0"
  4   required_providers { --- Terraform provider ---
  2 terraform {
  3   required_version = ">= 1.0"
  4   required_providers {
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
"main.tf" 128L, 2436B                                                                                                                                         1,1           Top
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region --- Terraform provider ---
  2 terraform {
  3   required_version = ">= 1.0"
  4   required_providers {
  5     aws = {
  6       source  = "hashicorp/aws"
  7       version = "~> 5.0"
  8     }
  9   }
 10 }
 11 
 12 provider "aws" {
 13   region = var.aws_region
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
"main.tf" 128L, 2436B                                                                                                                                         1,1           Top
 14 }
 15 
 16 # --- Dernière AMI Amazon Linux 2 ---
 17 data "aws_ami" "amazon_linux" {
 18   most_recent = true
 19   owners      = ["amazon"]
 20 
 21   filter {
 22     name   = "name"
 23     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
 24   }
 25 }
 26 
 27 # --- VPC ---
 28 resource "aws_vpc" "main" {
 29   cidr_block           = "10.0.0.0/16"
 30   enable_dns_hostnames = true
 31   enable_dns_support   = true
 32 
 33   tags = {
 34     Name = "vpc-terraform"
 35   }
 36 }
 37 
"main.tf" 128L, 2436B                                                                                                                                         1,1           Top
