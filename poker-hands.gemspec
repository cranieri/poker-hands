# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name        = 'poker-hands'
  s.date        = '2013-08-16'
  s.summary     = "Sample app to play poker"
  s.description = "Sample app to play poker"
  s.authors     = ["Cosimo Ranieri"]
  s.email       = 'co.ranieri@gmail.com'
  s.files       = %w(README.md Rakefile poker-hands.gemspec)
  s.files      += Dir.glob("lib/**/*.rb")
  s.files      += Dir.glob("spec/**/*")
  s.version     = '0.0.1'
  s.homepage    = 'https://rubygems.org/gems/poker-hands'
  s.license     = 'MIT'
end
