variable "instances" {
    type = map
    default = {
        mysql = "t3.small"
        backend = "t3.micro"
        frontend = "t3.micro"
    }
}
variable "domain_name" {
    default = "daws23d.online"
  
}
variable "zone_id" {
    default = "Z09594219FUPTH0NLNIL"
  
}
variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
  
}
