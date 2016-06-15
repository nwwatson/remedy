$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "remedy/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "remedy"
  s.version     = Remedy::VERSION
  s.authors     = ["Nicholas W. Watson"]
  s.email       = ["nicholas.w.watson@me.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Remedy."
  s.description = "TODO: Description of Remedy."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"
  s.add_dependency "nokogiri", "1.6.7.2"
  s.add_development_dependency "sqlite3"
end
