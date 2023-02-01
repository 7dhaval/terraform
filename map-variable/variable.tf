variable "usersage" {
    type = map
    default = {
        dhaval = 21
        Aqua = 22
    }
}
variable "username" {
    type = string
}

//lookup function lookup retrieves the value of a single element from a map, given its key. If the given key does not exist, the given default value is returned instead.
//def : lookup(map, key, default)
output "users" {
        value = "my name is ${var.username} and my age is ${lookup(var.usersage, "${var.username}")}"
}