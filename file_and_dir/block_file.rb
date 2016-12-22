#!/home/tinix/.rvm/rubies/ruby-1.9.3-p551/bin/ruby
#ruby 1.9.3

def flock(file, mode)
  success = file.flock(mode)
  if success
    begin
    yield file
  ensure
    file.flock(file::LOCK_UN)
  end
end
return success
end
