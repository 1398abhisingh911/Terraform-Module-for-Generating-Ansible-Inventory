resource "local_file" "AnsibleInventory" {
  content = templatefile("inventory.tmpl",
    {
      public-ip-namenode    = aws_instance.namenode.public_ip
      public-ip-datanode    = aws_instance.datanode.public_ip
      public-ip-jobtracker  = aws_instance.jobtracker.public_ip
      public-ip-tasktracker = aws_instance.tasktracker.public_ip
      public-ip-client      = aws_instance.client.public_ip

    }
  )
  filename = "inventory.txt"
}

resource "null_resource" "cluster" {
  depends_on = [
    local_file.AnsibleInventory,
  ]
  provisioner "file" {
    source      = "C:/INTERN/ARTH/Terraform/TERRAFORM+ANSIBLE/inventory.txt"
    destination = "inventory.txt"

    connection {
      type     = "ssh"
      user     = "root"
      password = "redhat"
      host     = "192.168.218.6"
    }
  }


}
