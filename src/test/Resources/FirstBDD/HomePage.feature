
@categoriesList
Feature : Categories List Functionality and Books page for http://srikanthgoudm99-001-site1.smarterasp.net/ HomePage
  As a user
  I want to see homepage
  So that I can go to selected category page
  Scenario: User can see categories list on homepage
    Given user is on the homepage
    Then user should see 'CATEGORIES' on left hand panel
    And user should see categories list as below
    |Books|
    |Computers|
    |Electronics|
    |Apparel & Shoes|
    |Digital downloads|
    |Jewelry|
    |Gift Cards|

@categoriesList1
Scenario Outline: User can see categories as link to navigate to that category
  Given user is on the homepage
  Then user shoul see 'CATEGORIES' on the left hand panel
  Then user should see '<Categories>' as link and enabled
  Examples:
    |Categories|
    |Books|
    |Computers|
    |Electronics|
    |Apparel & Shoes|
    |Digital downloads|
    |Jewelry|
    |Gift Cards|

  @catogeriesList2
  Scenario Outline: User can able to navigate to particular category
    Given User is on the homepage
    Then User should see '<Categories>' on the left hand panel
    When User selects a 'Category' as '<Categories>'
    Then User should navigate to that particular '<Categories>' page
    And User should see heading as '<Categories>'
    Examples:
      |Categories|
      |Books|
      |Computers|
      |Electronics|
      |Apparel & Shoes|
      |Digital downloads|
      |Jewelry|
      |Gift Cards|



