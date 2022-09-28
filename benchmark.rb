require "benchmark"

require_relative "./lib/search.rb"

a = (1..100_000_000).to_a

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


