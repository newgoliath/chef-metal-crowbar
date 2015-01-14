$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "barclamp_chef_integration/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "barclamp_chef_integration"
  s.version     = BarclampChefIntegration::VERSION
  s.authors     = ["Rob Hirschfeld"]
  s.email       = ["rob@rackn.com"]
  s.homepage    = ""
  s.summary     = "Chef Integrations for Crowbar"
  s.description = ""

  s.files = Dir["{app,config,db,lib}/**/*"] + [ "Rakefile", ]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  # s.add_dependency "jquery-rails"

  # s.add_development_dependency "sqlite3"
end
