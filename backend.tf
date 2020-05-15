terraform{
    backend s3 {
        bucket = "gg-tfstate"
        key    = "gg-remote.tfstate"
        region = "us-east-1"
        }

}