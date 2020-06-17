# your code goes here
require 'pry'
def begins_with_r(arr)
  arr.each {|e| return false if !e.start_with?("r") }
  
  return true
end

def contain_a(arr)
  arr.select {|e| e.include? "a" }
end

def first_wa(arr)
  arr.find {|e| e.to_s.include? "wa" }
end

def remove_non_strings(arr)
  arr.delete_if {|e| e.class != String }
end

def count_elements(arr)
  count = Hash.new(0)
  arr.collect {|h| count[h] += 1}
  count.collect do |k, v|
    k[:count] = v
  end
  count.keys
end

def merge_data(keys, data)
  keys.each do |hash|
    data.each do |second_hash|
      hash.merge!(second_hash[hash[:first_name]])
    end
  end
end

def find_cool(hash)
  hash.select {|e| e if e.has_value?("cool") }
end

def organize_schools(schools)
  location = {}
  schools.each do |school, hash|
    hash.each do |k, v|
      if location[v] == nil
        location[v] = [school]
      else
        location[v] << school
      end
    end
  end
  location
end