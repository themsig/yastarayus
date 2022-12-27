side = []
puts 'Введите первую сторону:'
a = gets.to_i
side << a
puts 'Введите вторую сторону:'
b = gets.to_i
side << b
puts 'Введите третью сторону:'
c = gets.to_i
side << c

max_side = side.max
side.delete(max_side)


if a == b && a == c
    puts 'Прямоугольник равнобедренный и равносторонний'
elsif a == b || b == c || a == c 
    puts 'Прямоугольник равнобедренный'
elsif max_side * max_side == side[0] * side[0] + side[1] * side[1]
    puts 'Треугольник является прямоугольным '
else
    puts 'Треугольник не попадает под условия'
end
