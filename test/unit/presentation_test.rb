require 'test_helper'

class PresentationTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Presentation.new.valid?
  end
end
