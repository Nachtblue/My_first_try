Feature: Creating a function which discounts the price
  @discount
  Scenario Outline: Knowing the original price and the discount we will calculate the final price
    Given The normal price is <normal>
    When The discount is <discount>
    Then The final price is <final>

    Examples:
    | normal | discount | final |
    | 100    | 75       | 25    |
    | 211    | 50       | 105   |
    | 593    | 61       | 231   |
    | 1693   | 80       | 338   |
    | 700    | 10       | 630   |

