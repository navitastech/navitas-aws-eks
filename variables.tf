# Project
variable "unique_id" {
  description = "A unique identifier for naming resources."
}

variable "create_lc" {
  description = "Count of ASGs"
  default     = 1
}

variable "create_asg" {
  description = "Count of ASGs"
  default     = 1
}

# Tags
variable "asv" {
  description = "Corresponds to ASV tag."
  default     = "ASVNAVITAS"
}

variable "KubernetesCluster" {
  description = "The cluster tag for EBS dynamic provisioning."
}

variable "project" {
  description = "The project for which the ASG is in use for."
}

variable "cmdb_environment" {
  description = "Corresponds to CMDBEnvironment tag."
}

variable "owner_contact" {
  description = "Corresponds to OwnerContact tag. Valid C1 email address."
  default     = "gude.ravi@gmail.com"
}

variable "kubernetes_version" {
  description = "Version of kubernetes we want to install."
  default     = "v1.8.3"
}

variable "role" {
  description = "Role of node for Kubernetes cluster"
}

variable "owner_eid" {
  description = "OwnerEID for objects in this template."
  default     = "gude.ravi@gmail.com"
}

variable "custodian_offhours_tag" {
  description = "Cloud custodian offhours tag name"
  default     = "off"
}

variable "custodian_offhours" {
  description = "Cloud custodian offhours tag."
  default     = "off"
}

variable "kubernetes_pod_cluster_dns" {
  description = "Cluster DNS ip."
  default     = "10.0.0.2"
}

variable "kubernetes_pod_cluster_cidr" {
  description = "Cluster Cidr for pods."
  default     = "10.10.0.0/16"
}

variable "kubernetes_service_cluster_cidr" {
  description = "Cluster Cidr for services"
  default     = "10.0.0.0/16"
}

# AWS Provider
variable "region" {
  description = "The region where AWS operations will take place."
  default     = "us-east-1"
}

# Launch Configuration
variable "user_data" {
  description = "Launch configuration startup script location."
  default     = ""
}

variable "ebs_block_device" {
  description = "Additional EBS block devices to attach to the instance"
  type        = "list"
  default     = []
}

# Variables for Defining Instances in Auto Scaling Group
variable "ami_id" {
  description = "The base AMI to launch instances."
}

variable "instance_type" {
  description = "The instance type/size to launch."
  default     = "t2.micro"
}

variable "iam_instance_profile" {
  description = "The role you want assigned to your instances."
}

variable "key_name" {
  description = "This is the name of your pem file. Specify this so you can SSH into the machine(s)."
  default     = ""
}

variable "security_groups" {
  description = "The security groups for the EC2 instances."
  type        = "list"
}

# Variables for ASG resource
variable "availability_zones" {
  description = "List of availability zones for EC2 Tier."
  type        = "list"
}

variable "subnet_ids" {
  description = "List of subnets associated with the instances."
  type        = "list"
}

variable "desired_capacity" {
  description = "The desired number of instances in your auto scaling group"
  default     = 1
}

variable "min_size" {
  description = "The minimum number of instances in your auto scaling group."
  default     = 1
}

variable "max_size" {
  description = "The maximum number of instances in your auto scaling group."
  default     = 1
}

variable "load_balancers" {
  description = "The name of the load balancer that this auto scaling group is connected to."
  type        = "list"
  default     = []
}
