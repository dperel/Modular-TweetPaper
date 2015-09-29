$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "archive/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "archive"
  s.version     = Archive::VERSION
  s.authors     = ["dperel"]
  s.email       = ["davidperel.pdf@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Archive."
  s.description = "TODO: Description of Archive."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
