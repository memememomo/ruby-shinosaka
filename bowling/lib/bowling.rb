class Bowling

  def calculator(datas)
    result = 0
    datas = convert_garter(datas)
    datas.each_with_index do |(first, second), i|
      result += first + second
    end
    result
  end

  def convert_garter(datas)
    datas.map { |first, second| [first.to_s.sub(/\-/, "0").to_i, second.to_s.sub(/\-/, "0").to_i] }
  end

end
