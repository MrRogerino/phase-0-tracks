class TodoList
	def initialize(array)
		@todolist = array	
	end

	def add_item(item)
		@todolist << item
	end

	def delete_item(item)
		if @todolist.include?(item)
			@todolist.delete(item)
		end
	end
end

