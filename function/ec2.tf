resource "aws_instance" "terraform" {
   count = length(var.aws_instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    tags=merge(
        var.comman_tags ,
        {
            Name= var.aws_instance_names[count.index]
        }
    )  
}
resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_sshh"
    description = "allow port number 22 for ssh access"
    egress  {
        from_port =0
        to_port=0
        protocol="-1"
        cidr_blocks=["0.0.0.0/0"]
        ipv6_cidr_blocks=["::/0"]
    }
    ingress  {
        from_port=22
        to_port=22
        protocol="tcp"
        cidr_blocks=["0.0.0.0/0"]
        ipv6_cidr_blocks=["::/0"]
    }
    tags = merge(
        var.comman_tags ,{
            Name="allow_sshh"
        }
    )
}