$:.unshift File.expand_path('../../lib', __FILE__)
require 'calculator'

describe Calculator, '#eval' do
  [
    [      2,       2,       4],
    [     -3,      -4,      -7],
    [      0,       0,       0],
    [100_500, 100_500, 201_000],
    [   1.25,     2.5,    3.75],
    [     10,     -10,       0]
  ].each do |x, y, sum|
    it "should evaluate #{x} + #{y} as #{sum}" do
      Calculator.plus(x, y).should == sum
    end
  end
end
