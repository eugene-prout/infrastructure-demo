resource "digitalocean_project" "XXX" {
  name        = "XXX"
  description = "XXX"
  purpose     = "XXX"
  environment = "XXX"
  resources = [
    digitalocean_droplet.XXX.urn
  ]
  is_default = true
}

resource "digitalocean_droplet" "XXX" {
  image    = "ubuntu-22-04-x64"
  name     = "XXX"
  region   = "lon1"
  size     = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.default.fingerprint]
}

resource "digitalocean_reserved_ip" "XXX" {
  droplet_id = digitalocean_droplet.XXX.id
  region     = digitalocean_droplet.XXX.region
}
