 require("pry")
class String
  define_method(:scrabble) do
    final_num = 0
    class_name = self.class
    if self.include?(" ")
      final_num = ""
    else
      entry_string = self.downcase
      array_one = ["a", "e", "i", "o", "u", "l", "n", "r", "s", "t"]
      array_two = ["d", "g"]
      array_three = ["b", "c", "m", "p"]
      array_four = ["f", "h", "v", "w", "y"]
      array_five = ["k"]
      array_eight = ["j", "x"]
      array_ten = ["q", "z"]
      entry_string.each_char do |letter|
        if array_one.include?(letter)
          final_num += 1
        elsif array_two.include?(letter)
          final_num += 2
        elsif array_three.include?(letter)
          final_num += 3
        elsif array_four.include?(letter)
          final_num += 4
        elsif array_five.include?(letter)
          final_num += 5
        elsif array_eight.include?(letter)
          final_num += 8
        elsif array_ten.include?(letter)
          final_num += 10
        end
      end
    end
    final_num
  end
end
puts("potato")
