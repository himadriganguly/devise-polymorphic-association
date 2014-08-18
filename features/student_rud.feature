Feature: Student Read Update Delete Actions
	
	Student must login to the application to read student list, delete a student and update a student.
	
	Scenario: Student login to show read student list
		Given I am a "student@example.com" student
		When I go to student url
		Then I should see student table
	
	Scenario: Student login to show details of a particular student
		Given I am a "student@example.com" student
		When I go to student url
		And I click on student "Show" show
		Then I should see student details
	
	Scenario: Student login to edit existing student
		Given I am a "student@example.com" student
		When I go to "student@example.com" student edit page
		And I change class to "5"
		Then I should receive "Student was successfully updated."
		
	Scenario: Student login to delete student
		Given I am a "student@example.com" student
		When I go to student url
		And I click on "Destroy" destroy
		Then "student@example.com" should not exist in database