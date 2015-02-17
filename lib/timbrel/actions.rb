require_relative 'config'

module Timbrel
  module Action
    def self.list
      require 'rake'
      vm_dir = TIMBREL_CONFIG['vm_dir']
      puts "Listing available VMs in #{vm_dir}"
      
      vagrant_files = Rake::FileList.new File.join(vm_dir, '*/Vagrantfile')
      vagrant_files.each do |file|
        puts "|-- #{file.pathmap('%-1d')}"
      end
      exit
    end
    
    def self.version
      require_relative 'utils'
      puts "Timbrel.version = #{Timbrel.version}"
      exit
    end
    
    def self.execute(vm_name, vagrant_cmd)
      vm_dir = TIMBREL_CONFIG['vm_dir']
      current_vm_dir = File.join vm_dir, vm_name
      vagrantfile = File.join current_vm_dir, 'Vagrantfile'
      
      Timbrel::Error.vagrantfile_dne vagrantfile unless File.exists?(vagrantfile)

      cmd = "vagrant #{vagrant_cmd}"
      puts "Executing \"#{cmd}\" from #{current_vm_dir}"
      Dir.chdir(current_vm_dir) do
        system cmd
      end
    end
  end
end