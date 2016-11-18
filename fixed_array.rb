class FixedArray
  attr_accessor :array

  class IndexOutOfBoundsError < StandardError
  end

  def initialize(size)
    @array = Array.new(size)
  end

  def get(index)
    raise IndexOutOfBoundsError if index.to_i >= self.array.length || index < 0
    @array[index]
  end

  def set(index, element)
    raise IndexOutOfBoundsError if index.to_i >= self.array.length || index < 0
    @array[index] = element
  end
end
