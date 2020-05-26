def my_collect(array)
  if block_given?
    i = 0
    result = []
  
    while i < array.length
      result << yield(array[i])
      i += 1
    end
  else
    "No block given"
  end
  result
end
