# Return values

# Suppose we want to do some data analysis.
# Eventually, I want to print the STANDARD DEVIATION of a set of numbers.
# In other words, if I have a set of numbers like this:

#     first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]

# Then I want to be able to do something like this:

#     stdev1 = standard_deviation(first_dataset)

# And have it work.

# In order to find the STANDARD DEVIATIONS of sets of numbers, we have
# to be able to find VARIANCES. In order to find VARIANCES, we have to be
# able to find SUMS and MEANS.

# So, let us first define some tools that will be helpful in taking the
# intermediate steps:

# SUM
# ===
# To find the sum of a set of numbers,
#  - we start with 0
#  - for each number in the set,
#   - we add it to the running total
#  - after we've looked at every number, the running total is the sum

first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]
second_dataset = [2, 9, 405, 562, 740, 133, 346, 509, 21, 93]

def sum(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number
  end

  return running_total
end
# puts sum(first_dataset)
# puts sum(second_dataset)

# # MEAN
# # ====
# # To find the mean of a set,
# #  - we sum up all the elements
# #  - then we divide the sum by the number of elements in the set

# def mean(list_of_numbers)

#   # Let's re-use the work we did above in the sum method

  # ====================
def mean(list_of_numbers)
  running_total = 0
  list_of_numbers.each do |number|
    running_total = running_total + number
  end
  mean_list = sum(list_of_numbers).to_f / list_of_numbers.length
  return mean_list
end
# puts mean(first_dataset)
# puts mean(second_dataset)
#   # ====================

# end

# # VARIANCE
# # ========
# # To find the variance of a set,
# #  - we find the mean of the set
# #  - for each number in the set,
# #   - we find the difference between the number and the mean
# #   - we square the difference
# #  - the variance is the mean of the squared differences

# def variance(list_of_numbers)
#   # Let's re-use the work we did above in the mean method

#   # ====================
def variance(list_of_numbers)
  var_total=0
  list_of_numbers.each do |number|
    var_total=var_total+(mean(list_of_numbers)-number)**2
  end
  variance_output = var_total/list_of_numbers.length
  return variance_output
end
# puts variance(first_dataset)
# puts variance(second_dataset)

#   running_total = 0
#   variance_total = 0
#   list_of_numbers.each do |number|
#     running_total = running_  otal + number
#     mean_list = sum(list_of_numbers).to_f / list_of_numbers.length
#     variance_total = variance_total.to_f + (number - mean_list)**2
#   #   variance_output = variance_total/ list_of_numbers.length.to_i
#   # return variance_output
#   return variance_total

# end
#   puts variance(first_dataset)
# end


# # STANDARD DEVIATION
# # ==================
# # To find the standard deviation of a set,
# #  - take the square root of the variance

# def standard_deviation(list_of_numbers)
#   # ====================
def standard_deviation(list_of_numbers)
  standard_deviation = variance(list_of_numbers)**0.5
  return standard_deviation
end
# puts standard_deviation(first_dataset)
# puts standard_deviation(second_dataset)


#   # ====================
# end


# # Finally, everything above allows us to do:

first_dataset = [93, 65, 87, 68, 2, 64, 36, 96, 45, 47]
stdev1 = standard_deviation(first_dataset)
puts "The standard deviation of the first dataset is #{stdev1.round(2)}."

second_dataset = [2, 9, 405, 562, 740, 133, 346, 509, 21, 93]
stdev2 = standard_deviation(second_dataset)
puts "The standard deviation of the second dataset is #{stdev2.round(2)}."
