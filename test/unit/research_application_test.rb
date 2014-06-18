require 'test_helper'

class ResearchApplicationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ResearchApplication.new.valid?
  end
end
