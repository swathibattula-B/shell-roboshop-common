output "instance_id" {
    value = aws_instance.this.id
}

output "public_ip"{
    value = aws_public.this.id
}

output "private_ip"{
    value = aws_private.this.id
}