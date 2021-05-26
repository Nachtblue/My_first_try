Feature: Can we add 2 numbers?
  This is a small program

  Scenario Outline: Lets add 2 numbers
    Given The original number is <a>
    When I add 2 to it
    Then Results should be: <c>

    Examples:
    | a | c |
    | 5 | "7" |
    | 3 | "5" |
    | 2 | "4" |