terraform {
  cloud {
    organization = "LoudOnCloudTF"

    workspaces {
      name = "devops-aws-myapp-dev"
    }
  }
}
