require_relative '../lib/refined_colors'

module Helper
  using RefinedColors
  def practice(str)
    eval str
  end
end

RSpec.configure do |c|
  c.include Helper
end
