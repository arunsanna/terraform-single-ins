output "jenkins_instace_id" {
	value = "${aws_instance.jenkins_server.id}"
}

output "jenkins_public_ip" {
	value = "${aws_instance.jenkins_server.public_ip}"
}

output "jenkins_public_dns" {
	value = "${aws_instance.jenkins_server.public_dns}"
}

output "security_group_id" {
	value = "${aws_security_group.arun_test_group.id}"
}

output "keypair_name" {
	value = "${aws_instance.jenkins_server.key_name}"
}