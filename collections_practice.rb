def begins_with_r(array)
  array.each { |ele| return false if ele[0].downcase != "r"}
  true
end

def contain_a(array)
  a_array = []
  array.each { |ele| a_array << ele if ele.include?("a") }
  a_array
end

def first_wa(array)
  wa_array = []
  array.select { |ele| wa_array << ele if ele[0] == "w" && ele[1] == "a" }
  wa_array.first
end

def remove_non_strings(array)
  array.delete_if { |ele| ele.class != String}
end

def count_elements(array)
  res = []
  vals = []
  array.each do |data|
    data.each do |key, value|
      hash = {}
      if vals.include?(value)
        res.each do |hashes|
          hashes.each do |k, v|
            hashes[:count] += 1 if v == value
          end
        end
      else
        hash.store(key, value)
        hash.store(:count, 1)
        res << hash
        vals << value
      end
    end
  end
  res 
end

def merge_data(keys, data)
  res = keys.clone
  data.each do |hash|
    hash.each do |key, nested_hash|
      res.each do |h|
        if h.value?(key)
          nested_hash.each do |k, v|
            h[k] = v
          end
        end
      end
    end
  end
  res
end

def find_cool(array)
  res = []
  array.each do |hash|
    if hash.value?("cool")
      res << hash
    end
  end
  res
end

def organize_schools(schools)
  res = {}
  schools.each do |school, school_data|
    school_data.each do |location, location_value|
      res[location_value] = [] unless res.key?(location_value)
      res[location_value] << school
    end
  end
  res
end