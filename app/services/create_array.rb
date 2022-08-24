class CreateArray
  def initialize(size_array)
    @size_array = size_array
  end

  def val_array
    @array = Array.new(@size_array)

    @array.each_with_index do |_, idx|
      @array[idx] = val_num
    end

    return @array.sort
  end

  private

  def val_num
    num = rand(0..30)
    if @array.include?(num)
      val_num
    else
      return num
    end
  end
end
