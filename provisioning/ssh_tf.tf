resource "digitalocean_ssh_key" "default" {
  name       = "Deployment SSH Key"
  public_key = file("XXX")
}
