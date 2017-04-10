def array_search(array, int)
	counter = 0
	new_list = []
	until counter == array.length
		if array[counter] == int
			new_list << counter
			counter +=1
		else
			counter +=1
		end
	end
	if new_list.length == 0 
	  return nil 
	else
	  return new_list.join(",")
	end
end

array = [5,12,24,13,20]
p array_search(array, 3)
array = [5,12,24,3,32,3]
p array_search(array, 3)

def fibonacci (int)
	counter = 2
  fib_list = [0,1] 
  if int == 1
    return fib_list[0]
  elsif int == 2
    return fib_list
  else
    until counter == int 
      fib_list << (fib_list[counter - 1] + fib_list[counter - 2])
      counter +=1
    end
    return fib_list
  end
end

p fibonacci(1)
p fibonacci(2)
p fibonacci(10)
p fibonacci(100)[99]
