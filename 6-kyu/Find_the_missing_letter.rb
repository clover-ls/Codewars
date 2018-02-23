    # #Find the missing letter

    # Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.

    # You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
    # The array will always contain letters in only one case.

    # Example:

    # ['a','b','c','d','f'] -> 'e'
    # ['O','Q','R','S'] -> 'P'
    # (Use the English alphabet with 26 letters!)

    # Have fun coding it and please don't forget to vote and rank this kata! :-)

    # I have also created other katas. Take a look if you enjoyed this kata!

def find_missing_letter(arr)
  #your code here
  result = 0
  base_arr = arr.join().codepoints
  base_arr.each_with_index do |item,index|
    if base_arr[index+1] != item + 1
      result = item + 1
      break
    end
  end
  result.chr
end


# def find_missing_letter(arr)
#   ((arr.first..arr.last).to_a - arr).first
# end