print("Environment keys size: #{ENV.keys.size}\n")
print("Environment keys are: #{ENV.keys.inspect}\n")

print("FOO variable is: #{ENV['FOO']} \n")
print("Setting FOO to BAR\n")
ENV['FOO'] = 'BAR'
print("FOO variable now is: #{`SET FOO`.chop} \n")
