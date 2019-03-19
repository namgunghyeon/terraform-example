module "credentials" {
  source = "../modules/credentials"
}

provider "aws" {
  access_key = "${module.credentials.access_key}"
  secret_key = "${module.credentials.secret_key}"
  region = "ap-northeast-2"
}