# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sturing/version'

Gem::Specification.new do |spec|
  spec.name          = "sturing"
  spec.version       = Sturing::VERSION
  spec.authors       = ["Zachary Sarver"]
  spec.email         = ["Zachary.Sarver@gmail.com"]

  spec.summary       = %q{Library for running simple finite turing machines}
  spec.homepage      = "https://github.com/ZSarver/sturing/"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
