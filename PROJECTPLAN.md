#User Stories

MVP

- A user should be able to see a list of all neighborhoods
- A user should be able to see all events in a neighborhood
- A user should be able to see a list of all events
- A user should be able to see an average rating for a single event 
- A user should be able to see the number of attendees for a single event
- A user should be able to see the line length for a single event 
- A user should be able to check-in to a single event
- A user should be able to delete their check-in (check-out)
- A user should be able to see all ratings for a single event
- A user should be able to rate an event via check-in
- A user should be able to report the line length during their check-in
- A user should be able to login with username and password
- A user should NOT be able to create an event, venue, neighborhood
- A user should NOT be able to edit/update a event, venue, neighborhood
- A user should be able to return to home on every page

Stetch

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
   * Create has_many through to events
- 

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
      * Check in button for each event
      * Link to show page for event (confirmation page)
   - Show (Confirmation)
      * Event name
      * Average rating
      * Venue
      * Number of users (attendees)
      * Show Wait time
      * Show Start time
      * Submit check in button
      * Cancel check in button
- Users
   - Show 
      * Current event
      * Check out button
      * Past events
- Check In
   - New
      * Event name
      * Venue
      * Start time
      * Form
         * Rating
         * Wait time


      




Controllers
- 

CSS
- 







