def caesar_cipher(string, shift)
  result = ''
  string.each_char.map do |char|
    if char.match?(/[a-z]/i)
      base = char.match?(/[a-z]/) ? "a".ord : "A".ord
      result << (char.ord - base + shift) % 26 + base
    else
      result << char
    end
  end
  result
end

puts caesar_cipher("What a string!", 5)
#=> "Bmfy f xywnsl!"
