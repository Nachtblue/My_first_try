def find_median_sorted_arrays(nums1, nums2)
  new=nums1+nums2


  if new.length <1
    return new[0].to_f.round(5)
  elsif  new.length % 2 == 1
     return new[new.length/2].to_f.round(5)
  else
    return (new[(new.length/2-1)] + new[new.length/2] ).to_f/ 2
  end
  end

nums1 = [1,3]
nums2 = [4,5]
print find_median_sorted_arrays(nums1, nums2)