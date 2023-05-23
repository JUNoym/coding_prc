n = gets.chomp.to_i
s = gets.chomp.split('')


def returnMaxLevel(n, s)
    max_level = -1
    current_level = 0

    if !s.include?('-') || !s.include?('o')
        return max_level
    else

        s.each do |ss|
            if ss == 'o'
                current_level += 1
            elsif ss == '-'
                max_level = [max_level, current_level].max
                current_level = 0 
            end
        end

        if current_level > 0
            if s[n - current_level - 1] == '-'
                max_level = [max_level, current_level].max
            end
        end

        return max_level
    end
end



puts returnMaxLevel(n, s)