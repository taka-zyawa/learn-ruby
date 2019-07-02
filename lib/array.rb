puts
puts '----- ループ -----'
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0

numbers.each do |n|
  sum += n
end
puts sum

puts
puts '----- 多値返却 -----'

def ret_array
  ["aだよ" "bですぞ"]
end

a, b = ret_array
puts a, b

puts
puts '----- map / collect -----'
c = numbers.map do |n|
  if n.even?
    n * 10
  else
    n
  end
end
puts c

puts
puts '----- select / find_all / reject -----'
puts numbers.select(&:even?)
puts
puts numbers.reject(&:even?)

puts
puts '----- find / detect -----'
puts numbers.detect(&:even?)

puts
puts '----- reduce / inject -----'
# puts numbers.reduce(0) { |result, n|
#   result + n
# }
puts numbers.reduce(0, &:+)

puts
puts '----- delete_if -----'
numbers.delete_if(&:odd?)
puts(numbers)
