Feature: Vehicle classification
  Scenario: Successfully classify a vehicle and insert into a data table
    Given a vehicle with these attributes:
    | Wheels | 18   |
    | 0-60   | 120  |
    | Weight | 8000 |

    Then the vehicle should be classified as a truck

    And then new table should look like this:
      | Wheels   | 18    |
      | 0-60     | 120   |
      | Weight   | 8000  |
      | Category | truck |
