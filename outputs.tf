output "address_aws_instance_example" {
  value = "${aws_instance.example.public_ip}"
}

output "address_aws_instance_example_2" {
  value = "${aws_instance.example_2.public_ip}"
}
