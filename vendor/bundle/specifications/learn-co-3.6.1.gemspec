# -*- encoding: utf-8 -*-
# stub: learn-co 3.6.1 ruby lib bin

Gem::Specification.new do |s|
  s.name = "learn-co".freeze
  s.version = "3.6.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze, "bin".freeze]
  s.authors = ["Flatiron School".freeze]
  s.date = "2016-09-14"
  s.email = ["learn@flatironschool.com".freeze]
  s.executables = ["learn".freeze]
  s.files = ["bin/learn".freeze]
  s.homepage = "https://github.com/learn-co/learn-co".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.5.2".freeze
  s.summary = "The command line interface to Learn.co.".freeze

  s.installed_by_version = "2.5.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_development_dependency(%q<pry>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<learn-test>.freeze, [">= 2.4.0"])
      s.add_runtime_dependency(%q<learn-config>.freeze, [">= 1.0.77"])
      s.add_runtime_dependency(%q<learn-open>.freeze, [">= 1.2.1"])
      s.add_runtime_dependency(%q<learn-submit>.freeze, [">= 1.2.0"])
      s.add_runtime_dependency(%q<learn-doctor>.freeze, [">= 1.0.3"])
      s.add_runtime_dependency(%q<learn-generate>.freeze, [">= 1.0.16"])
      s.add_runtime_dependency(%q<learn-status>.freeze, [">= 1.0.1"])
      s.add_runtime_dependency(%q<learn-hello>.freeze, [">= 1.0.1"])
      s.add_runtime_dependency(%q<learn_linter>.freeze, [">= 1.6.0"])
      s.add_runtime_dependency(%q<netrc>.freeze, [">= 0.11.0"])
      s.add_runtime_dependency(%q<thor>.freeze, [">= 0.19.1"])
    else
      s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
      s.add_dependency(%q<pry>.freeze, [">= 0"])
      s.add_dependency(%q<learn-test>.freeze, [">= 2.4.0"])
      s.add_dependency(%q<learn-config>.freeze, [">= 1.0.77"])
      s.add_dependency(%q<learn-open>.freeze, [">= 1.2.1"])
      s.add_dependency(%q<learn-submit>.freeze, [">= 1.2.0"])
      s.add_dependency(%q<learn-doctor>.freeze, [">= 1.0.3"])
      s.add_dependency(%q<learn-generate>.freeze, [">= 1.0.16"])
      s.add_dependency(%q<learn-status>.freeze, [">= 1.0.1"])
      s.add_dependency(%q<learn-hello>.freeze, [">= 1.0.1"])
      s.add_dependency(%q<learn_linter>.freeze, [">= 1.6.0"])
      s.add_dependency(%q<netrc>.freeze, [">= 0.11.0"])
      s.add_dependency(%q<thor>.freeze, [">= 0.19.1"])
    end
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.7"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<pry>.freeze, [">= 0"])
    s.add_dependency(%q<learn-test>.freeze, [">= 2.4.0"])
    s.add_dependency(%q<learn-config>.freeze, [">= 1.0.77"])
    s.add_dependency(%q<learn-open>.freeze, [">= 1.2.1"])
    s.add_dependency(%q<learn-submit>.freeze, [">= 1.2.0"])
    s.add_dependency(%q<learn-doctor>.freeze, [">= 1.0.3"])
    s.add_dependency(%q<learn-generate>.freeze, [">= 1.0.16"])
    s.add_dependency(%q<learn-status>.freeze, [">= 1.0.1"])
    s.add_dependency(%q<learn-hello>.freeze, [">= 1.0.1"])
    s.add_dependency(%q<learn_linter>.freeze, [">= 1.6.0"])
    s.add_dependency(%q<netrc>.freeze, [">= 0.11.0"])
    s.add_dependency(%q<thor>.freeze, [">= 0.19.1"])
  end
end
