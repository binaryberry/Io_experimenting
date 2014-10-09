//this is the test suite (io equivalent of rspec), courtesy of GypsyDave5

assertEqual := method(description, test, expectation,
    if(test == expectation,
    ("[32m" .. description .. " : VICTORY" .. "[0m") println,
    ("[31m" .. description .. " : FAIL[0m\n\tExpected: " .. expectation .. "\n\tBut returned: " .. test ) println
    )
)

assertTrue := method(description, test
    if(test == true,
    description with(" : VICTORY") println,
    description with(" : FAIL") println
    )
)

doFile("lib/fibonacci.io")

//these are the tests, , courtesy of GypsyDave5

assertEqual("The first Fibonacci number is 0", fibonacci(0), 0)
assertEqual("The second Fibonacci number is 1", fibonacci(1), 1)
assertEqual("The third Fibonacci number is 1", fibonacci(2), 1)
assertEqual("The fourth Fibonacci number is 2", fibonacci(3), 2)
assertEqual("The fifth Fibonacci number is 3", fibonacci(4), 3)
assertEqual("The sixth Fibonacci number is 5", fibonacci(5), 5)
assertEqual("The seventh Fibonacci number is 8", fibonacci(6), 8)
assertEqual("The eighth Fibonacci number is 13", fibonacci(7), 13)