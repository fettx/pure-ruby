#!/home/tinix/.rvm/rubies/ruby-1.9.3-p551/bin/ruby
#ruby 1.9.3
#elimina un archivo , primero lo crea luego pregunta si existe luego lo elimina
require 'fileutils'
FileUtils.touch "doomed_file"
File.exists? "doomed_file"
File.delete "doomed_file"
File.exists? "doomed_file"
