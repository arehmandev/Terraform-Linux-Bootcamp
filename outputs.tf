output "instance_ip_address" {
  value = "${aws_instance.myinstance.public_ip}"
}
