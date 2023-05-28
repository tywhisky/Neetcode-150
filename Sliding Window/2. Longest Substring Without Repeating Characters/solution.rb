def length_of_longest_substring(s)
    max_substring_length = this_substring_length = start = last = 0
    visited = {}

    while last < s.length
        char_at_last = s[last]
        if visited.key?(char_at_last) && (start..last).member?(visited[char_at_last])
            start = visited[char_at_last] + 1
            visited[char_at_last] = last
        else
            visited[char_at_last] = last
        end

        this_substring_length = last - start + 1
        max_substring_length = this_substring_length if this_substring_length > max_substring_length
        last += 1
    end

    max_substring_length
end
