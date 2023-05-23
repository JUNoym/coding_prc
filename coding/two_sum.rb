def two_sum(nums, target)
    hash = Hash.new
    nums.each_with_index do |num, i|    
        tmp = target - nums
        if hash[tmp] == nil
            hash[num] = i
        else
            return hash[tmp], i
        end
    end
end
