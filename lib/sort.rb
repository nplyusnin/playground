module Sort
  extend self

  def qsort(array)
    if array.length < 2
      array
    else
      pivot_index = rand(0..(array.length - 1))
      pivot = array.delete_at(pivot_index)

      greater, less = [], []

      array.each do |item|
        if item <= pivot
          less << item
        else
          greater << item
        end
      end

      qsort(less) + [pivot] + qsort(greater)
    end
  end
end