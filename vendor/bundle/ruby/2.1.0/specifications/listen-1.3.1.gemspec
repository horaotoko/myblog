# -*- encoding: utf-8 -*-
# stub: listen 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "listen"
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Thibaud Guillaume-Gentil", "Maher Sallam"]
  s.date = "2013-09-07"
  s.description = "The Listen gem listens to file modifications and notifies you about the changes. Works everywhere!"
  s.email = ["thibaud@thibaud.me", "maher@sallam.me"]
  s.homepage = "https://github.com/guard/listen"
  s.licenses = ["MIT"]
  s.rubyforge_project = "listen"
  s.rubygems_version = "2.2.1"
  s.summary = "Listen to file modifications"

  s.installed_by_version = "2.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rb-fsevent>, [">= 0.9.3"])
      s.add_runtime_dependency(%q<rb-inotify>, [">= 0.9"])
      s.add_runtime_dependency(%q<rb-kqueue>, [">= 0.2"])
      s.add_development_dependency(%q<bundler>, [">= 0"])
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rb-fsevent>, [">= 0.9.3"])
      s.add_dependency(%q<rb-inotify>, [">= 0.9"])
      s.add_dependency(%q<rb-kqueue>, [">= 0.2"])
      s.add_dependency(%q<bundler>, [">= 0"])
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rb-fsevent>, [">= 0.9.3"])
    s.add_dependency(%q<rb-inotify>, [">= 0.9"])
    s.add_dependency(%q<rb-kqueue>, [">= 0.2"])
    s.add_dependency(%q<bundler>, [">= 0"])
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end
