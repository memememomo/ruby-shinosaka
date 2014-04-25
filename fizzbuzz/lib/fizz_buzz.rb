
class FizzBuzz
  def do(number)
    ret = ""
   if number % 3 == 0
      ret << "Fizz"
   end
   if number % 5 == 0
      ret << "Buzz"
   end

   ret.empty? ? number : ret
  end
end
