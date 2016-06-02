# Given two arrays, write a function to compute their intersection.

def intersect(nums1, nums2)
    duped = nums2.dup
    result = []
    nums1.each do |x|
        my_index = duped.index(x)
        result << duped.delete_at(my_index) if my_index
    end
    result
end
