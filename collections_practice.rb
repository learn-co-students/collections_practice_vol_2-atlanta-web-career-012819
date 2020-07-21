
require "pry"
def begins_with_r (array)
  array.all? do |word|
    word[0] == "r"
  end
  end


def contain_a (array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa (array)
  array.find do |word|
  word[0..1] == "wa"
end
end

def remove_non_strings (array)

  array.grep(String)
end

def count_elements (arr)
  arr.each do |element|
    element[:count] = 0
    name = element[:name]
    arr.each do |hash|
      if hash[:name] == name
        element[:count] += 1
      end
    end
  end.uniq
end


def merge_data(keys , data)
keys.each do |name_hash|
  data.each do |hash|
    name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool (array)
  array.select {|value| value if value.has_value?("cool")}
end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
