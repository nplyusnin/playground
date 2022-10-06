require "benchmark"

require_relative "./lib/search.rb"
require_relative "./lib/sort.rb"

puts "Seeding test array"
a = (1..100_000_000).to_a
puts "Array seeded"

Benchmark.bm(10) do |x|
  x.report "Binary search" do
    Search.find_binary(a, 97_020_337)
  end

  x.report "Binary search" do
    Search.find_binary(a, 3_020_337)
  end

  x.report "Search" do
    Search.find(a, 97_020_337)
  end

  x.report "Search" do
    Search.find(a, 3_020_337)
  end
end

puts "Shuffling array"
b = (1..10_000).to_a.shuffle
puts "Array shuffled"

Benchmark.bm(10) do |x|
  x.report "Sort" do
    Sort.sort(b)
  end

  x.report "Quick sort" do
    Sort.qsort(b)
  end
end

