class Category < ActiveRecord::Base
  attr_accessible :name, :new_theme_name
  validates_presence_of :name

  has_many :infos
  belongs_to :theme

  attr_accessor :new_theme_name
  before_save :create_theme_from_name

  def create_theme_from_name
    create_theme(:name => new_theme_name) unless new_theme_name.blank?
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
#  theme_id   :integer
#

