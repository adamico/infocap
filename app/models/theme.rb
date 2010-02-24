class Theme < ActiveRecord::Base
  attr_accessible :name
  has_many :categories

  validates_presence_of :name
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

