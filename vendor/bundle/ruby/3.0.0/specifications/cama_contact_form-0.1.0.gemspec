# -*- encoding: utf-8 -*-
# stub: cama_contact_form 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "cama_contact_form".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Owen Peredo".freeze]
  s.date = "2022-12-27"
  s.description = "Permit to create unlimited of contact forms for Camaleon CMS".freeze
  s.email = ["owenperedo@gmail.com".freeze]
  s.homepage = "".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Contact Form Plugin for Camaleon CMS".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<recaptcha>.freeze, [">= 5.0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rails>.freeze, [">= 0"])
    s.add_dependency(%q<recaptcha>.freeze, [">= 5.0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
