require 'rspec'
require 'bowling'

describe Bowling do

  context "特殊なスコアがないとき" do
    it "すべて1のときは20" do
      data = [[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1]]
      bowling = Bowling.new
      expect(bowling.calculator(data)).to eq 20
    end

    it "すべて2のときは40" do
      data = [[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]
      bowling = Bowling.new
      expect(bowling.calculator(data)).to eq 40
    end
  end

  context "ガータのみがあるとき" do
    skip
  end

  context "スペアがあるとき" do
    skip
  end

  context "ストライクがあるとき" do
    skip
  end
end
