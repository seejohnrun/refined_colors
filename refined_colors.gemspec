require File.dirname(__FILE__) + '/lib/refined_colors/version'

Gem::Specification.new do |s|
  s.name          = 'refined_colors'
  s.summary       = 'CLI colors via refinements'
  s.author        = 'John Crepezzi'
  s.email         = 'john.crepezzi@gmail.com'
  s.license       = 'MIT'

  s.version       = RefinedColors::VERSION
  s.platform      = Gem::Platform::RUBY
  s.files         = Dir['lib/**/*.rb']
  s.test_files    = Dir.glob('spec/*.rb')
  s.require_paths = ['lib']

  s.add_development_dependency('rspec')
end
