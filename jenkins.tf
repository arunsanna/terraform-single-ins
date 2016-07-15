resource "aws_security_group" "arun_test_group" {
	name = "REAN-Herndon-Only"
	description = "allows traffic from rean head office"
	vpc_id = "${var.vpc_id}"

	ingress {
		from_port = 22
		to_port = 22
		protocol = "tcp"
		cidr_blocks = ["184.191.212.25/32"]
	}

	ingress {
		from_port = 8080
		to_port = 8080
		protocol = "tcp"
		cidr_blocks = ["184.191.212.25/32"]
	}

	egress {
      from_port = 0
      to_port = 0
      protocol = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }	
}

resource "aws_instance" "jenkins_server" {
	ami = "${var.source_ami}"

	subnet_id = "${var.subnet_id}"
	associate_public_ip_address =  true
	iam_instance_profile =  "${var.iam_role}"
	security_groups = ["${aws_security_group.arun_test_group.id}"]
	instance_type = "${var.instance_type}"
	key_name = "${var.aws_key_pair}"
	tags {
		Name = "${var.name_tag}"
		Owner = "${var.owner_tag}"
		Service = "${var.service_tag}"
		Expiration_Date = "${var.expiration_tag}"
	}
	root_block_device {
		volume_size =  30
		volume_type =  "${var.volume_type}"
	}
}

