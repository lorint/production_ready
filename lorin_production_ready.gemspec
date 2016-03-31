# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'lorin_production_ready/version'

Gem::Specification.new do |spec|
  spec.name          = "lorin_production_ready"
  spec.version       = LorinProductionReady::VERSION
  spec.authors       = ["Lorin Thwaits"]
  spec.email         = ["lthwaits@hotmail.com"]

  spec.summary       = %q{Automatically manage assets when pushing to production}
  spec.description   = %q{Removes all precompiled assets for production with rake assets:clobber before
    doing a rake assets:precompile, and then pushes the content to heroku, as long as
    a heroku app has been configured.}
  spec.homepage      = "https://github.com/lorint/production_ready"
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

  spec.add_dependency "rails_12factor"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
