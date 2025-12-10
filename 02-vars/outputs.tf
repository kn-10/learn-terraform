output "v1" {
  value = var.v1
}

output "First_value_in_List" {
  value = var.v2[0]
}

output "Second_value_in_List" {
  value = var.v2[1]
}

output "Value_in_Map" {
  value = var.v3["abc"]
}

output "Value_in_Map1" {
  value = lookup(var.v3, "abc1", "none")
}

output "Second_Value_in_List" {
  value = element(var.v2, 4)
}

