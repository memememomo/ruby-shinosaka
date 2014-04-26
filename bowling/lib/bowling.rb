class Bowling

  def calculator(data)
    result = 0
    data = convert_garter(data)

    @flag = false
    data.each do |first, second, third|
      third = 0 if third.nil?

      if @flag == true
        result += first
        @flag = false
      end

      if second == "/"
        result += 10 + third
        @flag = true
      else
        result += first + second
      end
    end

    result
  end

  def convert_garter(data)
    data.map { |d| d.map {|val| val == "-" ? 0 : val} }
  end

end
