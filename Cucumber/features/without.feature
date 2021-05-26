Feature: Can we add 2 numbers?
  This is a small program

  Scenario Outline: Lets add 2 numbers
    Given OMG The original number is <a>
    When OMG I add <b> to it
    Then OMG Results should be: <c>

    Examples:
    | a | b | c |
    | 5 | 2 | 7 |
    | 3 | 2 | 5 |
    | 2 | 2 | 4 |