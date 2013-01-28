# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bloomin/version'

Gem::Specification.new do |gem|
  gem.name          = "bloomin"
  gem.version       = Bloomin::VERSION
  gem.authors       = ["Alex Okolish"]
  gem.email         = ["alex.okolish@gmail.com"]
  gem.description   = %q{hacked together bloom filter}
  gem.summary       = %q{use at your own risk}
  gem.homepage      = "http://github.com/aokolish/bloomin"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency("fnv", [">= 0.2.0"])
  gem.add_development_dependency("rspec", [">= 2.2.0"])
end
