require 'test_helper'

class CoResearcherTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert CoResearcher.new.valid?
  end
end
