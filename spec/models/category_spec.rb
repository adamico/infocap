require File.dirname(__FILE__) + '/../spec_helper'

describe Category do
  before(:each) do
    @category = Factory.build(:category, :name => "value_for_name")
  end
  it "should be valid with name" do
    @category.should be_valid
  end
  describe "#full_abbrev" do
    before(:each) do
      @parent = Factory(:category, :name => "parent", :abbrev => "P")
      @grand_parent = Factory(:category, :name => "grand_parent", :abbrev => "GP")
      @parent.parent = @grand_parent
    end
    it "should append abbrev value to #parent.abbrev" do
      @category.abbrev = "S"
      @category.save
      @category.parent = @parent
      @category.full_abbrev.should == "GP-P-S"
    end
  end
end






# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#  parent_id  :integer
#  abbrev     :string(255)
#  notes      :text
#

