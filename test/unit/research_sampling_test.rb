require 'test_helper'

class ResearchSamplingTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ResearchSampling.new.valid?
  end
end
