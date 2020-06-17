# your code goes here
def begins_with_r(array)
  array.each do |x|
    if x[0] != "r"
      return false
    end
  end
  return true
end

def contain_a(array)
  word = []
  array.each do |x|
    i = 0
    until x.length < i
      if x[i] == "a"
        word << x
      end
      i +=1
    end
  end
  return word
end

def first_wa(array)
  array.each do |x|
    if x[0] == "w" and x[1] == "a"
      return x
    end
  end
end

def remove_non_strings(array)
  word = []
  array.each do |x|
    if x.class == String
      word << x
    end
  end
  return word
end

def count_elements(array)
  hash = {}
  answer = []
  until array.length == 0
    before = array.length
    hash = (array[0])
    array.delete(array[0])
    after = array.length
    count = before - after
    hash[:count] = count
    answer << hash
  end
  return answer
end

def merge_data(key, data)
  hash = []
  hash << key[0].merge(data[0]["blake"])
  hash << key[1].merge(data[0]["ashley"])
  return hash
end

def find_cool(array)
  answer = []
  array.each do |x|
    x.each do |kry, value|
      if kry == :temperature && value == "cool"
        answer << x
      end
    end
  end
  return answer
end

def organize_schools(array)
  key = array.keys
  stuff = array.values
  place = nil
  h =   stuff.map do |s|
          s.map do |x, y|
            y
          end
        end
  h.flatten!
  answer = {}
  until h == []
    place = h[0]
    part = []
    until  h.include?(place) == false
      part << key[h.index(place)]
      key.delete_at(h.index(place))
      h.delete_at(h.index(place))
    end
    answer[place] = part
  end
  return answer
end






