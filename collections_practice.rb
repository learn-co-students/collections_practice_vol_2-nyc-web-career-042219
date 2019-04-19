require 'pry'
def begins_with_r(array)
  array.all? do |r|
    r[0] == "r"
  end
end

def contain_a(array)
words_with_a = []
  array.map do |a|
    if a.include?("a")
      words_with_a << a
    end
  end
  words_with_a
end

def first_wa(array)
  array.find do |word|
    word.match("wa")
  end
end

def remove_non_strings(array)
  strings = []
  array.each do |obj|
    if obj.class == String
      strings << obj
    end
  end
  strings.compact
end

def count_elements(array)
  array.group_by(&:itself).map do |k, v|
    k.merge(count: v.length)
  end
end

def merge_data(v1, v2)
  v2[0].values.map.with_index {|v, i| v1[i].merge(v)}
  end

def find_cool(hash)
  cool = []
  hash.each do |h|
    if h.has_value?("cool")
    cool << h
    end
  end
  cool
  end

def organize_schools(hash)
  locations_hash = {}
      schools.collect {|k,v| locations_hash[v[:location]] = []}
      locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
  end
