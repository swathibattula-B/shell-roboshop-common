locals {
    environment = var.environment
    instance_type = var.instance_type
    project = var.project
    common_tags ={
        project = var.project
        environment = var.environment
        terraform = "true"
    }

    final_ec2_tags= merge(var.tags ,local.common_tags)
}