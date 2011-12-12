require 'test_helper'
require 'sass/script'

class IeHexStrText < Test::Unit::TestCase
  def test_named_color
    assert_equal("#ffffffff", evaluate("ie_hex_str(#ffffff)"))
  end

  def test_rgba_color
    assert_equal("#1affffff", evaluate("ie_hex_str(rgba(255, 255, 255, 0.1))"))
  end

  def test_rgb_color
    assert_equal("#ffffffff", evaluate("ie_hex_str(rgb(255, 255, 255))"))
  end

  def test_hsl_color
    assert_equal("#ffffffff", evaluate("ie_hex_str(hsl(100%, 100%, 100%))"))
  end

  private

  def evaluate(value)
    Sass::Script::Parser.parse(value, 0, 0).perform(Sass::Environment.new).to_s
  end
end
