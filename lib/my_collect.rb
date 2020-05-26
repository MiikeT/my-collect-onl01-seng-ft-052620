def my_collect(array)
  if block_given?
    i = 0
    result = []
  
    while i < array.length
      result << (yield[i])
      i += 1
    end
  else
    "No block given"
  end
  result
end

collection = ['ruby', 'javascript', 'python', 'objective-c']
my_collect(collection) do |lang|
  lang.upcase
end