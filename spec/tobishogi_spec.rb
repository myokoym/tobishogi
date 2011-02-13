require 'rubygems'
require 'rspec'
require "tobishogi"

describe TobiShogi do
  subject { TobiShogi.new }
  it "右手側の駒を優先する" do
    subject.move("222000111").should == "222001110"
  end
  it "飛び越せるときは飛ぶ" do
    subject.move("202021110").should == "212021100"
  end
  it "飛び越せないときは手前の駒を進める" do
    subject.move("212001120").should == "212101020"
  end
  it "手前の駒がないときは二段目の駒を進める" do
    subject.move("012101220").should == "112001220"
  end
    
  it "何も動かせないときはそのまま"
end

