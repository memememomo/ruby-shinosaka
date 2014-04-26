class Bowling

  def calculator(data)
    result = 0
    data.each_with_index do |(first, second), i|
      result += first + second
    end
    result
  end

end
