resource "digitalocean_project" "www" {
    name        = var.project_name
    description = var.project_desc
    purpose     = var.project_purp
    environment = var.project_env
    resources   = ["${digitalocean_droplet.www.urn}"]
}