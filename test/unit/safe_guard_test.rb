require 'test_helper'

class SafeGuardTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert SafeGuard.new.valid?
  end
end
