def filter_arr(arr, method=:itself)
  arr.public_send(method)
end

a = [1,1,2,2,3,5,6]
filter_arr(a, :uniq)
filter_arr(a)
