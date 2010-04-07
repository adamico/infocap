require File.dirname(__FILE__) + '/../spec_helper'

describe Category do
  it "should be valid" do
    Category.new.should be_valid
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
#

