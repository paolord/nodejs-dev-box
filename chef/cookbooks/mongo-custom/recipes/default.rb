#
# Cookbook Name:: mongo-custom
# Recipe:: mongo
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
#

apt_repository "mongodb" do
	uri "http://downloads-distro.mongodb.org/repo/ubuntu-upstart"
	distribution "dist"
	components ["10gen"]
	keyserver "keyserver.ubuntu.com"
	key "7F0CEB10"
end

apt_package "mongodb-10gen" do
	action :install
end