# Given an array nums, write a function to move all 0's to the end of it while maintaining the relative order of the non-zero elements.
#
# For example, given nums = [0, 1, 0, 3, 12], after calling your function, nums should be [1, 3, 12, 0, 0].

def move_zeroes(nums)
    i = 0
    count = 0
    while count < nums.length - 1
        if nums[i] == 0
            nums << nums.delete_at(i)
        else
            i += 1
        end
        count += 1
    end
end
