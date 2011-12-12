require "sass"

module Sass::Script::Functions
  # returns an IE hex string for a color with an alpha channel
  # suitable for passing to IE filters.
  # see http://msdn.microsoft.com/en-us/library/ms532930%28v=vs.85%29.aspx
  def ie_hex_str(color)
    assert_type color, :Color
    alpha = (color.alpha * 255).round
    alpha = alpha.to_s(16).rjust(2, '0')
    color_string = color.rgb.map {|num| num.to_s(16).rjust(2, '0')} .join

    Sass::Script::String.new("##{alpha}#{color_string}")
  end
  declare :ie_hex_str, :args => [:color]
end