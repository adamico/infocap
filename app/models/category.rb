class Category < ActiveRecord::Base
  attr_accessible :name
  has_many :infos

  validates_presence_of :name
end

# == Schema Information
#
# Table name: categories
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

