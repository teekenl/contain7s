require "test/unit/assertions"
include Test::Unit::Assertions


def contain7s(n)
  return 0 if n.to_i <= 0

  count = 0
  (1..n).each do |n|
    count += 1 if n.to_s.include?('7')
  end

  count
end

def main()
  begin
    [[0, 0],[7,1], [20, 2], [70, 8], [100, 19], [1000, 271]].each do |(input, expected)|
      result = contain7s(input)
      assert(
        result == expected, 
        "The result #{result} is wrong given the input value: #{input}. Expected value: #{expected}"
      )
    end
  rescue => e
    puts "Oops! The test case failed."
    puts e.message
    
    return
  end

  puts "Gratz!!! The contain7s method looks fine. It passed the test case."
end

main()