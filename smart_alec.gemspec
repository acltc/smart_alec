# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'smart_alec/version'

Gem::Specification.new do |spec|
  spec.name          = "smart_alec"
  spec.version       = SmartAlec::VERSION
  spec.authors       = ["Jay Wengrow"]
  spec.email         = ["jaywngrw@gmail.com"]
  spec.summary       = %q{Use the alec command in your terminal to get all sorts of quick information.}
  spec.description   = %q{Smart Alec is a robot that runs from your terminal and can do all sorts of tasks and get you quick information when you need it.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_dependency "open-weather"
  spec.add_dependency "stock_quote"
end
