variable srv_hostname {
    default = "www-1"
}

variable srv_image {
    default = "centos-7-x64"
}

variable srv_region {
    default = "lon1"
}

variable srv_size {
    default = "s-1vcpu-1gb"
}

variable srv_ssh_keys {}

variable do_tag {
    default = "wwwww"
}

variable firewall_name {
    default = "www-firewall"
}

variable ssh_firewall_allowed {}

variable project_name {
    default = "www-hosting"
}

variable project_desc {
    default = "A project to host static websites"
}

variable project_purp {
    default = "web hosting"
}

variable project_env {
    default = "production"
}