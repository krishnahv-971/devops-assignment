resource "aws_security_group" "web_sg" {
  name        = "devops-sg"
  description = "Allow SSH and App Port"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 5000
    to_port     = 5000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami                    = "ami-0f58b397bc5c1f2e8"
  instance_type          = "t2.micro"
  security_groups        = [aws_security_group.web_sg.name]

  tags = {
    Name = "devops-assignment-server"
  }
}

resource "aws_s3_bucket" "storage" {
  bucket = "devops-assignment-storage-123456"

  tags = {
    Name = "DevOpsStorage"
  }
}
