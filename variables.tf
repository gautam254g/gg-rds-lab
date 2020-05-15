variable "region" {
   }

variable "identifier" {
     description = "Identifier for your DB"
}
variable "apply_immediately" {
 }
variable "engine" {
   description = "Engine type, example values mysql, postgres"
}
variable "engine_version" {
  description = "Engine version"
  }
variable "license_model" {
 }
variable "storage_type" {
 }
variable "allocated_storage" {
  description = "Storage size in GB"
}
variable "instance_class" {
  description = "Instance class"
}
variable "db_name" {
   description = "db name"
}
variable "username" {
   description = "User name"
}
variable "az"{
  }
  variable "multi_az"{
  }
  variable "parameter_group_name" {
  }
  variable  "option_group_name" {
 }
  variable "maintenance_window" {
  }
variable "deletion_protection" {
  }
variable "backup_retention_period" {
  }
variable "cpm_backup" {
}
variable "snapshot_identifier" {
  }
variable "port" {
  }
 