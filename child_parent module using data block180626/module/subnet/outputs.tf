output "subnet_ids" {
  # Yeh code saare subnets ki IDs ko ek map {"subnet_name" = "subnet_id"} ke roop mein export karega
  value = { for k, v in azurerm_subnet.example : v.name => v.id }
}
