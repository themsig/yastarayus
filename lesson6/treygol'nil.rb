# Николаю требуется проверить, возможно ли из представленных отрезков условной длины сформировать треугольник.
# Для этого он решил создать класс TriangleChecker, принимающий только положительные числа.
# С помощью метода is triangle() возвращаются следующие значения (в зависимости от ситуации):
# – Ура, можно построить треугольник!;
# – С отрицательными числами ничего не выйдет!;
# – Нужно вводить только числа!;
# – Жаль, но из этого треугольник не сделать.

class TriangleChecker
    attr_reader :side_a, :side_b, :side_c
  
    def initialize(side_a, side_b, side_c)
      @side_a = side_a
      @side_b = side_b
      @side_c = side_c
    end
  
    def is_triangle?
      if side_a.to_i != side_a || side_b.to_i != side_b || side_c.to_i != side_c
        puts 'Нужно вводить только числа!'
      elsif side_a.negative? || side_b.negative? || side_c.negative?
        puts 'С отрицательными числами ничего не выйдет!'
      elsif side_a + side_b > side_c && side_b + side_c > side_a && side_a + side_c > side_b
        puts 'Ура, можно построить треугольник!'
      else
        puts 'Жаль, но из этого треугольник не сделать.'
      end
    end
  end