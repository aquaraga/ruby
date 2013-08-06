an_assoc_array = [[1, 'Foo'], [3, 'Loo'], [2, 'Bar']]

print("Values: \n")
an_assoc_array.each { |key, val| print("#{key} --> #{val}\n")}

print("\nSorted values: \n")
an_assoc_array.sort.each { |key, val| print("#{key} --> #{val}\n")}

print("Element associated with 3 is #{an_assoc_array.assoc(3).inspect}\n")
print("Element associated with 'Loo' is #{an_assoc_array.rassoc('Loo').inspect}\n")
