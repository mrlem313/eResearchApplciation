require 'test_helper'

class MethodologyResearchDesignInfoTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MethodologyResearchDesignInfo.new.valid?
  end
end
