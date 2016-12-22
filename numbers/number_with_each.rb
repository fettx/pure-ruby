#!/home/tinix/.rvm/rubies/ruby-1.9.3-p551/bin/ruby
#ruby 1.9.3

array = [1,2,3,4,5]

array.each do |i|
  if i % 2 == 0
    puts "#{i} is even"
  else
    puts "#{i} is odd"
  end
end
