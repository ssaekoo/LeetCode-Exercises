# Given two arrays, write a function to compute their intersection.

def intersection(nums1, nums2)
    nums1.uniq.select {|x| nums2.include?(x)}
end
