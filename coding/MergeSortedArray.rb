def merge(nums1, m, nums2, n)
    marged_index = m + n - 1
    tmp_array = Array.new(marged_index, 0)
    # print tmp_array

    while m-1 >= 0 && n-1 >= 0
        if nums1[m] > nums2[n]
            nums1[marged_index] = nums1[m]
            m -= 1
            marged_index -= 1
        else
            tmp_array[marged_index] = nums2[n]
            n -= 1
            marged_index -= 1
        end
    end
    return tmp_array
end

nums1 = [1,2,3,0,0,0]
m = 3
nums2 = [2,5,6]
n = 3

puts merge(nums1, m, nums2, n)