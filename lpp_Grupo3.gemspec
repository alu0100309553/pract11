# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lpp_Grupo3/version'

Gem::Specification.new do |spec|
  spec.name          = "lpp_Grupo3"
  spec.version       = LppGrupo3::VERSION
  spec.authors       = ["Rubén Labrador"]
  spec.email         = ["rubenlabradorpaez@gmail.com"]

  spec.summary       = "Sumario"
  spec.description   = 
  spec.homepage      = "https://github.com/alu0100309553/pract11.git"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 2.11"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "guard-bundler"
  spec.add_development_dependency "coveralls"
end
