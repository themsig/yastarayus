puts 'Введите ваше имя:'
user_name = gets.strip
puts 'Введите ваш рост:'
user_weight = gets.strip.to_i
ideal_weight = (user_weight - 110) * 1.15
if ideal_weight > 0
puts "Ваш идеальный вес = #{ideal_weight.to_i}"
else
puts 'Ваш вес уже оптимальный'
end
