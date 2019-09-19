resource "digitalocean_droplet" "www" {
    image    = var.srv_image
    name     = var.srv_hostname
    region   = var.srv_region
    size     = var.srv_size
    ssh_keys = var.srv_ssh_keys
    tags     = ["${digitalocean_tag.www.id}"]
}