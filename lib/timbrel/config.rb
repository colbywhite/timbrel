require 'yaml'

default_config_yaml = '~/.timbrel.yaml'
config_yaml = ENV['TIMBREL_CONFIG'] || default_config_yaml
TIMBREL_CONFIG = YAML.load_file(File.expand_path(config_yaml))