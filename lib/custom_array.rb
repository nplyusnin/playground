module CustomArray
  extend self

  def min(array)
    return if array.size == 0

    min = array.first

    array.each do |item|
      min = item if item < min
    end

    min
  end
end