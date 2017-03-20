# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
 - Developed on Ruby 2.3, but any Rails 5 supporting Ruby should be good.

* System dependencies
 - Rails 5
 - MySQL 5
 - juery-ui-rails, 5.0.5 - 6.x breaks the datepicker

* Configuration

* Database creation
The database cn be created using
 - rake db:create
 - rake db:schema:load

* Database initialization
Bootstrap the basic data into the supporting tables with
 - rake db:seed

* How to run the test suite
 - rake test - for manual tests

Can also be configured through Jenkins for build and test


* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Models
The following models are used by the application

** Activity
An activity is a scheduled item that is a polymorphic reference to an activity
type.
 - title - a short title to appear in the schedule
 - details - a description of what will be achieved by the activity
 - activable_id - reference to an item in the activity_type table
 - activable_type - string identifying the model to find the activity_id

Belongs to :activable, :polymorphic => true

** ActivityCommission
This defines the activity profile for a customer commission
 - commission_id - a reference to the commission being worked on
 - min_slot_separation - the gap in the schedule between slots
 - number_of_slots - the number of slots required to complete the activity

Has many activites as :activable

** ActivityDevelopment
This defines time spent on personal projects, practise, technique and
attending courses.
 - name - the name of the type of development activity

Has many activites as :activable


** ActivityHoliday
This defines periods of inactivity when customer commissions will not be worked
on.

Has many activites as :activable

** ActivityOther
This defines time spent on other uncategorised activities.

Has many activites as :activable

** ActivityPaperwork
This describes the activity associated with completing admin tasks including
postage, ordering, tax returns, quotes, correspondence, social media.

Has many activites as :activable

** ActivityPreparation
This describes the activity associated with preparing for teaching
assignments

Has many activites as :activable

** ActivityTeaching
This defines the activity for a teaching task,
 - student_name -  the name of the student being taught rather than the id

Has many activites as :activable


** ActivityWriting
This defines the activity for writing an article or blog post

Has many activites as :activable

** Commission
A customer-requested piece of art to be worked on
 - request_id - a reference to the customer request
 - commission_type_id - the commission_type

** CommissionType
An item identifying a type of commissioned work,
 - name
 - days_to_complete - the number of activity slots required,
 - active - whether the artist will consider this type of commission.

In addition to the number of slots required, there is also a gap between slots
where work can be completed, to allow, for example, oil painting drying time.
This is covered in the Activity defintion for a commission.

** Request
A customer submitted request for a commission consisting of,

 - fullname
 - contact_address (email address)
 - commission type (oil, pastel, acrylic, etc.,)
 - due date (subject to availability)

There is also a check availability button that submits an AJAX request to try
to identify roughly the earliest date by which a commission can be completed
based on the type and the number of available commission slots in the schedule.

* TODO
A reminder of some of the items to include

 - Creating a commission (from a request) creates an ActivityCommission record
   which can be edited
 - When creating the commission, by default, the commission type becomes the
   same as the request type, but can be overridden

Testing
 - A test to make sure inactive commission types are not listed on the
requests page. 
