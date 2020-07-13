# -*- encoding: utf-8 -*-
# stub: learn-doctor 1.0.3 ruby lib bin

Gem::Specification.new do |s|
  s.name = "learn-doctor".freeze
  s.version = "1.0.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "bin".freeze]
  s.authors = ["Flatiron School".freeze]
  s.date = "2015-07-01"
  s.email = ["learn@flatironschool.com".freeze]
  s.executables = ["learn-doctor".freeze]
  s.files = ["bin/learn-doctor".freeze]
  s.homepage = "https://learn.co".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Check your environment setup against Learn.co's defaults".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_runtime_dependency(%q<netrc>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_runtime_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<learn-web>.freeze, [">= 1.1.0"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<netrc>.freeze, [">= 0"])
      s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
      s.add_dependency(%q<colorize>.freeze, [">= 0"])
      s.add_dependency(%q<learn-web>.freeze, [">= 1.1.0"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<netrc>.freeze, [">= 0"])
    s.add_dependency(%q<faraday>.freeze, ["~> 0.9"])
    s.add_dependency(%q<colorize>.freeze, [">= 0"])
    s.add_dependency(%q<learn-web>.freeze, [">= 1.1.0"])
  end
end
