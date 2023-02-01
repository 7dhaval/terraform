# variable "users" {
#           type = list 
# }

output "print" {
    # enter value in array like ["dhaval", "hello"]
    value = "first user is ${var.users[0]}"
    # the value will be taken as it was dhaval because it will showing index values of 0
    # you can use this type of array variable for assign a Multiple Security Group to one instance  
}



output "hellojoinfunction" {
        value = "${join(",",var.users)}"
        # calling join function 
        # value = "${join("<seprator>", var.users)}"
}

output "helloupperfunction" {
        value = "${upper(var.users[0])}"
        # this will convert the varible in upper case using upper function 
}

output "hellolowerfunction" {
        value = "${lower(var.users[0])}"
        # this will convert the varible in lower case using lower function 
}


output "hellotitlefunction" {
        value = "${title(var.users[0])}"
        # this will convert the first letter upper case using the title function
}