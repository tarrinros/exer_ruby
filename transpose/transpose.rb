module StringToMatrix
  refine String do
    def string_to_matrix
      matrix = self.lines(chomp: true).map(&:chars)
      # fill the blanks with whitespaces, to have a complete matrix
      width = matrix.map(&:length).max
      matrix.map { |line| line.fill(" ", line.length, (width - line.length)) }
    end
  end
end

module MatrixToString
  refine Array do
    def matrix_to_string
      # generate the string, deleting the paddings to the right
      self.map { |line| line.join.rstrip }.join("\n")
    end
  end
end

class Transpose
  using StringToMatrix
  using MatrixToString

  def self.transpose(input)
    input.string_to_matrix.transpose.matrix_to_string
  end
end
