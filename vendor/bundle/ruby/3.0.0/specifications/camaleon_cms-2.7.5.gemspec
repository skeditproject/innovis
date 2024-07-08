# -*- encoding: utf-8 -*-
# stub: camaleon_cms 2.7.5 ruby lib

Gem::Specification.new do |s|
  s.name = "camaleon_cms".freeze
  s.version = "2.7.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Owen Peredo Diaz".freeze]
  s.date = "2023-12-22"
  s.description = "Camaleon CMS is a dynamic and advanced content management system based on Ruby on Rails as an alternative to Wordpress.".freeze
  s.email = ["owenperedo@gmail.com".freeze]
  s.homepage = "http://camaleon.tuzitio.com".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7".freeze)
  s.requirements = ["rails >= 6.0".freeze, "ruby >= 2.7".freeze, "imagemagick".freeze]
  s.rubygems_version = "3.2.3".freeze
  s.summary = "Camaleon is a CMS for Ruby on Rails as an alternative to Wordpress.".freeze

  s.installed_by_version = "3.2.3" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<bcrypt>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<cancancan>.freeze, [">= 2.0", "< 4"])
    s.add_runtime_dependency(%q<draper>.freeze, [">= 4.0.2"])
    s.add_runtime_dependency(%q<font-awesome-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<ipaddress>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<meta-tags>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<mini_magick>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<non-digest-assets>.freeze, ["~> 2.0"])
    s.add_runtime_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<tinymce-rails>.freeze, ["< 5"])
    s.add_runtime_dependency(%q<will_paginate>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<will_paginate-bootstrap>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<cama_contact_form>.freeze, ["~> 0.1.0"])
    s.add_runtime_dependency(%q<cama_meta_tag>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<aws-sdk-s3>.freeze, ["~> 1"])
    s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_development_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-rescue>.freeze, [">= 0"])
    s.add_development_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-instafail>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<sqlite3>.freeze, [">= 0"])
  else
    s.add_dependency(%q<addressable>.freeze, [">= 0"])
    s.add_dependency(%q<bcrypt>.freeze, [">= 0"])
    s.add_dependency(%q<breadcrumbs_on_rails>.freeze, [">= 0"])
    s.add_dependency(%q<cancancan>.freeze, [">= 2.0", "< 4"])
    s.add_dependency(%q<draper>.freeze, [">= 4.0.2"])
    s.add_dependency(%q<font-awesome-rails>.freeze, [">= 0"])
    s.add_dependency(%q<ipaddress>.freeze, [">= 0"])
    s.add_dependency(%q<jquery-rails>.freeze, [">= 0"])
    s.add_dependency(%q<meta-tags>.freeze, ["~> 2.0"])
    s.add_dependency(%q<mini_magick>.freeze, [">= 0"])
    s.add_dependency(%q<non-digest-assets>.freeze, ["~> 2.0"])
    s.add_dependency(%q<sass-rails>.freeze, [">= 0"])
    s.add_dependency(%q<tinymce-rails>.freeze, ["< 5"])
    s.add_dependency(%q<will_paginate>.freeze, [">= 0"])
    s.add_dependency(%q<will_paginate-bootstrap>.freeze, [">= 0"])
    s.add_dependency(%q<cama_contact_form>.freeze, ["~> 0.1.0"])
    s.add_dependency(%q<cama_meta_tag>.freeze, [">= 0"])
    s.add_dependency(%q<aws-sdk-s3>.freeze, ["~> 1"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
    s.add_dependency(%q<capybara>.freeze, [">= 0"])
    s.add_dependency(%q<pry-rescue>.freeze, [">= 0"])
    s.add_dependency(%q<pry-stack_explorer>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-instafail>.freeze, [">= 0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<sqlite3>.freeze, [">= 0"])
  end
end
