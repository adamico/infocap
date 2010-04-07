class Category < ActiveRecord::Base
  acts_as_tree
  validates_presence_of :name

  has_many :infos
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

