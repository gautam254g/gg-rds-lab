resource "aws_db_option_group" "rds-options-grp" {
  name                     = "gg-rds-s3"
  option_group_description = "S3 Integration"
  engine_name              = "oracle-ee"
  major_engine_version     = "12.2"

    option {
    option_name                    = "S3_INTEGRATION"
    port                           = 0
    version                        = "1.0"
  }

 
  option {
    option_name                    = "TDE"
    port                           = 0
   }
 
  option {
    option_name                    = "STATSPACK"
    port                           = 0
   }

}