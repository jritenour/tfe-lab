variable "openstack_user_name" {
    description = "The username for the Tenant."
}

variable "openstack_tenant_name" {
    description = "The name of the Tenant."
}

variable "openstack_password" {
    description = "The password for the Tenant."
}

variable "openstack_auth_url" {
    description = "The endpoint url to connect to OpenStack."
}

variable "openstack_region" {
   description = "Region name, for v3 keystone auth"
}
