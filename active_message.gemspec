# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_message/version'

Gem::Specification.new do |spec|
  spec.name          = "active_message"
  spec.version       = ActiveMessage::VERSION
  spec.authors       = ["John D'Agostino"]
  spec.email         = ["john.dagostino@gmail.com"]
  spec.summary       = %q{General Abstraction on user messaging}
  spec.description   = %q{An abstraction on user messaging/notifications}
  spec.homepage      = "https://github.com/jobready/active_message"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
