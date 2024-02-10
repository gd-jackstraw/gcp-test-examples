terraform {
  cloud {
    organization = "gd-jackstraw"

    workspaces {
      name = "gcp-test-examples"
    }
  }
}
