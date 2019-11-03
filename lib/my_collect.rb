def my_collect(array)
  new = []
  array.each do |val|
    yield val
    new << yield(val)
  end
  new
end

my_collect(['ruby', 'javascript', 'python', 'objective-c']) { |index| puts index.upcase }

my_collect(['Tim Jones', 'Tom Smith', 'Sophie Johnson', 'Antoin Miller']) do |index|
  puts index.split(' ').first
end