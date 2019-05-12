require 'pry'

class Transpose
  def self.transpose(input)
    result = []
    input.each_line.with_index do |line, index|
      # binding.pry

      line.strip.each_char.with_index do |char, i|
        result[i] = "%-#{index}s" % result[i]
        result[i] += char
        binding.pry

      end
    end

    result.join("\n")
  end
end

# class Transpose
#   def self.transpose(input)
#     lines = input.split("\n").map(&:each_char)
#     lines.first.zip(*lines[1..-1]).inject("") do |result, x|
#       result << x.join << "\n"
#     end
#   end
# end

# class Transpose
#   def self.transpose(input)
#     if input.empty?
#       return ""
#     else
#       rows = input.each_line.map { |row| row.scan(/./) }
#
#       max_length = rows.map(&:size).max
#
#       bar = rows.map { |e| e.concat(Array.new(max_length - e.length, " ")) }
#
#       bar.transpose.map(&:join).join("\n").strip
#     end
#   end
# end

# class Transpose
#   def self.transpose(input)
#     lines = input.split("\n").map(&:each_char)
#
#     max_length = lines.map(&:size).max || 0
#
#     ([" "] * max_length << "\n").zip(*lines).inject("") do |result, x|
#       x.shift
#       result << x.map { |x| x.nil? ? " " : x }.join.rstrip << "\n"
#     end.rstrip
#   end
# end


input = <<~INPUT.strip
  The longest line.
  A long line.
  A longer line.
  A line.
INPUT

Transpose.transpose(input)

# expected = <<~EXPECTED.strip
#   TAAA
#   h
#   elll
#    ooi
#   lnnn
#   ogge
#   n e.
#   glr
#   ei
#   snl
#   tei
#    .n
#   l e
#   i .
#   n
#   e
#   .
# EXPECTED