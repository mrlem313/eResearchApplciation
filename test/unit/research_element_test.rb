require 'test_helper'

class ResearchElementTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ResearchElement.new.valid?
  end
end
