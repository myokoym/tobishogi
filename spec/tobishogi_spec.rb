require 'rubygems'
require 'rspec'
require "tobishogi"

describe TobiShogi do
  it "右手側の駒を優先する"
  it "飛び越せるときは飛ぶ"
  it "飛び越せないときは手前の駒を進める"
  it "手前の駒がないときは二段目の駒を進める"
  it "何も動かせないときはそのまま"
end

