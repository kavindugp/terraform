resource "google_compute_instance" "default" {
name = "test-01"
machine_type = "n1-stanard-1"
zone = "us-east1-b"

boot_disk {
    initialize_params {
        image = "ubuntu-os-cloud/ubuntu-1604-lts"
    }
}

network_interface{
    network =  "default"
}

service_account {
    scopes = ["userinfo-email" , "compute-ro" , "storage-ro"]
}
}
