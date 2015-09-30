Making a controller for clippings in the the archive engine. Was using frontpage as a template. Run Rails S and nav to
/archive/clippings to see status


How to send a clipping to the clippings controller?
AJAX to automatically update the saved icon would be good
The Frontpage::Articles controller must access the Clippings controller. It can call Clippings.connection to do so. But what route can it take? 
