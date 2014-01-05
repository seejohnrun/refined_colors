require_relative 'refined_colors/version'

module RefinedColors

  COLORS = [:black, :red, :green, :yellow, :magenta, :cyan, :white]

  refine String do

    # Define color methods
    COLORS.each.with_index do |color, idx|
      define_method(color) do
        "\e[#{30 + idx}m#{self}\e[0m"
      end
    end

  end

end
