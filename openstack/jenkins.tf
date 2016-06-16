# Configure the OpenStack Provider
provider "openstack" {
    user_name  = "admin"
    tenant_name = "admin"
    password  = "secret"
    auth_url  = "http://10.1.1.20:5000/"
}

# Create a web server
resource "openstack_compute_instance_v2" "jenkins-master" {
  name = "jenkins_master"
}
