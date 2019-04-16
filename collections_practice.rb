require "pry"

def begins_with_r(tools)
  tools.each do | tool |
     if tool[0].downcase != "r" 
      return false
    end
  end
return true
end

def contain_a(elements)
  elements.map {|ele| ele.include?("a") ? ele : nil}.compact
end

def first_wa(elements)
  elements.find {|ele| ele.to_s.include?("wa")}
end

def remove_non_strings(elements)
  elements.delete_if {|ele| ele.to_s != ele}
end

def count_elements(elements)
  count = Hash.new(0)
  elements.each { |ele| count[ele] += 1}
    count.each {|k,v| k[:count] = v }
    return count.keys
end

def merge_data(keys, data)
  merged = []
  keys.each {|i| data.first.map {|k,v| if i.values[0] == k then merged << i.merge(v) end}}
  merged
end

 def find_cool(cool)
    cool.select {|i| i.any? {|k,v| v == "cool"}} 
end

 def organize_schools(schools)
    locations_hash = {}
    schools.collect {|k,v| locations_hash[v[:location]] = []}
    locations_hash.each {|k,v| schools.each {|k1,v1| if k == v1[:location] then v << k1  end}}
end