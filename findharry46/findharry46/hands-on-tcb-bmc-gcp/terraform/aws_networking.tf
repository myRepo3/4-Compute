/*
 * Copyright 2017 Google Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

/*
 * Terraform networking resources for AWS.
 */

resource "aws_vpc" "tcb-aws-vpc" {
  cidr_block           = var.aws_network_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags = {
    "Name" = "tcb-aws-vpc"
  }
}

resource "aws_subnet" "tcb-aws-subnet1" {
  vpc_id     = aws_vpc.tcb-aws-vpc.id
  cidr_block = var.aws_subnet1_cidr

  tags = {
    Name = "tcb-aws-subnet1"
  }
}

resource "aws_internet_gateway" "aws-vpc-igw" {
  vpc_id = aws_vpc.tcb-aws-vpc.id

  tags = {
    Name = "aws-vpc-igw"
  }
}

/*
 * ----------VPN Connection----------
 */

resource "aws_vpn_gateway" "aws-vpn-gw" {
  vpc_id = aws_vpc.tcb-aws-vpc.id
}

resource "aws_customer_gateway" "aws-cgw-1" {
  bgp_asn    = 65000
  ip_address = google_compute_ha_vpn_gateway.gcp-vpn-gw.vpn_interfaces[0].ip_address
  type       = "ipsec.1"
  tags = {
    "Name" = "aws-customer-gw"
  }
}

resource "aws_customer_gateway" "aws-cgw-2" {
  bgp_asn    = 65000
  ip_address = google_compute_ha_vpn_gateway.gcp-vpn-gw.vpn_interfaces[1].ip_address
  type       = "ipsec.1"
  tags = {
    "Name" = "aws-customer-gw"
  }
}

resource "aws_default_route_table" "tcb-aws-vpc" {
  default_route_table_id = aws_vpc.tcb-aws-vpc.default_route_table_id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.aws-vpc-igw.id
  }
  propagating_vgws = [
    aws_vpn_gateway.aws-vpn-gw.id,
  ]
}

resource "aws_vpn_connection" "aws-vpn-connection1" {
  vpn_gateway_id      = aws_vpn_gateway.aws-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.aws-cgw-1.id
  type                = "ipsec.1"
  static_routes_only  = false
  tags = {
    "Name" = "aws-vpn-connection1"
  }
}

resource "aws_vpn_connection" "aws-vpn-connection2" {
  vpn_gateway_id      = aws_vpn_gateway.aws-vpn-gw.id
  customer_gateway_id = aws_customer_gateway.aws-cgw-2.id
  type                = "ipsec.1"
  static_routes_only  = false
  tags = {
    "Name" = "aws-vpn-connection2"
  }
}