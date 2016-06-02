# Related to question Excel Sheet Column Title
#
# Given a column title as appear in an Excel sheet, return its corresponding column number.

def title_to_number(s)
    ords = s.each_byte.to_a.reverse
    ords.length.times do |i|
        ords[i] = ords[i] % 64 * 26 ** i
    end
    ords.inject(:+)
end
