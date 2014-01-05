# Refined Colors

Simple gem for colors via refinements in Ruby 2.1.0.

``` bash
$ gem install refined_colors
```

---

## Usage

``` ruby
using RefinedColors
'hello'.red # hello in red
'world'.blue # hello in blue
```

or show yourself the colors:

``` ruby
using RefinedColors

RefinedColors::COLORS.each do |color|
  eval "puts '#{color}'.#{color}" # not via send (indirect access)
end
```
