Gem::Specification.new do |s|
  s.name         = "Dand"
  s.version      = "1.0.0"
  s.author       = "Michael Robert Biggs"
  s.email        = "Mikeylfc007@blueyonder.co.uk"
  s.homepage     = ""
  s.summary      = "Simple Dungeon's and dragon's style game"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'dand' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end