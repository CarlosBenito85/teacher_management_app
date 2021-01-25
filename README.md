# Backend Engineer Technical Test for Domestika

## [*Teacher Management APP*](https://powerful-savannah-07553.herokuapp.com/)

Assumptions and decisions made:
* Simplified teacher entity without User abstraction 
* Simplified entities parameters and validations
* Avoided front-end parameters validations
* Simplified views with the minimum requirements
* Used auto-incrementing PK for simplicity (UUID would be a good option)
* Created SessionsHelper module for be able to reproduce the teacher behavior
* Avoided all entities method not requested (delete, update, cancel vote, ...)

To improves (not implemented due lack of time):
* Improve performance using distributed caches (Redis)
* Add pagination in views with item listings
* Improve unit test and create integration test (exploring RSpec)
* Improve navigation between views (back buttons)

Topics for in-depth research:
* Ruby on Rails standards and best practices
* Avoid coupling between database and views
* Configuration and operation of ActiveRecord caches
* Exceptions handling