require 'rspec'
require 'bowling'

describe Bowling do

  let(:bowling) {Bowling.new}

  context "特殊なスコアがないとき" do
    it "すべて1のときは20" do
      data = [[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1]]
      expect(bowling.calculator(data)).to eq 20
    end

    it "すべて2のときは40" do
      data = [[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2],[2,2]]
      expect(bowling.calculator(data)).to eq 40
    end
  end

  context "ガータがあるとき" do
    it "すべてガータのときは0" do
      data = [["-","-"],["-","-"],["-","-"],["-","-"],["-","-"],["-","-"],["-","-"],["-","-"],["-","-"],["-","-"]]
      expect(bowling.calculator(data)).to eq 0
    end
    it "ガータと数字が含まれるとき" do
      data = [["-",1],[1,"-"],["-",1],[1,"-"],["-",1],[1,"-"],["-",1],[1,"-"],["-",1],[1,"-"]]
      expect(bowling.calculator(data)).to eq 10
    end
 end

  context "スペアがあるとき" do
    it "10投目以外にスペアが1回だけあるとき" do
      data = [[1,1],[1,1],[1,"/"],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1]]
      expect(bowling.calculator(data)).to eq 29
    end
    it "10投目以外にスペアが2回あるとき" do
      data = [[1,1],[1,1],[1,"/"],[1,1],[1,"/"],[1,1],[1,1],[1,1],[1,1],[1,1]]
      expect(bowling.calculator(data)).to eq 38
    end
    it "10投目以外にスペアが2回連続あるとき" do
      data = [[1,1],[1,1],[1,"/"],[1,"/"],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1]]
      expect(bowling.calculator(data)).to eq 38
    end
    it "10投目以外にスペアが3回連続あるとき" do
      data = [[1,1],[1,1],[1,"/"],[1,"/"],[1,"/"],[1,1],[1,1],[1,1],[1,1],[1,1]]
      expect(bowling.calculator(data)).to eq 47
    end

    context "10投目がスペアの時" do
      it "10投目がの3回めがガータではない" do
        data = [[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,"/",1]]
        expect(bowling.calculator(data)).to eq 29
      end

      it "10投目がの3回めがガータ" do
        data = [[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,1],[1,"/","-"]]
        expect(bowling.calculator(data)).to eq 28
      end

      it "10投目以外がが全部スペアで10投目もスペア" do
        data = [[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/"],[1,"/","-"]]
        expect(bowling.calculator(data)).to eq 28
      end
    end
  end


  context "ストライクがあるとき" do
    skip
  end
end
