Gem::Specification.new do |s|
  s.name        = 'method_todo'
  s.version     = '0.0.1'
  s.date        = '2014-08-18'
  s.summary     = "Tool providing multiple work-task-related commands"
  s.description = ""
  s.authors     = ["Joseph Method"]
  s.email       = 'tristil@gmail.to'
  s.homepage    =
    'http://rubygems.org/gems/method_todo'
  s.license       = 'MIT'

  s.required_ruby_version = '>= 2.0.0'

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.7"
  s.add_development_dependency "rake", "~> 10.0"
end
