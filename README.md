# README

Fork, clone down.  
Bundle install.
Rake db:create

* User Story 1 - The Lord of the Rings

API documentation for this user story is located at:
https://the-one-api.herokuapp.com/documentation

As a user
When I visit '/'
And fill in the 'Lord of the Rings quotes Search' box
With movie id '5cd95395de30eff6ebccde5b',
And click on 'Search',
Then I should be on page '/quotes'.
I should see a total number of quotes (xxxx)
Returned by the search.
Then I should see a list of the first 10 quotes
And for each quote I should see:
-quote id
-dialog
-movie id
-character id

* User Story 2 - National Park Service

API documentation for this user story is located at:
https://www.nps.gov/subjects/developer/api-documentation.htm

As a user
When I visit '/'
And fill in the 'National Park Service Search' box
With state abbreviation 'CA',
And click on 'Search',
Then I should be on page '/parks'.
I should see a total number of parks (33)
Returned by the search.
Then I should see a list of the first 5 parks
And for each park I should see:
-park code
-full name
-url
-designation

* User Story 3 - Star Wars

API documentation for this user story is located at:
https://swapi.co/documentation

As a user
When I visit '/'
And fill in the 'Star Wars Search' box
With 'starships',
And click on 'Search',
Then I should be on page '/ships'.
I should see a total number of ships (37)
Returned by the search.
Then for each ship I should see the details
-name
-model
-crew
-hyperdrive rating

* User Story 3 - NYT Movie Review

API documentation for this user story is located at:
https://developer.nytimes.com/docs/movie-reviews-api/1/overview

As a user
When I visit '/'
And fill in the 'Movie Reviews Search' box
With 'aliens',
And click on 'Search',
Then I should be on page '/movies'.
I should see a total number of movies (7)
Returned by the search.
Then for each movie I should see the details
-title
-rating
-opening date
-headline
