#!/usr/bin/env ruby
require_relative 'config'

def usage
  puts "USAGE: #{$0} vm_name vagrant_action"
  abort
end

usage unless ARGV[0] && ARGV[1]

vm_dir = File.expand_path CONFIG['vm_dir']
vm_name = ARGV[0]
vagrant_action = ARGV[1]

Dir.chdir(vm_dir) do
  puts "+ #{`pwd`}"
  Dir.chdir(vm_name) do
    puts "+ #{`pwd`}"
    cmd = "vagrant #{vagrant_action}"
    puts "++ #{cmd}"
    system cmd
  end
end
