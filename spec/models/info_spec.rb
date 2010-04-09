require File.dirname(__FILE__) + '/../spec_helper'

describe Info do
  it "should be valid" do
    Info.new.should be_valid
  end
end




# == Schema Information
#
# Table name: infos
#
#  id          :integer         not null, primary key
#  name        :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  raccourci   :string(255)
#  telephone   :string(255)
#  fax         :string(255)
#  adresse     :string(255)
#  ville       :string(255)
#  cp          :integer
#  notes       :string(255)
#  url         :string(255)
#  category_id :integer
#  person      :string(255)
#

