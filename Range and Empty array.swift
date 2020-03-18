import Foundation

var array = [Int]()

array = [1,2,3,4,5]

for i in 1...5 {
  print("\(array[i])")
}

for i in array[...2] {
  print(i)
}

for i in array[2...] {
  print(i)
}
