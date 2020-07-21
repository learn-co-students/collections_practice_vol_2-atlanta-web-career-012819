def begins_with_r(array)
	letters = array.collect { |word| word.split("") }
	letters.all? { |word_array| word_array[0] == "r" }
end

def contain_a(array)
	letters = array.collect { |word| word.split("") }
	filtered = letters.find_all { |word_array| word_array.any? { |letter| letter == "a"}}
	filtered.collect { |word_array| word_array.join }
end

def first_wa(array)
	strings = array.find_all { |word| word.is_a? String}
	letters = strings.collect { |word| word.split("") }
	filtered = letters.find { |word_array| word_array[0] == "w" && word_array[1] == "a" }
	filtered.join if !filtered.empty?
end

def remove_non_strings(array)
	array.find_all { |word| word.is_a? String}
end

def count_elements(array)
	new_array = []
	array.each do |item|
		item.each do |k, v|
			new_array << { k => v, :count => array.count(item) }
		end
	end
	new_array.uniq
end

def merge_data(data_1, data_2)
	data_2[0].values.map.with_index do |data, i|
		data_1[i].merge(data)
	end
end

def find_cool(data)
	new_array = []
	data.each do | h |
		h.each do | k, v |
			if v == "cool"
				new_array << h
			end
		end
	end
	new_array
end

def organize_schools(h)
	new_h = {}
	h.each do | school, data |
		data.each do | k, v |
			if new_h.empty? || !new_h.key?(v)
				new_h[v] = [school]
			else
				new_h[v] << school
			end
		end
	end
	new_h
end