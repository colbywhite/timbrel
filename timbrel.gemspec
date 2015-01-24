Gem::Specification.new do |s|
  s.name        = 'timbrel'
  s.version     = '0.1'
  s.date        = '2015-01-23'
  s.summary     = 'A simple tool to issue vagrant commands from any directory'
  s.description = 'This is a simple tool to issue vagrant commands based on a configured root dir of vms. timbrel will cd into the appropriate directory to issue the vagrant commands, allowing you to up, stop, or suspend your vms from anywhere.'
  s.authors     = ['Colby M. White']
  s.email       = 'colbywhite@users.noreply.github.com'
  s.files       = ['lib/timbrel.rb', 'lib/timbrel/config.rb']
  s.homepage    = 'https://github.com/colbywhite/timbrel'
  s.license     = 'MIT'
  s.executables << 'timbrel'
end