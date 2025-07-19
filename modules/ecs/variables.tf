variable "project_name" {
  type        = string
}

variable "environment" {
  type        = string
}

variable "vpc_id" {
  type        = string
}

variable "private_subnets" {
  type        = list(string)
}

variable "ecs_security_group_id" {
  type        = string
}

variable "task_execution_role_arn" {
  type        = string
}

variable "task_role_arn" {
  type        = string
}

variable "ecr_patient_repo_url" {
  type        = string
}

variable "ecr_appointment_repo_url" {
  type        = string
}

variable "target_group_arns" {
  type = object({
    patient_service     = string
    appointment_service = string
  })
}

variable "container_cpu" {
  type        = number
  default     = 256
}

variable "container_memory" {
  type        = number
  default     = 512
}

variable "app_port" {
  type        = number
  default     = 3000
}

variable "desired_capacity" {
  type        = number
  default     = 1
}