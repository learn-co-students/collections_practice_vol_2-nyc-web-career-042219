# your code goes here
require 'pry'
def begins_with_r (arr)
  arr.each do |element|
    if element[0] != "R" && element[0] != "r"
      return false
    end
  end
  true
end

def contain_a (arr)
  arr.select do |element|
    element.include? "a"
  end
end

def first_wa (arr)
  str_arr = arr.map { |element| element.to_s}
  str_arr.find do |element|
     element.start_with?("wa")
  end
end

def remove_non_strings (arr)
  arr.select {|element| element.class == String }
end

def count_elements (arr)

  count_arr = arr.uniq

  count_arr.each do |count_elements|
    count_elements[:count] = 0
      arr.each do |element|
        if element[:name] == count_elements[:name]
          count_elements[:count] += 1
        end
      end
    end
    count_arr
end

def merge_data (keys, data)
  keys.map do|keys_data|
  keys_data.merge(data[0][ keys_data[:first_name]])
  end
end

def find_cool (arr)
  arr.select do |hash|
    hash[:temperature] == "cool"

  end
end

def organize_schools (schools)
  new_hash = {}
  schools.values.uniq.each do |element|
    new_hash[element[:location]] = (schools.select do |school|
        schools[school][:location] == element[:location]
      end).keys
    end
    new_hash


end
