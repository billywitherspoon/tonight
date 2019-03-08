# What's Poppin
### Written by Allen Woods & Billy Witherspoon

## Welcome to What's Poppin
Below you will find the details for our app as well as instructions for how to run the app on your local machine.

## Summary
What's Poppin provides real time crowd sourced data on events happening tonight in your city!  

## Seeded Data
The app is currently pre-seeded with data on Events, Users, Neighborhoods, Check ins, and Venues.

## User Experience

### Login
Users first login to the app or create a user profile.

### Events List
Users can view the following information:

1. See a list of events happening in their city tonight.  

2. See real time information on each event such as the average rating and average wait time experience for users who have attended (checked in) to an event.

3. Only show events for a specified neighborhood or venue.

Note: All pages that list events sort events by average user rating.  

### Checking In
Users can perform the following actions:

1. 'Check in' to an event.  Here, users can specify if the event is poppin and how many minutes they waited in line to attend the event.

2. This data is used to update the event pages so other users can see whats actually poppin!

## Install Instructions
1. Ensure you are running ruby version 2.5.3

2. Clone the repository to your local machine.

3. In the parent directory of the cloned repository run `bundle install` to install the required Ruby Gems.

4. In the same directory run 'rails db:migrate' and 'rails db:seed' to ensure you have a working database.

5. In the same directory run 'rails s' to host the app locally on your machine and try it out!

### License
This is free and unencumbered software released into the public domain.

Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.

In jurisdictions that recognize copyright laws, the author or authors of this software dedicate any and all copyright interest in the software to the public domain. We make this dedication for the benefit of the public at large and to the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in perpetuity of all present and future rights to this software under copyright law.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For more information, please refer to <http://unlicense.org/>