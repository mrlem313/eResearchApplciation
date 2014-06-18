require 'test_helper'

class ResearchBenefitAndRiskTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert ResearchBenefitAndRisk.new.valid?
  end
end
