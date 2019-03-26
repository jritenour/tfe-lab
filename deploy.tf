resource "openstack_compute_instance_v2" "my_instance" {
  name      = "tf_instance"
  region    = "RegionOne"
  image_id  = "933c97f4-6542-419b-9722-1814610ece23"
  flavor_id = "3"
  key_pair  = "jrmac"

  network {
    uuid = "10ef02a1-3bed-4613-aabb-cb2c95b0d53a"
    name = "private_network"
  }
}

resource "openstack_networking_floatingip_v2" "float1" {
  pool = "external_network"
  region = "RegionOne"
}

resource "openstack_compute_floatingip_associate_v2" "float1" {
  floating_ip = "${openstack_networking_floatingip_v2.float1.address}"
  instance_id = "${openstack_compute_instance_v2.my_instance.id}"
  region = "RegionOne"
}
