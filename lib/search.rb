module Search
  extend self

  def find(array, value)
    array.each do |item|
      return true if item == value
    end

    false
  end

  def find_binary(array, value)
    middle_index = (array.length - 1) / 2 
    middle = array[middle_index]
    first = array.first
    last = array.last

    if [first, middle, last].include?(value)
      return true
    elsif value > middle
      return false if array.length <= 2

      find_binary(array[middle_index..(array.length - 1)], value)
    else
      return false if array.length <= 2
      
      find_binary(array[0..middle_index], value)
    end
  end
end