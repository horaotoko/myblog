# -*- encoding: utf-8 -*-
# stub: middleman-autoprefixer 0.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "middleman-autoprefixer"
  s.version = "0.2.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Dominik Porada"]
  s.date = "2013-11-03"
  s.email = ["dominik@porada.co"]
  s.homepage = "https://github.com/porada/middleman-autoprefixer"
  s.licenses = ["MIT"]
  s.post_install_message = "\n\n    If you\u{2019}re updating middleman-autoprefixer from the version \u{2264} 0.2,\n    please note that Autoprefixer\u{2019}s `browsers` option now defaults to:\n\n        > 1%, last 2 versions, Firefox 17, Opera 12.1\n\n    If you prefer the previous configuration, don\u{2019}t lock the version\n    of this gem because it might not help. Edit your config.rb instead:\n\n        activate :autoprefixer do |config|\n          config.browsers = 'last 2 versions'\n        end\n\n    You can read more here: github.com/ai/autoprefixer#browsers\n\n\n"
  s.rubygems_version = "2.2.1"
  s.summary = "Autoprefixer integration with Middleman"

  s.installed_by_version = "2.2.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<middleman-core>, [">= 0"])
      s.add_runtime_dependency(%q<autoprefixer-rails>, ["~> 0.8"])
      s.add_development_dependency(%q<bundler>, ["~> 1.3"])
      s.add_development_dependency(%q<rake>, [">= 0"])
    else
      s.add_dependency(%q<middleman-core>, [">= 0"])
      s.add_dependency(%q<autoprefixer-rails>, ["~> 0.8"])
      s.add_dependency(%q<bundler>, ["~> 1.3"])
      s.add_dependency(%q<rake>, [">= 0"])
    end
  else
    s.add_dependency(%q<middleman-core>, [">= 0"])
    s.add_dependency(%q<autoprefixer-rails>, ["~> 0.8"])
    s.add_dependency(%q<bundler>, ["~> 1.3"])
    s.add_dependency(%q<rake>, [">= 0"])
  end
end
