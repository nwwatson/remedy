$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'remedy/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'remedy'
  s.version     = Remedy::VERSION
  s.authors     = ['Nicholas W. Watson']
  s.email       = ['nicholas.w.watson@me.com']
  s.homepage    = 'https://github.com/nwwatson/remedy'
  s.summary     = 'Provides FAQs, help documents, videos and submits Zendesk tickets'
  s.description = 'Remedy is a simple help section for your application which contains frequently asked questions, help documents and videos. It also integrates with Zendesk and allows users to submit Zendesk tickets.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.add_dependency "rails", "< 5.1"
  s.add_dependency 'nokogiri', '1.6.7.2'
  s.add_dependency 'twitter-bootstrap-rails', '~> 3.2', '>= 3.2.2'
  s.add_dependency 'zendesk_api', '~> 1.13', '>= 1.13.4'
  s.add_development_dependency 'sqlite3'
end
