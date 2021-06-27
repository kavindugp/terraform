variable "path" {default = "/root/terraform/access-key"}

provider "google" {
    project = "neon-infinity-233017"
    region = "us-east1-b"
    credintials = "${file("${var.path}/secrets.json")}"

}
