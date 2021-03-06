class Info < ActiveRecord::Base
  include AASM
  aasm_column :state
  aasm_initial_state :unverified

  aasm_state :verified
  aasm_state :unverified
  aasm_state :invalid

  aasm_event :verifier do
    transitions :to => :verified, :from => :unverified
  end

  aasm_event :suspend do
    transitions :to => :unverified, :from => :invalid
  end

  aasm_event :disable do
    transitions :to => :invalid, :from => :verified
  end

  validates_presence_of :name

  belongs_to :category

  attr_accessor :new_category_name
  before_save :create_category_from_name
  
  def phone_numbers_list
    string = []
    string << telephone unless telephone.blank?
    string << raccourci + " (raccourci)" unless raccourci.blank?
    string << fax  + " (fax)" unless fax.blank?
    string.join(', ')
  end

  def full_address
    string = []
    string << adresse unless adresse.blank?
    string << cp.to_s unless cp.blank?
    string << "- " + ville unless ville.blank?
    string.join(' ')
  end

  private
  def create_category_from_name
    create_category(:name => new_category_name) unless new_category_name.blank?
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
#  state       :string(255)
#

