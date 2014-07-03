# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mcc_mnc/version'

Gem::Specification.new do |spec|
  spec.name          = "mcc_mnc"
  spec.version       = MccMnc::VERSION
  spec.authors       = ["Maciek Dubiński"]
  spec.email         = ["maciek@dubinski.net"]
  spec.summary       = %q{Mobile Country Code / Mobile Network Code lookup tool}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
