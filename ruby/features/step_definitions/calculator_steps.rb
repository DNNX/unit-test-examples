$:.unshift(File.dirname(__FILE__) + '/../../lib')
require 'calculator'

Given /^I have entered ([-0-9._]+) and ([-0-9._]+) into the calculator$/ do |x, y|
  @x, @y = x.to_f, y.to_f
end

When /^I press "add"$/ do
  @result = Calculator.plus(@x, @y)
end

Then /^the result should be ([-0-9._]+) on the screen$/ do |result|
  @result.should == result.to_f
end
