# your code goes here
def begins_with_r(new_array)
  new_array.all? {|array| array.start_with?("r")}
end

def contain_a(array_1)
  array_1.find_all {|array| array.include?("a")}
end

def first_wa(array_2) 
  array_2.detect {|array| array.to_s.start_with?("wa")}
end

def remove_non_strings(array_3) 
  array_3.delete_if {|words| words.class != String}
end

def count_elements(array_4)
  new_element = array_4.uniq.collect {|person| {:name => person[:name], :count => array_4.count(person)}}
end

def merge_data(keys, data)
  merged_data = []
  keys.each do |key|
    data.each do |data_hash|
      data_hash.each do |data_hash_key, data_hash_value|
        if data_hash_key == key[:first_name]
          merged_data << key.merge(data_hash_value)
        end
      end
    end
  end
  merged_data
end

def find_cool(cool)
  cool.select {|a| a[:temperature] == "cool"}
end

def organize_schools(schools)
  school_list = {} 
  schools.each do |school, place|
    if !school_list[place[:location]]
      school_list[place[:location]] = [school]
    else 
      school_list[place[:location]] << school
    end
  end
  school_list
end

          