require 'test_helper'

class ResearchDataTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ResearchData.new.valid?
  end
end
