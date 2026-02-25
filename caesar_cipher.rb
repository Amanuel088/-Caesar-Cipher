def caesar_cipher(string,shift)
    result = ""
    string.each_char do |char|
      if ('a'..'z').include?(char)
        result << ((char.ord - 97 + shift) % 26 + 97).chr
      elsif ('A'..'Z').include?(char)
        result << ((char.ord - 65 + shift) % 26 + 65).chr
      else
        result << char
      end
    end
    return result
end