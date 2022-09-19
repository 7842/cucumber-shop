Feature: Cut stock

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Cookie" with price 40.00 and stock of 15 exists

Scenario: Buy one product with 3 quantity
  When I buy "Cookie" with quantity 3
  Then stock of "Cookie" should be 12

Scenario Outline: Buy one product in table
  When I buy <product> with quantity <quantity>
  Then stock of <product> should be <stock>
  Examples:
    | product     | quantity |  stock  |
    | "Bread"     |     1    |    4    |
    | "Jam"       |     2    |    8    |
    | "Cookie"    |     3    |    12   |
