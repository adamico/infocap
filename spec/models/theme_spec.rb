require File.dirname(__FILE__) + '/../spec_helper'

describe Theme do
  it "should be valid" do
    Theme.new.should be_valid
  end
end

# == Schema Information
#
# Table name: themes
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

