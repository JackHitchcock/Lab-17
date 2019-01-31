# Lab 1
# Part I
def sum arr
  (!arr.nil? and arr.any?) ? arr.inject(0, :+) : 0  
end

# Part II
def max_2_sum arr
if arr.nil? or arr.empty?
    0
  elsif arr.length == 1
    arr.first
  else
    max = arr.sort[-2..-1]
    max.first + max.last
end
end

# Part III
def sum_to_n? arr, n
  #   return false if arr.nil? or arr.empty? or arr.length == 1
  arr.each do |first|
    arr.each do |second|
      return true if (first + second == n) and first != second
    end
  end
  false
  return false if arr.nil? or arr.empty? or arr.length == 1
  arr.each do |first|
    arr.each do |second|
      return true if (first + second == n) and first != second
    end
  end
  false
end
