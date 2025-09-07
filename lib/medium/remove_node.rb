
# This class contains remove node logic
class RemoveNode
    def remove_node(arr, int)
        arr.delete_at(arr.length - int)
        arr
    end
end
