provider "aws" {
  access_key = "${var.aws_access_key}"
  secret_key = "${var.aws_secret_key}"
  region     = "${var.region_id}"
}

resource "aws_instance" "example" {
  ami                    = "${var.ami_id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"
}

# The code below will create an implicit dependency on the aws_instance "example"
resource "aws_eip" "ip" {
  instance = "${aws_instance.example.id}"
}

# The code below will create an aws_instance which will explicitly depend on a previously created resource

resource "aws_instance" "example_2" {
  ami                    = "${var.ami_id}"
  instance_type          = "t2.micro"
  vpc_security_group_ids = "${var.vpc_security_group_ids}"

  depends_on = ["aws_instance.example"]
}
