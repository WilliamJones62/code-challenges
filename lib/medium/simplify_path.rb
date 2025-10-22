# frozen_string_literal: true

# This class contains simplify path logic
class SimplifyPath
    def simplify_path(str)
        # Rule 1. Start with '/'
        if !str[0] = '/'
            puts "Invalid path, must start '/'"
            return
        end
        result = str
        # Rule 2. Replace multiple '/' with single '/'
        result.squeeze!("/")
        # Rule 3. Remove '/./'
        result.gsub!(/\/\.\//, "")
        # Rule 4. Remove '/../'
        result.gsub!(/[^\/]*\/\.\.\//, "")
        # Rule 5. Remove trailing '/' unless the string is length 1
        result.chop! if result.length > 1 && result[result.length - 1] == '/'
        # Rule 6. Result should be '/' not ''
        result = '/' if result == ''
        result
    end
end