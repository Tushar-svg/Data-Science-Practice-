            #Q. Import numpy as np and print the version number.
import numpy as np
print("\n",np.__version__)

            #Q. Create a 1D array of numbers from 0 to 9
print("\n",np.arange(10))

            #Q. Create a 3×3 array of all True’s
print("\n",np.full((3,3),True,dtype=bool))
#or
# print(np.ones((3,3),dtype=bool))

            #Q. Extract all odd numbers from arr
# Input:
# arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) Desired output:
# #> array([1, 3, 5, 7, 9])

arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
print("\n",arr[arr%2==1])

            # Q. Replace all odd numbers in arr with -1
# Input:
# arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) Desired Output:
#> array([ 0, -1, 2, -1, 4, -1, 6, -1, 8, -1])
arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
arr[arr%2==1] = -1
print("\n",arr)

            #Q. Replace all odd numbers in arr with -1 without changing arr
# Input:
# arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) Desired Output:
# out #> array([ 0, -1, 2, -1, 4, -1, 6, -1, 8, -1]) arr #> array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
'''  The numpy.where() function in Python is a powerful tool for conditional selection 
and manipulation of array elements. It allows you to return elements from one array or another based on a condition.

Syntax

numpy.where(condition, [x, y])'''
arr = np.array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
out=np.where(arr%2==1,-1,arr)
print("\n",arr)
print(out)

            #Q. Convert a 1D array to a 2D array with 2 rows
# Input:
# np.arange(10)
#> array([ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) Desired Output:
#> array([[0, 1, 2, 3, 4], #> [5, 6, 7, 8, 9]])

arr=np.arange(10)
arr2d=np.reshape(arr,(2,5))
print("\n",arr2d)

            # Q. Stack arrays a and b vertically
# Input
# a = np.arange(10).reshape(2,-1) b = np.repeat(1, 10).reshape(2,-1) Desired Output:
#> array([[0, 1, 2, 3, 4], #> [5, 6, 7, 8, 9], #> [1, 1, 1, 1, 1], #> [1, 1, 1, 1, 1]])

a=np.arange(10).reshape(2,-1)
b=np.repeat(1,10).reshape(2,-1)
c=np.append(a,b)
print("\n",c)
print(c.reshape(4,5))

            #Q. Create the following pattern without hardcoding. Use only numpy functions and the below input array a.

# Input:
# a = np.array([1,2,3])` Desired Output:
#> array([1, 1, 1, 2, 2, 2, 3, 3, 3, 1, 2, 3, 1, 2, 3, 1, 2, 3])

a=np.array([1,2,3])
b=np.r_[np.repeat(a,3),np.tile(a,3)]
print("\n",b)

            # Q. From array a remove all items present in array b
# Input:
# a = np.array([1,2,3,4,5]) b = np.array([5,6,7,8,9]) Desired Output:
# np.array([1,2,3,4])
a = np.array([1,2,3,4,5])
b = np.array([5,6,7,8,9])
c=np.setdiff1d(a,b)
print("\n",c)

            # Q. Get the common items between a and b
# Input:
# a = np.array([1,2,3,2,3,4,3,4,5,6]) b = np.array([7,2,10,2,7,4,9,4,9,8]) Desired Output:
# array([2, 4])

a = np.array([1,2,3,2,3,4,3,4,5,6])
b = np.array([7,2,10,2,7,4,9,4,9,8])
c=np.intersect1d(a,b)
print("\n",c)

            # Q. Get the positions where elements of a and b match
#Input:
# a = np.array([1,2,3,2,3,4,3,4,5,6]) b = np.array([7,2,10,2,7,4,9,4,9,8]) Desired Output:
#> (array([1, 3, 5, 7]),)

a = np.array([1,2,3,2,3,4,3,4,5,6])
b = np.array([7,2,10,2,7,4,9,4,9,8])
print("\n",np.where(a==b))

            # Q. Get all items between 5 and 10 from a.
# Input:
# a = np.array([2, 6, 1, 9, 10, 3, 27]) Desired Output:
# (array([6, 9, 10]),)
a = np.array([2, 6, 1, 9, 10, 3, 27])
b=np.where((a>=5)&(a<=10))
print("\n",a[b])

            #Q. Convert the function maxx that works on two scalars, to work on two arrays.
# maxx(1, 5)
# #> 5

def maxx(x,y):
    if x>y:
        return x
    return y

maxx(1,5)

pair_maxx=np.vectorize(maxx,otypes=[float])
a = np.array([5, 7, 9, 8, 6, 4, 5])
b = np.array([6, 3, 4, 8, 9, 7, 1])
print("\n",pair_maxx(a,b))

# Q. Swap columns 1 and 2 in the array arr.
# arr = np.arange(9).reshape(3,3) arr

arr=np.arange(9).reshape(3,3)
print("\n",arr[:,[1,0,2]])



