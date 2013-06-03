# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'go_social/version'

Gem::Specification.new do |gem|
  gem.name          = "go_social"
  gem.version       = GoSocial::VERSION
  gem.authors       = ["Rakesh Jha"]
  gem.email         = ["mrrakesh2112@gmail.com"]
  gem.description   = %q{This gem helps to add various social widgets that are commonly used by rails applications. Supports Facebook, Pinterest, Twitter, Flickr, LinkedIn and Google+.}
  gem.summary       = %q{A complete social media makeover.}
  gem.homepage      = "https://github.com/Jrakesh/go_social"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  #add gem dependencies
  gem.add_development_dependency "rails"
end
