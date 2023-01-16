# Реализуйте класс Student (Студент), который будет наследовать от класса User, подобно тому,
# как это сделано в теоретической части урока. Этот класс должен иметь следующие свойства:
# name (имя, наследуется от User), surname (фамилия, наследуется от User), year (год поступления в вуз).
# Класс должен иметь метод full name() (наследуется от User),
# с помощью которого можно вывести одновременно имя и фамилию студента.
# Также класс должен иметь метод course(), который будет выводить текущий курс студента (от 1 до 5).
# Курс вычисляется так: нужно от текущего года отнять год поступления в вуз.
# Текущий год получите самостоятельно.

class User
    attr_reader :name, :surname, :year
  
    def initialize(name, surname, year)
      @name = name
      @surname = surname
      @year = year
    end
  
    def full_name
      puts "#{surname} #{name}"
    end
  end
  
  class Student < User
    FIRST_COURSE = 1
    LAST_COURSE = 5
    def course
      current_course = Time.new.year - year + 1
      raise 'Incorrect entry year' unless current_course.between?(FIRST_COURSE, LAST_COURSE)
  
      puts "Current course: #{current_course}"
    end
  end