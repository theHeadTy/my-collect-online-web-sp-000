def my_collect(array)
  (0..array.length - 1).step do |index|
    yield(array[index])
  end
  array
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) { |index| puts index.upcase }

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |index|
  puts index.split(' ').first
end