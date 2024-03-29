# Nginx Web Hosting 

Deploy a single Nginx web server, firewall inside a new project. Nginx is configured
to host static pages.

## Requirements
- Terraform 0.12.*
- Ansible 2.8.*

## How to use
1. Configure your Terraform variables in terraform/terraform.tfvars
   - Be sure to add your egress IP for ssh access to host
   - Be sure to use the fingerprint of the ssh key on your account
2. Configure Ansible variables in role vars files
   - Copy the public key for the new Linux user to roles/users/files and modify variables if you wish.
3. Copy contents of your site/sites to ansible/roles/files/www/name_of_site
   - Modify ansible/roles/nginx/conf/virtual.conf to reflect new site/sites.
   - Add each new site to the 'sites' list in ansible/roles/nginx/vars/main.yml
4. Export your Digital Ocean token as environment variable 'DO_API_KEY'. 
   - E.g: export DO_API_KEY='4qlwkejrgj90jblahblahblah'
5. Run 'make nginx' from root directory