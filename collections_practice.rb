require 'pry'
def begins_with_r(array)
  array.all? do |word|
    word.downcase.chr == "r"
  end
end

def contain_a(array)
  array.select do |word|
    word.include?("a")
  end
end

def first_wa(array)
  array.find do |word|
    word.to_s.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.reject do |element|
    element.class != String
  end
end

def count_elements(array)
  array.each do |hash|
    hash[:count] = 0
    name = hash[:name]
    array.each do |new_hash|
      if new_hash[:name] == name
        hash[:count] += 1
      end
    end
  end.uniq
end

def merge_data(array1, array2)
  array2[0].map do |name, hash|
    new_hash = {}
    array1.each do |another_hash|
      if another_hash[:first_name] == name
        new_hash = hash.merge(another_hash)
      end
    end
    new_hash
  end
end

def find_cool(array)
  new_array = []
  array.each do |element|
    new_array << element if element[:temperature] == "cool"
  end
  new_array
end

def organize_schools(schools)
  organized_school = {}
  schools.each do |school, location_hash|
    location = location_hash[:location]
    if organized_school[location]
      organized_school[location] << school
    else
      organized_school[location] = []
      organized_school[location] << school
    end
  end
  organized_school
end