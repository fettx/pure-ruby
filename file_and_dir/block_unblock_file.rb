#!/home/tinix/.rvm/rubies/ruby-1.9.3-p551/bin/ruby
#ruby 1.9.3

def  open_lock(filename, openmode="r", lockmode=nil)
  if openmode == 'r' || openmode == 'rb'
    lockmode ||= File::LOCK_SH
  else
    lockmode ||= File.LOCK_EX
  end
  value  = nil
  open(filename, openmode) do |f|
    flock(f,lockmode) do
      begin
        value = yield f
      ensure
        f.flock(File::LOCK_UN)
      end
    end
    return value
  end
end
