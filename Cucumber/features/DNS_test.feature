Feature: We are testing the reachability of the most popular DNS servers
  They are also the most trustworthy, high-performance DNS public resolvers available
Scenario Outline: Reachability and packet loss test towards the DNS servers
  Given We have the Examples Section defined
  When I try to ping the <Server> 10 times
  Then It should return the success rate <Reachability> %

  Examples:
  |  Server   | Reachability |
  | "1.1.1.1" |     100      |
  | "8.8.8.8" |     100      |
  | "9.9.9.9" |     100      |
