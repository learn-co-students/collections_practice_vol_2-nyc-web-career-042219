require "pry"
def begins_with_r(array)
  array.all? {|word| word.start_with?("r")}
end

def contain_a(array)
  array.select {|word| word.include?("a")}
end

def first_wa(array)
  array.find {|word| word[0] == "w" && word[1] == "a"}
end

def remove_non_strings(array)
  array.keep_if {|element| element.is_a? String}
end

def count_elements(array)
  new_array = []
  array.each do |i|
    hash = {count:array.count(i)}
      hash.merge!(i)
      unless new_array.any?(hash)
        new_array << hash
    end
  end
  new_array
end

def merge_data(keys, data)
  # binding.pry
  keys.each do |hash|
    data.each do |hash_two|
      hash.merge!(hash_two[hash[:first_name]])
    end
  end
end

def find_cool(hash)
  hash.select {|temp| temp.has_value?("cool")}
end

def organize_schools(schools)
  location = {}

  schools.each do |school, hash|
    hash.each do |key, value|
      if !location[value]
        location[value] = [school]
      else
        location[value] << school
      end
    end
  end
  location
end
