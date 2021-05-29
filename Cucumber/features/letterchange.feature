Feature: Changes every letter in the given string to the next letter
  Scenario Outline: We will write a function which performs the action
    Given The input is a string
    When I call the letter changer method on <word>
    Then should return <result>
    Examples:
    |  word    |  result   |
    |  "hello" |  "ifmmp"  |
    |  "lol"   |  "mpm"    |
    |  "bye"   |  "czf"    |


