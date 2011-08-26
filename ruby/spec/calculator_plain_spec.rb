$:.unshift File.expand_path('../../lib', __FILE__)
require 'calculator'

describe Calculator, '#eval' do
  it 'should evaluate 2 + 2 as 4' do
    Calculator.plus(2, 2).should == 4
  end

  it 'should evaluate (-3) + (-4) as -7' do
    Calculator.plus(-3, -4).should == -7
  end

  it 'should evaluate 0 + 0 as 0' do
    Calculator.plus(0, 0).should == 0
  end

  it 'should evaluate 100_500 + 100_500 as 201_000' do
    Calculator.plus(100_500, 100_500).should == 201_000
  end

  it 'should evaluate 1.25 + 2.5 as 3.75' do
    Calculator.plus(1.25, 2.5).should == 3.75
  end

  it 'should evaluate 10 + (-10) as 0' do
    Calculator.plus(10, -10).should == 0
  end
end
