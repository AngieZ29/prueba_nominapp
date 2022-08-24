class RangeArray
  def initialize(array)
    @array = array
  end

  def val_range
    val = @array.gsub(/[\[\]\s]*/, '').split(',').map(&:to_i)
    matrix = []
    j = 0
    min, max = val.minmax

    min..max.times do |i|
      if val.include?(i)
        if matrix[j]
          matrix[j] << i
        else
          matrix[j] = [i]
        end
      else
        j += 1
      end
    end

    matrix.compact.max { |a, b| a.size <=> b.size }.minmax
  end
end
