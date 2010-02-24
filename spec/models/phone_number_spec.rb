require File.dirname(__FILE__) + '/../spec_helper'

describe PhoneNumber do
  it "should be valid" do
    PhoneNumber.new.should be_valid
  end
end
