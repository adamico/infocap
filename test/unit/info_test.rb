require 'test_helper'

class InfoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Info.new.valid?
  end
end
