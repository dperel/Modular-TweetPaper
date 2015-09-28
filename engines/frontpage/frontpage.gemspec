$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "frontpage/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "frontpage"
  s.version     = Frontpage::VERSION
  s.authors     = ["dperel"]
  s.email       = ["d@gmail.com"]
  s.homepage    = "http://github.com/dperel"
  s.summary     = "Rails engine powering Frontpage section of app "
  s.description = "Will contain an articles controller to correspond to the Article object that is migrated in the database of the shell app."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"

  s.add_development_dependency "sqlite3"
end
