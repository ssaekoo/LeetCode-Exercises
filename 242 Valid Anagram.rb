Given two strings s and t, write a function to determine if t is an anagram of s.

def is_anagram(s, t)
    s.chars.sort == t.chars.sort
end
