require 'test_helper'

class RequestedDataTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert RequestedData.new.valid?
  end
end
