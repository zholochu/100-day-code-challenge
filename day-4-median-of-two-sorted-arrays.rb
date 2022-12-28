# Given two sorted arrays nums1 and nums2 of size m and n respectively, return the median of the two sorted arrays.
# The overall run time complexity should be O(log (m+n)).



def find_median_sorted_arrays(nums1, nums2)
  m, n = nums1.length, nums2.length
  if m > n
    nums1, nums2, m, n = nums2, nums1, n, m
  end

  if n == 0
    raise "Both arrays cannot be empty"
  end

  imin, imax, half_len = 0, m, (m + n + 1) / 2
  while imin <= imax
    i = (imin + imax) / 2
    j = half_len - i
    if i < m && nums2[j - 1] > nums1[i]
      # i is too small, must increase it
      imin = i + 1
    elsif i > 0 && nums1[i - 1] > nums2[j]
      # i is too big, must decrease it
      imax = i - 1
    else
      # i is perfect
      if i == 0
        max_of_left = nums2[j - 1]
      elsif j == 0
        max_of_left = nums1[i - 1]
      else
        max_of_left = [nums1[i - 1], nums2[j - 1]].max
      end

      if (m + n).odd?
        return max_of_left
      end

      if i == m
        min_of_right = nums2[j]
      elsif j == n
        min_of_right = nums1[i]
      else
        min_of_right = [nums1[i], nums2[j]].min
      end

      return (max_of_left + min_of_right) / 2.0
    end
  end
end
