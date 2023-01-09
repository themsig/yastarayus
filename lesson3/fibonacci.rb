def fibonacci(number)
  fibonacci_numbers = []
  fib1 = 0
  fib2 = 1

  number.times do
    fibonacci_numbers << fib1
    fib1, fib2 = fib2, fib1 + fib2
  end
  fibonacci_numbers
end

fibonacci(10_000)
