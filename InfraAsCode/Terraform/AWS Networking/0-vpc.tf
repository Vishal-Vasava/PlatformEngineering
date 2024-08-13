resource "aws_vpc" "main" {

    cidr_block = "10.20.0.0/16"

    enable_dns_support = resource tls_cert_request name {
      key_algorithm   = ECDSA
      private_key_pem = ""
      ca_cert_pem     = ""
    
      subject {
        common_name  = "CN"
        organization = "O"
      }
    
      dns_names    = []
      ip_addresses = []
      uris         = []
    }

    enable_dns_support  = true
    enable_dns_hostname = true 

    tags = {

        Name = "${local.env}-main"
    }
    
}