require 'test_helper'

class SturingTest < Minitest::Test
  def setup
    @st = ::Sturing::STuringMachine.new
  end
  def test_that_it_has_a_version_number
    refute_nil ::Sturing::VERSION
  end

  def test_turing_machine_initializer
    st1 = ::Sturing::STuringMachine.new
    assert_equal "          ", st1.get_cells
  end

  def test_turing_machine_initializer_with_length
    st2 = ::Sturing::STuringMachine.new(7)
    assert_equal "       ", st2.get_cells
  end
end
