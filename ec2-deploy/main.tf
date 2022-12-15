provider "aws" {
   region     = "us-east-2"
}

resource "aws_instance" "rolex" {
   count         = 2
   ami           = "ami-097a2df4ac947655f"
   associate_public_ip_address = true 
   instance_type = "t2.micro"
   subnet_id     = "subnet-00dcba38b70714f5c"  
   vpc_security_group_ids = ["sg-0e1f76f6e10c538a8"]
   key_name = "project-2-keypair" 

     tags = {
        Name = "bruh"
  }
}
