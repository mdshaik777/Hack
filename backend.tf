terraform {
  backend "s3" {
    bucket       = "uc-hack-19"
    key          = "uc-hack/statefile.tfstate"
    region       = "us-west-1"
    encrypt      = true
    use_lockfile = true
  }
}

