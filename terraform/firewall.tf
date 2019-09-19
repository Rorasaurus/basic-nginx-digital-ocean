resource "digitalocean_firewall" "nginx" {
  name                  = var.firewall_name
  
  tags = ["${digitalocean_tag.www.id}"]
  
  inbound_rule {
    protocol           = "tcp"
    port_range         = "22"
    source_addresses   = var.ssh_firewall_allowed
  }
  
  inbound_rule {
    protocol           = "tcp"
    port_range         = "80"
    source_addresses   = ["0.0.0.0/0", "::/0"]
  }
  
  inbound_rule {
    protocol           = "icmp"
    source_addresses   = ["0.0.0.0/0", "::/0"]
  }
  
  outbound_rule {
    protocol                = "tcp"
    port_range              = "1-65535"
    destination_addresses   = ["0.0.0.0/0", "::/0"]
  }
  
  outbound_rule {
    protocol                = "udp"
    port_range              = "1-65535"
    destination_addresses   = ["0.0.0.0/0", "::/0"]
  }
  
}