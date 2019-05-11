require 'pry'

class Transpose
  def self.transpose(input)
    <<~EXPECTED
      #{self.make_columns(input)}
    EXPECTED
  end

  private

  def self.make_rows(input)
    a = input.each_line.map { |row| row.scan(/./) }

    max_length = a.max.length

    a.each do |e|
      while e.length != max_length
        e.push(" ")
      end
    end
  end

  def self.make_columns(input)
    a = self.make_rows(input)
    binding.pry
  end
end
#
# input = <<~INPUT.strip
#       The first line.
#       The second line.
# INPUT
#
# Transpose.transpose(input)