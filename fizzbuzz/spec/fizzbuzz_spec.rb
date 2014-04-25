require 'rspec'
require 'fizz_buzz'


describe FizzBuzz do
  before :each do
    @fizzbuzz = FizzBuzz.new
  end

  cases = [
    [1, 1],
    [2, 2],
    [3, "Fizz"],
    [4, 4],
    [5, "Buzz"],
    [6, "Fizz"],
    [7, 7],
    [8, 8],
    [9, "Fizz"],
    [10, "Buzz"],
    [11, 11],
    [12, "Fizz"],
    [13, 13],
    [14, 14],
    [15, "FizzBuzz"],
  ]

  cases.each do |input, expected|
    it "#{input}の場合は#{expected}" do
      expect(@fizzbuzz.do(input)).to eq(expected)
    end
  end
end
