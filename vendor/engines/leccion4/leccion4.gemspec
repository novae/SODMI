$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "leccion4/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "leccion4"
  s.version     = Leccion4::VERSION
  s.authors     = ["TODO: IvanSnek-JC"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Leccion4."
  s.description = "TODO: Description of Leccion4."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "jquery-rails"
  s.add_development_dependency "sass-rails",   "~> 3.2.5"
  s.add_dependency "coffee-rails", "~> 3.2.2"
  s.add_dependency "jquery-ui-rails"
  s.add_dependency "underscore-rails"
  s.add_dependency "zurb-foundation"
  s.add_dependency "compass-rails"
  s.add_dependency "uglifier",">= 1.0.3"
  s.add_dependency "gon","3.0.5"
  s.add_development_dependency "mysql2"
end
