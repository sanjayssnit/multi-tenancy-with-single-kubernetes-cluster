variable "aws_region" {
  description = "AWS Region"
  type        = string
  default     = "us-west-2"
}

variable "vpc_name" {
  description = "VPC name"
  type        = string
  default     = "multi-tenant-vpc"
}

variable "vpc_cidr" {
  description = "VPC CIDR block"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnets" {
  description = "List of public subnet CIDRs"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "private_subnets" {
  description = "List of private subnet CIDRs"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-west-2a", "us-west-2b"]
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "multi-tenant-eks"
}

variable "cluster_version" {
  description = "EKS cluster version"
  type        = string
  default     = "1.21"
}

variable "node_role_arn_a" {
  description = "IAM role ARN for tenant A node group"
  type        = string
}

variable "node_role_arn_b" {
  description = "IAM role ARN for tenant B node group"
  type        = string
}

variable "instance_type_a" {
  description = "EC2 instance type for tenant A node group"
  type        = string
  default     = "t3.medium"
}

variable "instance_type_b" {
  description = "EC2 instance type for tenant B node group"
  type        = string
  default     = "t3.large"
}

variable "desired_size" {
  description = "Desired capacity for node groups"
  type        = number
  default     = 2
}

variable "min_size" {
  description = "Minimum capacity for node groups"
  type        = number
  default     = 1
}

variable "max_size" {
  description = "Maximum capacity for node groups"
  type        = number
  default     = 3
}
