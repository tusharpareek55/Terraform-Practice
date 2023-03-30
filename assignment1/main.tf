resource "local_file" "file1" {
    filename = "first.txt"
    content = "${random_id.random.dec}"
  
}

resource "local_file" "file2" {
    filename = "second.txt"
    content = local.con
  
}

locals {
  con = "Hello World"
}

resource "random_id" "random" {
    byte_length = 8
  
}