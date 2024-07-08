# -*- encoding: utf-8 -*-
# stub: cama_meta_tag 1.7.2 ruby lib

Gem::Specification.new do |s|
  s.name = "cama_meta_tag".freeze
  s.version = "1.7.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Owen Peredo".freeze]
  s.date = "2021-04-27"
  s.description = "Permit to manage the seo attributes for each page of Camaleon CMS.".freeze
  s.email = ["owenperedo@gmail.com".freeze]
  s.homepage = "https://github.com/owen2345/camaleon-cms-seo".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Permit to manage the seo attributes for each page of Camaleon CMS.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 4.1.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 4.1.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
