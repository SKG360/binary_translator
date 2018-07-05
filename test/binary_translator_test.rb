require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/binary_translator.rb'


class BinaryTranslatorTest < Minitest::Test

  def test_hash_position_a
    bt = BinaryTranslator.new("000001")
    assert_equal("000001", bt.translate_a("a"))
  end

  def test_hash_position_z
    bt = BinaryTranslator.new("011010")
    assert_equal("011010", bt.translate_z("z"))
  end

  def test_turing_hash
    bt = BinaryTranslator.new("010100010101010010001001001110000111")
    assert_equal(["010100010101010010001001001110000111"], bt.translate("turing"))
  end

  def test_for_capital_a
    bt = BinaryTranslator.new("000001")
    assert_equal("000001", bt.translate_a("A"))
  end

  def test_for_capital_z
    bt = BinaryTranslator.new("011010")
    assert_equal("011010", bt.translate_z("Z"))
  end

  def test_for_blank_space
    bt = BinaryTranslator.new("000000")
    assert_equal("000000", bt.translate_blank(" "))
  end

  def test_for_symbols
    bt = BinaryTranslator.new("!@{$#%^&*()}")
    assert_equal("!@{$#%^&*()}", bt.translate_symbol("!@{$#%^&*()}"))
  end

  def test_for_hello_world
    bt = BinaryTranslator.new("Hello World!")
    assert_equal("001000000101001100001100001111000000010111001111010010001100000100", bt.translate_hello("Hello World!"))
  end
end

# class TuringTest < Minitest::Test
#   def test_turing_hash
#     bt = BinaryTranslator.new("011010")
#     t = BinaryTranslator.new("010100")
#     u =
#     turing = TuringTest.new()
#
#     assert_equal("011010", bt.translate_z("z"))
#   end
# end
