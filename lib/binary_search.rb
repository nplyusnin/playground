module BinarySearch
  extend self

  def find(array, value)
    array.each do |item|
      return true if item == value
    end

    false
  end
end