require 'spec_helper'

describe RefinedColors do

  describe 'basic colors' do

    using RefinedColors

    # Basic colors are accessible
    RefinedColors::COLORS.each.with_index do |color, idx|
      it "should write in #{color}" do
        eval("'hello'.#{color}").should == "\e[#{30 + idx}mhello\e[0m"
      end
    end

  end

  it 'should have a version' do
    RefinedColors::VERSION.should_not be_empty
  end

end
