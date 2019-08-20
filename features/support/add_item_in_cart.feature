Feature:Add itme in cart
@cart
Scenario:Add two items in shopping cart
  Given I am registred
  And I click on the Search field
  And I input in Search Dress and press serch button
  Then I sort by Price: Lowest first
  Then I choose first position
  And I choose size M and color Blue
  And I add in shopping cart
  And I see window where was text Product successfully added to your shopping cart
