$:.push File.expand_path("../lib", __FILE__)

require "govuk_design_system_formbuilder/version"

Gem::Specification.new do |s|
  s.name        = "govuk_design_system_formbuilder"
  s.version     = GOVUKDesignSystemFormBuilder::VERSION
  s.authors     = ["Peter Yates"]
  s.email       = ["peter.yates@graphia.co.uk"]
  s.homepage    = "https://github.com/DFE-Digital"
  s.summary     = "GOV.UK-compliant Rails form builder"
  s.description = "A Rails form builder that generates form inputs adhering to the GOV.UK Design System"
  s.license     = "MIT"

  s.files = Dir["{app,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.2.3"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency 'rspec-html-matchers'

  s.add_development_dependency "pry"
  s.add_development_dependency "pry-byebug"
end
