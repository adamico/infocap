class Info < ActiveRecord::Base
  attr_accessible :name, :notes, :url
  attr_accessible :telephone, :fax, :raccourci
  attr_accessible :adresse, :cp, :ville

  validates_presence_of :name
  
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
end
