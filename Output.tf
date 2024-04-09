output Output_PublicIP {
    description = "This variable is having Public IP address"
    value = resource.aws_instance.example.public_ip
}