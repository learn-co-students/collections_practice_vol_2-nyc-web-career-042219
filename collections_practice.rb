require 'pry'

def begins_with_r(tools)
  tools.all? { |t| t[0].downcase == "r" }
end

def contain_a(elements)
  elements.select { |e| e.include? "a"}
end

def first_wa(array)
  array.find do |a|
    if a.is_a? Symbol
      a = a.to_s
    end
    a.start_with?("wa")
  end
end

def remove_non_strings(array)
  array.select { |a| a.class == String }
end

def count_elements(array_of_hashes)
  new_array = []
  array_of_hashes.each do |h|
    hash = {count:array_of_hashes.count(h)}
    hash.merge!(h)
    unless new_array.any?(hash)
      new_array << hash
    end
  end
  new_array
end

def find_cool(array)
  array.select do |h|
    h.values.any? ("cool")
  end
end

def organize_schools(schools_hash)
  organized_hash = {}
  schools_hash.each do |school, location_hash|
    school # => "flatiron school bk"
    key = location_hash[:location] # => "NYC"

    if organized_hash.keys.any?(key)
      organized_hash[key] << school
    else
      organized_hash[key] = [school]
    end

  end
  organized_hash
end


def merge_data(arr1, arr2)
  arr1.each do |a1|
    arr2.each do |a2|
      a2.each do |k, v|
        if a1.values.any? (k)
          v.each do |kk, vv|
            a1.store(kk, vv)    # well aware this is very yucky
          end                   # but it works so
        end
      end
    end
  end
end
