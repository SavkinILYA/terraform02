# variable "vm_web_name" {
#   type    = string
#   default = "netology-develop-platform-web"
# }

variable "vm_web_platform_id" {
  type    = string
  default = "standard-v2"
}

variable "vm_web_image_family" {
  type    = string
  default = "ubuntu-2004-lts"
}

# variable "vm_db_name" {
#   type    = string
#   default = "netology-develop-platform-db"
# }

variable "vm_db_platform_id" {
  type    = string
  default = "standard-v2"
}

variable "vm_db_zone" {
  type    = string
  default = "ru-central1-b"
}

variable "vms_resources" {
  type = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {
    web = {
      cores         = 2
      memory        = 1
      core_fraction = 5
    }
    db = {
      cores         = 2
      memory        = 2
      core_fraction = 20
    }
  }
}

variable "metadata" {
  type = map(string)
  default = {
    serial-port-enable = "1"
    ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINBY5+YPgRGt73SiHyIERMig1Li3mBdwv1B18CG4yVPh savkn13@MacBook-Pro-ILYA.local"
  }
}