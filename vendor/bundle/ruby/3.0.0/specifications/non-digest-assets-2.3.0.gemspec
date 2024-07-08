# -*- encoding: utf-8 -*-
# stub: non-digest-assets 2.3.0 ruby lib

Gem::Specification.new do |s|
  s.name = "non-digest-assets".freeze
  s.version = "2.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Alex Speller".freeze, "Matijs van Zuijlen".freeze]
  s.date = "2023-10-05"
  s.description = "    Rails provides no option to generate both digest and non-digest\n    assets. Installing this gem automatically creates both digest and\n    non-digest assets which are useful for many reasons.\n".freeze
  s.email = ["matijs@matijs.net".freeze]
  s.homepage = "http://github.com/mvz/non-digest-assets".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Make the Rails asset pipeline generate non-digest along with digest assets".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 6.0", "< 7.2"])
    s.add_runtime_dependency(%q<sprockets>.freeze, ["~> 4.0"])
    s.add_development_dependency(%q<appraisal>.freeze, ["~> 2.3"])
    s.add_development_dependency(%q<aruba>.freeze, ["~> 2.0"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.14.0"])
    s.add_development_dependency(%q<rails>.freeze, [">= 6.0", "< 7.2"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.52"])
    s.add_development_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5.2"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.18"])
    s.add_development_dependency(%q<rubocop-rails>.freeze, ["~> 2.19"])
    s.add_development_dependency(%q<rubocop-rake>.freeze, ["~> 0.6.0"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.22"])
    s.add_development_dependency(%q<sprockets-rails>.freeze, ["~> 3.0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 6.0", "< 7.2"])
    s.add_dependency(%q<sprockets>.freeze, ["~> 4.0"])
    s.add_dependency(%q<appraisal>.freeze, ["~> 2.3"])
    s.add_dependency(%q<aruba>.freeze, ["~> 2.0"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.14.0"])
    s.add_dependency(%q<rails>.freeze, [">= 6.0", "< 7.2"])
    s.add_dependency(%q<rake>.freeze, ["~> 13.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.10"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 1.52"])
    s.add_dependency(%q<rubocop-packaging>.freeze, ["~> 0.5.2"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.18"])
    s.add_dependency(%q<rubocop-rails>.freeze, ["~> 2.19"])
    s.add_dependency(%q<rubocop-rake>.freeze, ["~> 0.6.0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 2.22"])
    s.add_dependency(%q<sprockets-rails>.freeze, ["~> 3.0"])
  end
end
