resource "aws_instance" "namenode" {
  ami                    = "ami-011c99152163a87ae"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-030b276b"
  vpc_security_group_ids = ["sg-01471592f75c11f14"]
  key_name               = "MRCLUSTERHDFSCLUSTER"
}
resource "aws_instance" "datanode" {
  ami                    = "ami-011c99152163a87ae"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-030b276b"
  vpc_security_group_ids = ["sg-01471592f75c11f14"]
  key_name               = "MRCLUSTERHDFSCLUSTER"
}


resource "aws_instance" "jobtracker" {
  ami                    = "ami-011c99152163a87ae"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-030b276b"
  vpc_security_group_ids = ["sg-01471592f75c11f14"]
  key_name               = "MRCLUSTERHDFSCLUSTER"
}


resource "aws_instance" "tasktracker" {
  ami                    = "ami-011c99152163a87ae"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-030b276b"
  vpc_security_group_ids = ["sg-01471592f75c11f14"]
  key_name               = "MRCLUSTERHDFSCLUSTER"
}


resource "aws_instance" "client" {
  ami                    = "ami-011c99152163a87ae"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-030b276b"
  vpc_security_group_ids = ["sg-01471592f75c11f14"]
  key_name               = "MRCLUSTERHDFSCLUSTER"
}




