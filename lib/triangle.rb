class Triangle
  # write code here
  def initialize len1, len2, len3
    @len1 = len1
    @len2 = len2
    @len3 = len3
  end

  def kind
    lengths = [@len1, @len2, @len3].sort
    if lengths[0] >= 0 && lengths[0] + lengths[1] > lengths[2]
      if lengths.uniq.size == 2
        return :isosceles
      elsif lengths.uniq.size <= 1
        return :equilateral
      elsif lengths.uniq.size == lengths.size
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
