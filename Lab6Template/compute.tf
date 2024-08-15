resource "aws_instance" "weguideinstance" {
  ami = "ami-0a7cf821b91bcccbc"
  instance_type = "t2.micro"
}

data "template_file" "webserver_policy_template"{

template = "${file("${path.module}/policy.tpl")}"

vars = {
    arn = aws_instance.weguideinstance.arn
  }
}

output "webserver_policy_output" {
  value = data.template_file.webserver_policy_template.rendered
}