# your code goes here
require 'pry'
def begins_with_r(array)
  array.all? {|s| s[0] == 'r'}
end

def contain_a(array)
  array.select {|s| s.include?('a')}
end

def first_wa(array)
  array.find {|s| s[0..1] == 'wa'}
end

def remove_non_strings(array)
  array.select {|s| s.class == String}
end

def count_elements(array)
  counts =[]
  array.each do |object|
    count = {name: object[:name], count: array.count(object)}
    if !counts.include?(count)
      counts << count
    end
  end
  counts
end

def merge_data(keys, data)
  i = 0
  while i < keys.length
    #binding.pry
    keys[i].merge!(data[0][keys[i][:first_name]])
    i += 1
  end
  keys
end

def find_cool(array)
  array.select do |i|
    i[:temperature] == "cool"
  end
end

def organize_schools(hash)
  locations = {}
  hash.each do |school, location|
    if locations[location[:location]]
      locations[location[:location]] << school
    else
      locations[location[:location]] = *school
    end
  end
  locations
end