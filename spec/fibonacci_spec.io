//this is the test suite (io equivalent of rspec), courtesy of GypsyDave5

assertEqual := method(description, test, expectation,
    if(test == expectation,
    ("[32m" .. description .. " : PASS" .. "[0m") println,
    ("[31m" .. description .. " : FAIL[0m\n\tExpected: " .. expectation .. "\n\tBut returned: " .. test ) println
    )
)

assertTrue := method(description, test
    if(test == true,
    description with(" : PASS") println,
    description with(" : FAIL") println
    )
)

doFile("lib/fibonacci.io")

//these are the tests

assertEqual("The first Fibonacci number is 0", fibonacci(1), 0)
//assertEqual("The second Fibonacci number is 1", fibonacci(2), 1)
//assertEqual("The third Fibonacci number is 1", fibonacci(3), 1)
//assertEqual("The fourth Fibonacci number is 2", fibonacci(4), 2)
//assertEqual("The sixth Fibonacci number is 5", fibonacci(6), 5)
//assertEqual("The sixth Fibonacci number is 7", fibonacci(6), 7)