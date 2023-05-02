provider "random" {
}

resource "random_integer" "number" {
  min = 1
  max = 4999
}

output "random_number" {
    value = random_integer.number.id
}
