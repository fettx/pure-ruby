#!/home/tinix/.rvm/rubies/ruby-2.2.1/bin/ruby

arr = [9, 5, 1, 2, 3, 4, 0, -1]

index = arr[0]
start_pos = arr.first
end_pos  = arr.last
length = arr.length

def element_at(arr, index)
  # return the element of the Array variable `arr` at the position `index`
  # arr.at(index) # or
 return arr[index]
end

def inclusive_range(arr, start_por, end_pos)
  return arr[start_pos..end_pos]
end

def non_inclusive_range(arr, start_pos, end_pos)
  return  arr[start_pos..end_pos]
end

def start_and_length(arr, start_pos, length)
  if arr.length > start_pos+length
   return  arr[start_pos..(start_pos+length)]
  end
end

#puts element_at
#puts inclusive_range
#puts non_inclusive_range
#puts start_and_length


