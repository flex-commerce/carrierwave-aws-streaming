# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'carrierwave/aws/streaming/version'

Gem::Specification.new do |spec|
  spec.name          = "carrierwave-aws-streaming"
  spec.version       = Carrierwave::Aws::Streaming::VERSION
  spec.authors       = ["Gary Taylor"]
  spec.email         = ["gary.taylor@hismessages.com"]

  spec.summary       = %q{Allow uploads of very large files using streaming (multipart) uploads}
  spec.description   = %q{Allow uploads of very large files using streaming (multipart) uploads}
  spec.homepage      = "http://notgotone.yet"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
