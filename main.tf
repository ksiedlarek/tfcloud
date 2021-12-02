resource "random_pet" "name" {
    length = 2
}

resource "google_compute_network" "vpc_network" {
  name = random_pet.name.id
  description = "random vpc for testing"
}
