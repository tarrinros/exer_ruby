class Transpose
  def self.transpose(input)
    self.make_columns(input)
  end

  private

  def self.make_rows(input)
    input.each_line.map { |row| row.chars }
  end

  def self.make_columns(input)
    self.make_rows(input).transpose
  end
end