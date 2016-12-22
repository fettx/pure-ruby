#!/home/tinix/.rvm/rubies/ruby-1.9.3-p551/bin/ruby
#ruby 1.9.3
#Elimina un dir , primero lo crea luego pregunta si existe luego lo elimina
require 'fileutils'

Dir.mkdir "doomed_directory"
File.exists? "doomed_directory"
FileUtils.remove_dir "doomed_directory"
File.exist? "doomed_directory"
