terraform {
  cloud {
    organization = "kmccorp-tfc"

    workspaces {
      name = "TFCloud-VCS-Aliyun"
    }
  }

  
}