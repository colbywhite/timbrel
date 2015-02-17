module Timbrel
  def self.version
    '0.3'
  end
  
  def self.usage
    puts <<-EOS.gsub(/^ {6}/, '')
      Usages:
        timbrel <vm_name> <vagrant_command>
        timbrel list
        timbrel version
        timbrel help
    EOS
    exit
  end
  
  module Error
    def self.vagrantfile_dne(vagrantfile)
      puts "#{vagrantfile} does not exist. Please check the vm_name and you configuration."
      exit 1
    end
  end
  
end