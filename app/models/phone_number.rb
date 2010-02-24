class PhoneNumber < ActiveRecord::Base
  attr_accessible :thenumber, :info_id
  belongs_to :info
end
