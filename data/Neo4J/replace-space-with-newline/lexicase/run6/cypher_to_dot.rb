#!/usr/bin/env ruby

puts "digraph G {"
File.open(ARGV[0]).each do |line|
  edge_line = /^\|\s+(\d+)\s+\|[^|]+\|\s+(\d+)\s+/.match(line)
  if edge_line then
    parent = edge_line[1]
    child = edge_line[2]
    puts "\t#{parent} -> #{child};"
  end
end
puts "}"
