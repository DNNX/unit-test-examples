Feature: Addition
  In order to avoid silly mistakes
  As a math idiot 
  I want to be told the sum of two numbers

  Scenario Outline: Add two numbers
    Given I have entered <x> and <y> into the calculator
    When I press "add"
    Then the result should be <z> on the screen

  Examples:
    |    x   |    y   |    z   |
    |       2|       2|       4|
    |      -3|      -4|      -7|
    |       0|       0|       0|
    | 100_500| 100_500| 201_000|
    |    1.25|     2.5|    3.75|
    |      10|     -10|       0|

