#######################
#--Project variables--#
#######################

# Project name
project_name = "test project"
# Project description
project_desc = "nginx web hosting of static pages"
# Project puprose
project_purp = "web hosting"
# Project environment
project_env  = "production"

#####################
#--Server variables--#
#####################

# Hosthost of server to be deployed
srv_hostname    = "www-1"
# Base image
srv_image       = "centos-7-x64"
# Region
srv_region      = "lon1"
# Droplet size
srv_size        = "s-1vcpu-1gb"
# SSH keys to add to authorized keys for root user
srv_ssh_keys    = [
    "KEY-HERE",
]

########################
#--Firewall variables--#
########################

# Firewall name
firewall_name   = "www-firewall"

# SSH allowed list of IPs
ssh_firewall_allowed = [
    "1.1.1.1",
    "2.2.2.2",
    "3.3.3.3",
]

########################
#--Digital Ocean Tags--#
########################
do_tag = "www"
