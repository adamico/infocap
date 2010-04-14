class Category < ActiveRecord::Base
  acts_as_tree
  validates_presence_of :name

  has_many :infos

  attr_reader :full_abbrev

  def full_abbrev
    if attribute_present?("abbrev")
      ancestors_abbr = ancestors.reverse.map(&:abbrev).join("-") unless self.parent_id.nil?
      temp = ""
      temp = "#{ancestors_abbr}-" unless ancestors_abbr.nil?
      temp += "#{abbrev}"
      temp
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

