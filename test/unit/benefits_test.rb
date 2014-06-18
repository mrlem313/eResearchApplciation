require 'test_helper'

class BenefitsTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Benefits.new.valid?
  end
end
