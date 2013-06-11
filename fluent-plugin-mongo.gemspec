# encoding: utf-8
$:.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |gem|
  gem.name        = "fluent-plugin-mongo"
  gem.description = "MongoDB plugin for Fluent event collector"
  gem.homepage    = "https://github.com/fluent/fluent-plugin-mongo"
  gem.summary     = gem.description
  gem.version     = File.read("VERSION").strip
  gem.authors     = ["Masahiro Nakagawa"]
  gem.email       = "repeatedly@gmail.com"
  gem.has_rdoc    = false
  #gem.platform    = Gem::Platform::RUBY
   gem.files         = Dir['lib/**/*.rb'] + Dir['bin/*']
   gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
   gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency "fluentd", "~> 0.10.9"
  gem.add_dependency "mongo", "~> 1.8.0"
  gem.add_development_dependency "rake", ">= 0.9.2"
  gem.add_development_dependency "simplecov", ">= 0.5.4"
  gem.add_development_dependency "rr", ">= 1.0.0"
end
