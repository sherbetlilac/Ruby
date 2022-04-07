require "prawn"

Prawn::Document.generate("bingo.pdf") do
  define_grid(columns:5, rows: 6)

  header.each_with_index do |char, i|
    grid(0,1).bounding_box do
        stroke_bounds
        text char, align: :center, valign: :center, size: 50, style: :bold
    end
  end
end