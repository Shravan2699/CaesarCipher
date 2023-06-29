class Str
  def is_upper?
    self == self.upcase
  end

  def is_lower?
    self == self.downcase
  end
end


 
class NewStr 
  def caesar_cipher(text,shift)
    if text.class == Integer
      return -1
    end
    small_letters = ('a'..'z').to_a
    capital_letters =  ('A'..'Z').to_a
    input_text = text.split("")
    # p input_text
    result = input_text.map do |current|
      if !small_letters.include?(current) && !capital_letters.include?(current)
        current
      elsif current.upcase == current
        if (capital_letters.find_index(current)+shift) < 26
            (capital_letters[capital_letters.find_index(current)+shift])
        else
            (capital_letters[(capital_letters.find_index(current)+shift) - 26])
        end
      elsif current.downcase == current
        if (small_letters.find_index(current)+shift) < 26
            (small_letters[small_letters.find_index(current)+shift])
        else
            (small_letters[(small_letters.find_index(current)+shift) - 26])
        end
      end
    end
    result.join("")
  end
end

