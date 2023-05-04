## Terraform State
variable "region" {
  description = "AWS region the resources will be deployed to"
  type = string
}

variable "role_arn" {
  description = "AWS region the resources will be deployed to"
  type = string
}

## VPC Configuration
variable "vpc_defs" {
  description = "List of VPC definitions to provision"
  type = list
}

## VPC Peering Connections
variable "peering_pairs" {
  description = "List of VPC Tuples to Peer"
  type = map
}

## Common Tags and Resource Name Elements
variable "application" {
  description = "Application Identifier"
  type = string
  default = ""
}

variable "tenant" {
  description = "Tenant Identifier"
  type = string
  default = ""
}

variable "environment" {
  description = "Environment Identifier"
  type = string
  default = ""
}

variable "hz_name" {
  description = "Name of Hosted Zone in Which to Create Subdomain Records"
  type = string
  
}

variable "cert_arn" {
  description = "ARN of Wildcard Certificate for the Account"
  type = string
  
}

## IAM Element Variables

variable "create_iam" {
    description = "Flag Whether to Create IAM Components (IAM User for EC2 Agent, Instance Profile, etc.) - Not Retuired for NExus"
    type = bool
    default = false
}

variable "assumable_roles" {
    description = "List of Roles in Other Accounts that Can Be Assumed by EC2 Slave Agent Insance Profile"
    type = list(string)
    default = []
}

variable "deployment_role_policy" {
    description = "Policy for Sample Assumable Role in Same Account as CI/CD Platform"
    type = string
}

variable "jenkins_master_policy" {
    description = "IAM Policy for Jenkins Master Fargate Task to Stand Up Slave Agents"
    type = string
}

## Common Tags for All Infrastructure Components
variable "common_tags" {
  description = "Common tags applied to all the resources created in this module"
  type        = map(string)
  default     = {}
}