puts 'Введите основание треугольника:'
bottom_triangle = gets.to_i
puts 'Введите высоту треугольника:'
height_triangle = gets.to_i
plsh_triangle = 1.0 / 2 * bottom_triangle * height_triangle
puts "Площадь треугольника = #{plsh_triangle}"
