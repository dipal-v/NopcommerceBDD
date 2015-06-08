
@BooksPage
  Scenario Outline : Books category page
  Given User is on homepage
  When User selects 'Books' as category
  Then He should be navigated to 'Books' page
  And user should see all products on Books page with name,image and price
  And User should see '<filters>' on Books page
  Examples :
  |filters|
  |Sort by|
  |Display|
  |View as|

  @Sortby
  Scenario : Sort by filter functionality
  Given User is on Books page
  When User selects a '<Position>' in 'Sort by' filter
  Then User should see products arranged as '<Position>'
  Examples :
  |Sort by|Position|
  |Name: A to Z|alphabetical ascending order|
  |Name: Z to A|alphabetical descending order|
  |Price: Low to High|price ascending order|
  |Price: Low to High|price ascending order|
  |Created on|descending created date order|

@display
Scenario : Display filter functionality
Given User is on Books page
When User selects a '<Value>' number of products could be seen
Then User should see '<Value>' products on the page
  Examples :
  |4|
  |8|
  |12|

@viewas
Scenario : View as filter functionality
Given User is on Books page
When User selects 'View as'
And User selects '<Arrange>'
  Then User should see items on page as per selected view
Examples :
|Grid|Landscape view|
|List|Portrait view|








