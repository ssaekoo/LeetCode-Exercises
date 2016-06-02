# Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.
#
# You may assume that the array is non-empty and the majority element always exist in the array.

def majority_element(nums)
    my_hash = Hash.new(0)
    nums.each do |x|
        my_hash[x] += 1
    end
    my_hash.max_by{|k,v| v}[0]
end
