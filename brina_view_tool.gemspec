
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "brina_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "brina_view_tool"
  spec.version       = BmbViewTool::VERSION
  spec.authors       = ["Barbara Brina"]
  spec.email         = ["bmbrina9@gmail.com"]

  spec.summary       = %q{Various view specific methods for web applications.}
  spec.description   = %q{Provides generated HTML data for Rails applications.}
  spec.homepage      = "http://www.brina.mx"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
