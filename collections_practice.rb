def begins_with_r(array)
array.all? do |tool|
  tool[0] == "r"
end
end

 def contain_a(array)
 array.select do |word|
   word.include?("a")
end
end

def first_wa(array)
  array.find do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings(array)
  array.grep(String)
end
  
def count_elements(array)
array.uniq.each {|i| count = 0
  array.each {|i2| if i2 == i then count += 1 end}
   i[:count] = count}
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|key,value|
  if i.values[0] == key
    then merged << i.merge(value) end}}
  merged
end

def find_cool(cool)
    cool.select {|x| x.any? {|key,value| value == "cool"}} 
end

def organize_schools(schools)
    locations_hash = {}
    schools.collect {|key,value| 
    locations_hash[value[:location]] = []}
    locations_hash.each {|key,value| schools.each {|k1,v1| if key == v1[:location] then value << k1  end}}
end