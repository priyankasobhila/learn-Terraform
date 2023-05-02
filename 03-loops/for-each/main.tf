resource  "null_resource" "fruits" {
  //count = length(var.fruits)

  for_each = var.fruits

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key} - ${each.value}"
//    command = "echo ${length(var.fruits)}"
  }

}


//variable "fruits" {
//  default = {
//    apple = {
//      name = "apple"
//      count=10
//    }
//    orange = {
//      name = "orange"
//      count=200
//    }
//    banana = {
//     name = "banana"
//      count=100
//    }

//  }
//}

variable "fruits" {
  default = {
    apple = 10
    orange = 200
    banana = 100

  }
}

variable "vegetables" {
  default = ["carrot", "capsicum"]
}

resource  "null_resource" "vegetables" {

  for_each = toset(var.vegetables)

  provisioner "local-exec" {
    command = "echo Fruit Name - ${each.key}"
  }

}