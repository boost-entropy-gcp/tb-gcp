# Copyright 2019 The Tranquility Base Authors
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

host_project_id = "shared-vpc-11111"

service_project_ids = ["infra-services-11111"]

standard_network_subnets = { 
    transit = "10.0.0.0/24"
    itsm = "10.0.1.0/24"
    secrets =  "10.0.2.0/24"
}

create_nat_gateway = true

tags = {
    owner = "example owner"
    environment = "dev"
    terraform = "true"
}