resource "aws_key_pair" "auth" {
  key_name   = "${var.key_name}"
  public_key = "${file("${path.cwd}/Keys/demokey.pub")}"
}

resource "aws_instance" "myinstance" {
  count                       = "1"
  ami                         = "${data.aws_ami.amazon.id}"
  instance_type               = "${var.instance_size}"
  associate_public_ip_address = "true"
  user_data                   = "${data.template_file.node.rendered}"
  security_groups             = ["${aws_security_group.node.name}"]
  key_name                    = "${var.key_name}"

  tags {
    Name = "${var.instance_name}"
  }
}
