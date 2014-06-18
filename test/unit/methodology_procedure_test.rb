require 'test_helper'

class MethodologyProcedureTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert MethodologyProcedure.new.valid?
  end
end
