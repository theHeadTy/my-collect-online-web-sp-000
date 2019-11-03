def my_collect(array)
  (0..array.length - 1).step do |index|
    yield(array[index])
  end
  return array
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) { |index| return index.upcase }

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |index|
  return index.split(' ').first
end