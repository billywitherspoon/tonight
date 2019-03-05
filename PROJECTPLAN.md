#User Stories

MVP

- A user should be able to see a list of all neighborhoods
- A user should be able to see all events in a neighborhood
- A user should be able to see a list of all events
- A user should be able to see an average rating for a single event 
- A user should be able to see the number of attendees for a single event
- A user should be able to see the wait time for a single event 
- A user should be able to check-in to a single event
- A user should be able to delete their check-in (check-out)
- A user should be able to rate an event via check-in
- A user should be able to report the wait time during their check-in
- A user should NOT be able to edit/update a event, venue, neighborhood
- A user should NOT be able to create an event, venue, neighborhood
- A user should be able to see a list of venues in a neighborhood
- A user should be able to click on a single venue and list it's events
- Events on the event page should be default orderd by most attendees

- A user should be able to login with username and password
- A user should be able to logout
- A user should be able to return to home on every page

Stetch

- A user should be able to sort events by (number of attendees, rating, starting earliest)
- A user should be able to see a visualization of popularity of a model by day
- A user should be able to see all ratings for a single event
- A user should be able to see all users
- A user should be able to follow an event 
- A user should be able to see an average rating for a single event within a specified time period 
- A user should be able to see their account settings 
- A user should be able to see the number of events for each neighborhood
- A timeout on check in for a user
- A user is automatically checked out when checking in to a new event

#Tasks

Models
- Neighborhood 
   * `Create has_many through to events`

Views
- Neighborhoods
   - Index
      * List of neighborhoods
   - Show
      * List of events for the neighborhood
- Events
   - Index 
      * List of events 
      * Add attribute for each event:
         * Event name
         * Average rating
         * Venue
         * Number of users (attendees)
         * Wait time
         * Start time
      * More info button for each event (link to event show)
      * Check_in button for each event (link to check in new)
      * Default sort events by attendees
   - Show (Confirmation)
      * Event name
      * Average rating
      * Venue
      * Number of users (attendees)
      * All ratings
      * Show Wait time
      * Show Start time
      * Submit check in button
      * Cancel check in button
- Users
   - Show 
      * Current event
      * Check out link button
      * Check out button
      * Past events
- CheckIns
   - New
      * Event name
      * Venue
      * Start time
      * Form (check_in create)
         * Rating
         * Wait time
         * Submit button
      * Cancel button (link to events page)
- Venues
   - Index
      * Venue name (link to venue show)
      * Venue capacity
   - Show 
      * Venue name
      * Venue capacity
      * Event names for that venue (link to event show)

Controllers
- Neighborhoods
   - Index 
   - Show
- Events
   - Index 
   - Show
- Users 
   - Show
- CheckIns
   - New
- Venues
   - Index 
   - Show

Routes
- 

CSS
- 

Migrations
- Event
   * `Remove column 'line_length'`

Seeds 
- Event
   * `Remove line_length attribute seed`







