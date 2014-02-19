# -*- encoding: utf-8 -*-
# stub: middleman-disqus 0.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-disqus"
  s.version = "0.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Simon Rice"]
  s.date = "2013-07-19"
  s.email = ["im@simonrice.com"]
  s.homepage = "http://github.com/simonrice/middleman-disqus"
  s.licenses = ["MIT"]
  s.rubygems_version = "2.2.1"
  s.summary = "A Middleman plugin for adding the Disqus embed code."

  s.installed_by_version = "2.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 3.1.0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 3.1.0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 3.1.0"])
  end
end
