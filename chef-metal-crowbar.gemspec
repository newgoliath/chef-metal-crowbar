# Copyright 2014, Rob Hirschfeld
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#  http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$:.unshift(File.dirname(__FILE__) + '/lib')
require 'chef_metal_crowbar/version'

Gem::Specification.new do |s|
  s.name = 'chef-metal-crowbar'
  s.version = ChefMetalCrowbar::VERSION
  s.platform = Gem::Platform::RUBY
  s.extra_rdoc_files = ['README.md', 'LICENSE' ]
  s.summary = 'Driver for creating Crowbar servers in Chef Metal.'
  s.license = 'Apache 2'
  s.description = s.summary
  s.author = 'Rob Hirschfeld'
  s.email = 'rob@zehicle.com'
  s.homepage = 'https://github.com/opscode/chef-metal-crowbar'

  #s.add_dependency 'chef'
  #s.add_dependency 'cheffish', '>= 0.4'
  s.add_dependency 'chef-metal'

  #s.add_development_dependency 'rspec'
  s.add_development_dependency 'rake'

  s.bindir       = "bin"
  s.executables  = %w( )

  s.require_path = 'lib'
  s.files = %w(Rakefile LICENSE README.md) + Dir.glob("{distro,lib,tasks,spec}/**/*", File::FNM_DOTMATCH).reject {|f| File.directory?(f) }
end
