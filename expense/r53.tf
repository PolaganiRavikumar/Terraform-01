resource "aws_route53_record" "expense" {
     count = length(var.aws_instance_names)
     zone_id = var.zone_id
     name="${var.aws_instance_names[count.index]}.${var.domain_name}"
     type="A"
     ttl=1
     records= [aws_instance.expense[count.index].private_ip]
     allow_overwrite = "true"
     }     