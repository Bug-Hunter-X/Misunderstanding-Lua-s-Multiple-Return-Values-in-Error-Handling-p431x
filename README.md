# Lua Multiple Return Value Gotcha

This repository demonstrates a common error in Lua related to handling multiple return values, particularly within error handling functions.

The `bug.lua` file shows a function that returns both a result and an error message.  However, the main code only checks for the error; it does not handle the case where the result is `nil` because of an error.

The `bugSolution.lua` demonstrates the correct way to handle this by always checking both return values of the function.