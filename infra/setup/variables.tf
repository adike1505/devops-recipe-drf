variable "tf_state_bucket" {
  description = "name of s3 bucket that holds TF state"
  default     = "gna-devops-app-tf-state"
}

variable "tf_state_lock_table" {
  description = "name of dynamoDB table that holds TF state lock"
  default     = "gna-devops-app-tf-state-lock"
}

variable "project" {
  description = "project name for tagging resources"
  default     = "devops-recipe-app"
}

variable "contact" {
  description = "contact name for tagging resources"
  default     = "adike1505@gmail.com"
}
