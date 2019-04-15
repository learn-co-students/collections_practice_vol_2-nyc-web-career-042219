# your code goes here
def begins_with_r(array)
  array.all? do |arr|
    arr[0] == 'r'
  end
end

def contain_a(array)
  a_array = []

  array.each do |arr|
    i = 0
    while i < arr.length
      if arr[i].include?('a')
        a_array << arr
      end #end if
      i += 1
    end
  end
  a_array
end

def first_wa(array)
  array.detect do |arr|
    arr[0] == "w" && arr[1] == "a"
  end
end

def remove_non_strings(array)
  array.select do |arr|
    arr.class == String
  end
end

def count_elements(array)
  dup_name = nil
  array.each do |key|
    key[:count] = 1
    key.each do |k, v|
      if dup_name == v || dup_name == nil
        dup_name = v
        key[:count] += 1
      end
    end
  end
  array.uniq
end

def merge_data(array1, array2)
  array1.each do |key|
    array2.each do |name_hash|
      name_hash.each do |name, data|
        data.each do |detail_key, detail_value|
          if key[:first_name] == name
            key[detail_key] = detail_value
          end
        end
      end
    end
  end
  array1
end

def find_cool(array)
  array.select do |hash|
    hash[:temperature] === "cool"
  end
end

def organize_schools(array)
  new_hash = {}
  array.each do |school, location_hash|
    location_hash.each do |location, city|
      if !new_hash.has_key?(city)
        school_array = []
        school_array << school
        new_hash[city] = school_array
      else
        new_hash[city] << school
      end
    end
  end
  new_hash
end
