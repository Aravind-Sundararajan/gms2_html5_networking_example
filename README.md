# gms2_html5_networking_example
This is a simple example showing how to transmit player information using buffers and jsonencode. 

Note that there's no interpolation here, so it won't look smooth, but if you want to make some kind of ich.io clone, you'll have to interpolate player locations.

The player data is updated every 22 frames, you could changes this so the player data is emitted only after a key_press event.

The player object is invisible, but the x-pos, y-pos, and color rgb components are sent to the server and sent back to your client which then renders the information by creating an actor instance that we can see and appending to an associative array.
