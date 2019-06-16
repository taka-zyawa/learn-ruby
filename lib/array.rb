puts
puts '----- ループ -----'
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
sum = 0

numbers.each do |n|
  sum+= n
end
puts sum

puts
puts '----- 多値返却 -----'
def ret_array
  %w(aだよ bですぞ)
end

a, b = ret_array
puts a, b

puts
puts '----- delete_if -----'
numbers.delete_if(&:odd?)
puts(numbers)
