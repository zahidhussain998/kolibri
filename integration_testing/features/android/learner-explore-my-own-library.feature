Feature: Find new things in your library

  Background:
    Given I am signed in as a learner user
			And I am at *Learn > Library*
			And there are imported channels with resources on the device

	Scenario: Library page desktop view
		Given I am viewing the *Learn > Library* page in a desktop browser
		When I look at the page
		Then I see the search section to the left
			And I see the *Keywords* field at the top
			And I see the *Activities* icons and labels below it
			And I see the *Language* and *Channel* drop-downs
		When I look at the rest of the page
		Then I see the *Your library* section on top
			And I see the *Recent* section under it #visible only if the learner has interacted with any of the available resources

	Scenario: Library page mobile view
		Given I am viewing the *Learn > Library* page in a mobile browser
		When I look at the page
		Then I see the *Your library* section on top
			And I see each channel card in a single column view
			And I see the *Recent* section under all of the available channels #visible only if the learner has interacted with any of the available resources

	Scenario: Explore channel modal desktop view
		Given I am viewing the *Learn > Library* page in a desktop browser
		When I click on a channel
		Then I see the *Explore channel* modal
			And I see the bread crumb navigation on top
			And I see the channel's title, icon and description
			And I see the *Show available resources only* toggle
			And I see the *Folders* section to the right
			And I see the *Search* tab next to the *Folders* tab
			And I see all of the available folders
			And I see the list with folders and resources to the right

	Scenario: Explore channel modal mobile view
		Given I am viewing the *Learn > Library* page in a mobile browser
		When I tap on a channel
		Then I see the *Explore channel* modal
			And I see the channel's title, icon and the *Show available resources only* toggle
			And I see the bread crumb navigation
			And I see the *Folders* and *Search* buttons
			And I see the topic title of the first available folder
			And I see the available folders and resources cards in a single column view

	Scenario: Show available resources only is toggled on by default
		Given I am at the *Library > Explore channel* modal
		When I look at the *Show available resources only* toggle
		Then I see that it is switched on by default
			And I can see that indeed only the available resources are displayed
		When I switch off the *Show available resources only* toggle
		Then I see all non-downloaded resources for which the device has metadata
			And I can see an option to mark the resources for download later

	Scenario: Add resource to My downloads from folder/resource browsing page
		Given I am at the *Library > Explore channel* modal
			And I switch off the *Show available resources only* toggle
		When click the plus icon on a resource card
		Then #needs clarification

	Scenario: Add resource to My downloads from the information panel
		Given I am at the *Library > Explore channel* modal
		When I click the info icon of a resource
		Then I see the metadata panel
			And I see an option to add a resource to *My downloads*
		When I add the resource to *My downloads*
		Then I see *Added to My downloads.*
			And I see a *Remove* button next to it
		When I click the *Remove* button
		Then the resource is removed from *My downloads*



