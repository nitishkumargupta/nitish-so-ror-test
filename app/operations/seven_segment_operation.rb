class SevenSegmentOperation
		
	def self.read_file file_name
    File.delete(Rails.root.join("public/output_user_story_1.txt")) if File.exist?(Rails.root.join("public/output_user_story_1.txt"))
		input_file = Rails.root.join("public/#{file_name}")
		output_file = Rails.root.join("public/output_user_story_1.txt")
		@number_patterns = [[" _ ", "| |", "|_|"],["   ","  |","  |"],[" _ ", " _|", "|_ "],[" _ ", " _|", " _|"],["   ","|_|", "  |"],[" _ ", "|_ ", " _|"],[" _ ", "|_ ", "|_|"],[" _ ", "  |", "  |"],[" _ ", "|_|", "|_|"],[" _ ", "|_|", " _|"]]
		@converted_numbers =[]
		digital_number_array = []
		line_number_to_be_ignore = 4 
		File.open(input_file).each_with_index do |line,i| 
			if (i+1) % line_number_to_be_ignore == 0
			else  
		  	digital_number_array << line
			end
		end
		digital_number_with_group_of_three_element_array = digital_number_array.each_slice(3).to_a
		digital_number_with_group_of_three_element_array.each do |element|
			SevenSegmentOperation.print_digital(element)
		end
		@converted_numbers.each_slice(9).to_a.each do |list_of_coverted_number|
			File.open("#{output_file}", "a") do |f|
				f.write(list_of_coverted_number.join()) 
				f.write("\n")
			end 
		end
	end

	def self.print_digital(element)
		if element.count == 1
		  data_string = ""
		  data_string_new = data_string.concat(' '*27)
		  element[0] = data_string + element[0] 
		  element[1] = data_string + element[0]
		  element[2] = data_string + element[0]
		end
		if element[0].size == 1
		  data_string = ""
		  data_string_new = data_string.concat(' '*27)
		  element[0] = data_string + element[0] 
		else
		  element[0] = element[0]
		end 
		if element[1].size == 1
		  data_string = ""
		  data_string_new = data_string.concat(' '*27)
		  element[1] = data_string + element[1] 
		else
		  element[1] =element[1]
		end 
		if element[2].size == 1
		  data_string = ""
		  data_string_new = data_string.concat(' '*27)
		  element[2] = data_string + element[2] 
		else
		  element[2] = element[2]
		end 
		9.times.map do |t|
		  first_list = element[0].delete("\n").split('').each_slice(3).to_a[t] 
		  second_list = element[1].delete("\n").split('').each_slice(3).to_a[t] 
		  third_list = element[2].delete("\n").split('').each_slice(3).to_a[t] 
		  combine_list = []
		  combine_list << first_list.join() << second_list.join() << third_list.join()
		  get_matching_pattern = @number_patterns.each_index.select{|i| @number_patterns[i] == combine_list}
		  if get_matching_pattern.present?
		    @converted_numbers << get_matching_pattern[0]
		  end
		end
	end
end