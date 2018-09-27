$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "zhulei-canonical-rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "zhulei-canonical-rails"
  s.version     = ZhuleiCanonicalRails::VERSION
  s.authors     = ["Zhu Lei"]
  s.email       = ["zhuleichina@qq.com"]
  s.homepage    = "https://github.com/zhuleichina/canonical-rails"
  s.summary     = "canonical-rails by Denis Ivanov,delete the port in the url and delete the lower-case method in the code"
  s.description = "This gem is based on canonical-rails by Denis Ivanov,I only delete the port in the url and delete the lower-case method in the code."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '>= 4.1', '< 5.3'

  s.add_development_dependency 'appraisal'
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails', '~> 3.5'
  s.add_development_dependency 'pry'
end
