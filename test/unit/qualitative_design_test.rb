require 'test_helper'

class QualitativeDesignTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert QualitativeDesign.new.valid?
  end
end
