variable "v1" {
  default = " Hello Deeksha, Booby Girl"
}

variable "v2" {
  default = ["Hello World", 100, true]
}

variable "v3" {
  default = {
    abc = 100
    xyz = "Two Hundered"
  }
}

variable "fruits" {
  default = {
    apple = {
      price = 10
      quantity = 200
    }
    orange = {
      price = 5
      quantity = 100
    }
  }
}