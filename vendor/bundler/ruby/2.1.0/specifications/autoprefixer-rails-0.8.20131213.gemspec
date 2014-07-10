# -*- encoding: utf-8 -*-
# stub: autoprefixer-rails 0.8.20131213 ruby lib

Gem::Specification.new do |s|
  s.name = "autoprefixer-rails"
  s.version = "0.8.20131213"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Andrey \"A.I.\" Sitnik"]
  s.date = "2013-12-13"
  s.email = "andrey@sitnik.ru"
  s.extra_rdoc_files = ["README.md", "LICENSE", "ChangeLog"]
  s.files = ["ChangeLog", "LICENSE", "README.md"]
  s.homepage = "https://github.com/ai/autoprefixer-rails"
  s.licenses = ["LGPL-3"]
  s.rubygems_version = "2.2.2"
  s.summary = "Parse CSS and add vendor prefixes to CSS rules using values from the Can I Use website."

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<execjs>, [">= 0"])
    else
      s.add_dependency(%q<execjs>, [">= 0"])
    end
  else
    s.add_dependency(%q<execjs>, [">= 0"])
  end
end
