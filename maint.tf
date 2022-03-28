terraform {
  required_providers {
    intersight = {
      source = "CiscoDevNet/intersight"
      version = "1.0.26"
    }
  }
}

provider "intersight" {
  apikey = var.apikey
  secretkey = var.secretkey
  endpoint = var.endpoint
}

resource "intersight_server_profile" "srv_PodXX" {
  name   = "srv_PodXX"
  action = "No-op"
  tags {
    key   = "server"
    value = "demo"
  }
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.default.moid
  }
}

resource "intersight_ssh_policy" "ssh_policy_PodXX" {
  name        = "ssh_policy_PodXX"
  description = "ssh policy"
  enabled     = true
  port        = 22
  timeout     = 1800
  organization {
    object_type = "organization.Organization"
    moid        = data.intersight_organization_organization.default.moid
  }
  profiles {
    moid        = intersight_server_profile.srv_PodXX.moid
    object_type = "server.Profile"
  }
}