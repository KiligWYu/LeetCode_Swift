# LeetCode_Swift

LeetCode & Swift

## 数据结构

- [数组](#数组)
- 字符串
- 链表
- 栈
- 队列
- 散列表
- 二叉树
- 堆


### 数组

| 标题                                                                                                | 题解                                                                                                           | 难度 | 时间复杂度 | 空间复杂度 |
|:---------------------------------------------------------------------------------------------------|:--------------------------------------------------------------------------------------------------------------:|:----:|:----------:|:----------:|
| [1. 两数之和](https://leetcode-cn.com/problems/two-sum/)                                            | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/1_TwoSum.swift)                           | 简单 | O(n)       | O(n)       |
| [11. 盛最多水的容器](https://leetcode-cn.com/problems/container-with-most-water/)                   | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/11_ContainerWithMostWater.swift)          | 中等 | O(n)       | O(1)       |
| [15. 三数之和](https://leetcode-cn.com/problems/3sum/)                                              | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/15_ThreeSum.swift)                        | 中等 | O(n^2)     | O(logn)    |
| [16. 最接近的三数之和](https://leetcode-cn.com/problems/3sum-closest/)                              | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/16_3SumClosest.swift)                     | 中等 | O(n^2)     | O(nC3)     |
| [18. 四数之和](https://leetcode-cn.com/problems/4sum/)                                              | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/18_4Sum.swift)                            | 中等 | O(n^3)     | O(nC4)     |
| [26. 删除有序数组中的重复项](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/26_RemoveDuplicatesFromSortedArray.swift) | 简单 | O(n)       | O(1)       |
| [27. 移除元素](https://leetcode-cn.com/problems/remove-element/)                                    | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/27_RemoveElement.swift)                   | 简单 | O(n)       | O(1)       |
| [31. 下一个排列](https://leetcode-cn.com/problems/remove-element/)                                    | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/31_NextPermutation.swift) | 中等 | O(n) | O(1) |
| [33. 搜索旋转排序数组](https://leetcode-cn.com/problems/search-in-rotated-sorted-array) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/33_SearchInRotatedSortedArray.swift) | 中等 | O(logn) | O(1) |
| [34. 在排序数组中查找元素的第一个和最后一个位置](https://leetcode-cn.com/problems/find-first-and-last-position-of-element-in-sorted-array) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/34_FindFirstAndLastPositionOfElementInSortedArray.swift) | 中等 | O(logn) | O(1) |
| [35. 搜索插入位置](https://leetcode-cn.com/problems/search-insert-position/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/35_SearchInsertPosition.swift) | 简单 | O(logn) | O(1) |
| [36. 有效的数独](https://leetcode-cn.com/problems/valid-sudoku) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/36_ValidSudoku.swift) | 简单 | O(n^2) | O(n) |
| [39. 组合总和](https://leetcode-cn.com/problems/combination-sum/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/39_CombinationSum.swift) | 中等 | O(n^n) | O(2^n - 1) |
| [40. 组合总和 II](https://leetcode-cn.com/problems/combination-sum-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/40_CombinationSumII.swift) | 中等 | O(n^n) | O(2^n - 2) |
| [45. 跳跃游戏 II](https://leetcode-cn.com/problems/jump-game-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/45_JumpGameII.swift) | 中等 | O(n) | O(1) |
| [46. 全排列](https://leetcode-cn.com/problems/permutations/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/46_Permutations.swift) | 中等 | O(n^n) | O(n) |
| [47. 全排列 II](https://leetcode-cn.com/problems/permutations-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/47_PermutationII.swift) | 中等 | O(n^n) | O(n) |
| [48. 旋转图像](https://leetcode-cn.com/problems/rotate-image/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/48_RotateImage.swift) | 中等 | O(n^2) | O(1) |
| [53. 最大子数组和](https://leetcode-cn.com/problems/maximum-subarray/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/53_MaximumSubarray.swift) | 中等 | O(n) | O(1) |
| [54. 螺旋矩阵](https://leetcode-cn.com/problems/spiral-matrix/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/54_SpiralMatrix.swift) | 中等 | O(n^2) | O(1) |
| [55. 跳跃游戏](https://leetcode-cn.com/problems/jump-game/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/55_JumpGame.swift) | 中等 | O(n) | O(1) |
| [56. 合并区间](https://leetcode-cn.com/problems/merge-intervals/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/56_MergeIntervals.swift) | 中等 | O(nlogn) | O(n) |
| [57. 插入区间](https://leetcode-cn.com/problems/insert-interval/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/57_InsertInterval.swift) | 中等 | O(n) | O(1) |
| [59. 螺旋矩阵 II](https://leetcode-cn.com/problems/spiral-matrix-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/59_SpiralMatrixII.swift) | 中等 | O(n^2) | O(1) |
| [63. 不同路径 II](https://leetcode-cn.com/problems/unique-paths-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/63_UniquePathsII.swift) | 中等 | O(mn) | O(mn) |
| [64. 最小路径和](https://leetcode-cn.com/problems/minimum-path-sum/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/64_MinimumPathSum.swift) | 中等 | O(mn) | O(mn) |
| [66. 加一](https://leetcode-cn.com/problems/plus-one/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/66_PlusOne.swift) | 简单 | O(n) | O(1) |
| [73. 矩阵置零](https://leetcode-cn.com/problems/set-matrix-zeroes/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/73_SetMatrixZeroes.swift) | 中等 | O(n^2) | O(1) |
| [74. 搜索二维矩阵](https://leetcode-cn.com/problems/search-a-2d-matrix/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/74_Search2DMatrix.swift) | 中等 | O(log(m + n)) | O(1) |
| [75. 颜色分类](https://leetcode-cn.com/problems/sort-colors/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/75_SortColors.swift) | 中等 | O(n) | O(1) |
| [77. 组合](https://leetcode-cn.com/problems/combinations/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/77_Combinations.swift) | 中等 | O(n^n) | O(n) |
| [78. 子集](https://leetcode-cn.com/problems/subsets/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/78_Subsets.swift) | 中等 | O(n^n) | O(n) |
| [79. 单词搜索](https://leetcode-cn.com/problems/word-search/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/79_WordSearch.swift) | 中等 | O(3mn) | O(k) |
| [80. 删除有序数组中的重复项 II](https://leetcode-cn.com/problems/remove-duplicates-from-sorted-array-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/80_RemoveDuplicatesFromSortedArrayII.swift) | 中等 | O(n) | O(1) |
| [81. 搜索旋转排序数组 II](https://leetcode-cn.com/problems/search-in-rotated-sorted-array-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/81_SearchInRotatedSortedArrayII.swift) | 中等 | O(logn) | O(1) |
| [88. 合并两个有序数组](https://leetcode-cn.com/problems/merge-sorted-array/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/88_MergeSortedArray.swift) | 简单 | O(n) | O(1) |
| [90. 子集 II](https://leetcode-cn.com/problems/subsets-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/90_SubsetsII.swift) | 中等 | O(n^n) | O(n) |
| [105. 从前序与中序遍历序列构造二叉树](https://leetcode-cn.com/problems/construct-binary-tree-from-preorder-and-inorder-traversal/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/105_ConstructBinaryTreeFromPreorderAndInorderTraversal.swift) | 中等 | O(n^n) | O(n) |
| [106. 从中序与后序遍历序列构造二叉树](https://leetcode-cn.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/106_ConstructBinaryTreeFromInorderAndPostorderTraversal.swift) | 中等 | O(nlogn) | O(n) |
| [108. 将有序数组转换为二叉搜索树](https://leetcode-cn.com/problems/convert-sorted-array-to-binary-search-tree/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/108_ConvertSortedArrayToBST.swift) | 简单 | O(n) | O(1) |
| [118. 杨辉三角](https://leetcode-cn.com/problems/pascals-triangle/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/118_PascalsTriangle.swift) | 简单 | O(n^2) | O(n^2) |
| [119. 杨辉三角 II](https://leetcode-cn.com/problems/pascals-triangle-ii/) | [Swift](https://github.com/KiligWYu/LeetCode_Swift/blob/master/Array/119_PascalsTriangleII.swift) | 简单 | O(n) | O(n) |
