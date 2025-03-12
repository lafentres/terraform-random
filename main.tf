variable "foo_test" {
  type = string
}

resource "random_id" "random" {
  keepers = {
    uuid = uuid()
  }

  byte_length = 12
 
}

output "random" {
  value = random_id.random.hex
}

output "foo-test-str" {
  value = "Hello, ${var.foo_test} & ${random_id.random.hex}!"
}
