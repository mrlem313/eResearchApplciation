require 'test_helper'

class DataAnalysisMethodTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert DataAnalysisMethod.new.valid?
  end
end
