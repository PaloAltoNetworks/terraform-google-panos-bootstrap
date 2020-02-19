############################################################################################
# Copyright 2020 Palo Alto Networks.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
############################################################################################


// BOOTSTRAP Variables

variable "bootstrap_project" {
  description = "The GCP project in which to deploy the bootstrap bucket"
  type        = string
}

variable "bootstrap_region" {
  description = "The GCP region in which to deploy the bootstrap bucket"
  type        = string
}

variable "bootstrap_directories" {
  description = "The directories comprising the bootstrap package"
  default = [
    "config/",
    "content/",
    "software/",
    "license/",
    "plugins/"
  ]
}

variable "hostname" {
  description = "The hostname of the VM-series instance"
  type = string
}

variable "panorama-server" {
  description = "The FQDN or IP address of the primary Panorama server"
  type = string
}

variable "panorama-server2" {
  description = "The FQDN or IP address of the secondary Panorama server"
  type = string
}

variable "tplname" {
  description = "The Panorama template stack name"
  type = string
}

variable = "dgname" {
  description = "The Panorama device group name"
  type = string
}

variable = "vm-auth-key" {
  description = "Virtual machine authentication key"
  type = string
}

variable = "op-command-modes" {
  description = "Set jumbo-frame and/or mgmt-interface-swap"
}