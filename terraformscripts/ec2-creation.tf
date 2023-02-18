provider "aws"{
region = "eu-west-1"
}

resource "aws_instance" "EC2Instance"{
  count = 1
  ami = "ami-0f7358877f243c5c7"
  instance_type = "t2.micro"
  key_name = "mykp1"
  security_groups = ["launch-wizard-1"]
  tags = {
    Name = "tsttomserv"
  }

}
