require "prawn"

#create method to control alignment for each box

def align(num)
    if num < 10
        "  #{num}"
    else
        " #{num}"
    end
end

# select 5 random element per column

b_col = (1..15).to_a.sample(5)
i_col = (16..30).to_a.sample(5)
n_col = (31..45).to_a.sample(4)
g_col = (46..60).to_a.sample(5)
o_col = (61..75).to_a.sample(5)

# insert a bingo template and manually assign a number to each box

bingo_card = <<-BINGO
+-----+-----+-----+-----+-----+
|  B  |  I  |  N  |  G  |  O  |
+-----+-----+-----+-----+-----+
| #{align(b_col[0])} | #{align(i_col[0])} | #{align(n_col[0])} | #{align(g_col[0])} | #{align(o_col[0])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[1])} | #{align(i_col[1])} | #{align(n_col[1])} | #{align(g_col[1])} | #{align(o_col[1])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[2])} | #{align(i_col[2])} |  F  | #{align(g_col[2])} | #{align(o_col[2])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[3])} | #{align(i_col[3])} | #{align(n_col[3])} | #{align(g_col[3])} | #{align(o_col[3])} |
+-----+-----+-----+-----+-----+
| #{align(b_col[4])} | #{align(i_col[4])} | #{align(n_col[3])} | #{align(g_col[4])} | #{align(o_col[4])} |
+-----+-----+-----+-----+-----+
BINGO

puts bingo_card

#######################################################################################

# creater header row
# insert F into n column box 3. (rmb box 3 index is 2)
header = ["B", "I", "N", "G", "O"]
n_col.insert(2, "F")

# use prawn to pull the pdf

Prawn::Document.generate("bingo_card.pdf") do
  define_grid(columns: 5, rows: 6)

  header.each_with_index do |h, i|
    grid(0, i).bounding_box do
        stroke_bounds
        text h, align: :center, valign: :center, size: 50, style: :bold
    end
  end

  b_col.each_with_index do |num, i|
    grid((i + 1), 0).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end
  end

  i_col.each_with_index do |num, i|
    grid((i + 1), 1).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end
  end

  n_col.each_with_index do |num, i|
    grid((i + 1), 2).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end
  end

  g_col.each_with_index do |num, i|
    grid((i + 1), 3).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end
  end

  o_col.each_with_index do |num, i|
    grid((i + 1), 4).bounding_box do
        stroke_bounds
        text num.to_s, align: :center, valign: :center, size: 50
    end
  end

end

