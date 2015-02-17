require_relative 'lib/timbrel/utils'
require 'rake'

Gem::Specification.new do |s|
  s.name        = 'timbrel'
  s.version     = Timbrel.version
  s.summary     = 'A simple tool to issue vagrant commands from any directory'
  s.description = 'This is a simple tool to issue vagrant commands based on a configured root dir of vms. timbrel will cd into the appropriate directory to issue the vagrant commands, allowing you to up, stop, or suspend your vms from anywhere.'
  s.authors     = ['Colby M. White']
  s.email       = 'colbywhite@users.noreply.github.com'
  s.files       = Rake::FileList.new 'lib/**/*.rb'
  s.homepage    = 'https://github.com/colbywhite/timbrel'
  s.license     = 'MIT'
  s.executables << 'timbrel'
  s.add_runtime_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'pry', '~> 0.10'
  s.add_development_dependency 'pry-doc', '~> 0.6'
end