require 'test_helper'

class ResearcherTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Researcher.new.valid?
  end
end
