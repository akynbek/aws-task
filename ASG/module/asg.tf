data "template_file" "init" {
  template = "${file("${path.module}/apache.sh")}"
}

resource "aws_launch_template" "example" {
  name_prefix = "example"

  image_id = "${data.aws_ami.image.id}"

  instance_type          = "t2.micro"
  key_name               = "${aws_key_pair.us-east-1-key.key_name}"
  vpc_security_group_ids = ["${aws_security_group.asg-sec-group.id}"]
  user_data              = "${base64encode(data.template_file.init.rendered)}"
}

resource "aws_autoscaling_group" "example" {
  vpc_zone_identifier  = ["${aws_subnet.public1.id}", "${aws_subnet.public2.id}"]



  desired_capacity = "${var.desired_capacity}"

  max_size = "${var.max_size}"

  min_size = "${var.min_size}"

  mixed_instances_policy {
    launch_template {
      launch_template_specification {
        launch_template_id = "${aws_launch_template.example.id}"
      }

      override {
        instance_type = "t2.small"

        weighted_capacity = "3"
      }

      override {
        instance_type     = "t2.medium"
        weighted_capacity = "2"
      }
    }
  }
}
