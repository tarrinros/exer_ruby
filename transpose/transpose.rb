class Transpose
  def self.transpose(input)
    <<~EXPECTED
      #{self.make_columns(input).join}
    EXPECTED
  end

  private

  def self.make_rows(input)
    input.chars
  end

  def self.make_columns(input)
    self.make_rows(input).transpose
  end
end