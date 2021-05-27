Feature: We are testing if we can do IP testing with Cucumber

  Scenario: We are pinging google DNS server and seeing the results

    Given The basic of IP testing is know
    When I ping "8.8.8.8"
    Then It should say "reachable"
