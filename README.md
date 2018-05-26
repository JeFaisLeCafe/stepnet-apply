<h1>API Chauffeur</h1>

<p>This little App allows you to manage drivers for a Uber-like company</p>

<h3>Installation</h3>

<p>To install this app, git clone it to your desired folder. Then run in your terminal:</p>
<ol>
  <li>bundle install</li>
  <li>rails db:drop db:create db:migrate db:seed</li>
  <li>rails s</li>
</ol>

<h3>Utilisation</h3>

<p>Open an internet browser, and go to <a href="http://localhost:3000/users/sign_in">http://localhost:3000/users/sign_in</a></p>
<p>Sign in with these credentials:</p>
<p>Email: <strong>johndoe@mail.com</strong></p>
<p>Password: <strong>secret</strong></p>
<p>and you can click "Log in"</p>
<p>You can also create your own account, but you'll have to create a new Driver before accessin the index and show feature</p>
<p>You're now on the homepage, and you have your token displayed. Copy/Paste it somewhere close!</p>
<p>You're now ready to use the API!</p>

<h5>Index</h5>

<p>To access the index, you just have to go to <a href="http://localhost:3000/api/v1/drivers">http://localhost:3000/api/v1/drivers</a></p>

<h5>Show</h5>

<p>If you want details about 1 driver, you can add a /:id, like that : <a href="http://localhost:3000/api/v1/drivers/5">http://localhost:3000/api/v1/drivers/5</a></p>
<p><strong>Please, don't use a non-existant id!</strong></p>

<h5>Update</h5>

<p>If you want to update a driver, just send a PATCH http request to the #show URL of the target driver (ex: "http://localhost:3000/api/v1/drivers/5").
You'll need to send your request body in the JSON format, like {"driver": {"firstname": "Jean", "lastname": "Bon"}}. Keep in mind you'll need to provide headers to be identified:</p>
<p>curl -i -X PATCH                                                              \
     -H 'Content-Type: application/json'                                     \
     -H 'X-User-Email: johndoe@mail.com'                                      \
     -H 'X-User-Token: YOUR_TOKEN'                                 \
     -d '{ "driver": { "firstname": "New first name", "lastname": "new last name", "phone": "00 00 00 00 00" } }' \
     http://localhost:3000/api/v1/drivers/DRIVER_ID</p>

<h5>Create</h5>

<p>In the same manner, if you want to create a new driver, just send a similar request to the index URL (http://localhost:3000/api/v1/drivers) with the verb POST. <strong>IMPORTANT: You'll need to provide the firstname:, lastname:, phone: (unique number) to create it.</strong></p>
<p>curl -i -X POST                                                              \
     -H 'Content-Type: application/json'                                     \
     -H 'X-User-Email: pierre@gmail.com'                                      \
     -H 'X-User-Token: K9wdego235s_KrCBb3z1'                                 \
     -d '{ "driver": { "firstname": "New first name", "lastname": "new last name", "phone": "06 00 00 00 00" } }' \
     http://localhost:3000/api/v1/drivers/</p>

<h5>Delete</h5>

<p>Finally, to delete a Driver, you just have to send the DELETE request like the following, with the id of the Driver you want to erase:</p>
<p>curl -i -X DELETE                               \
     -H 'X-User-Email: johndoe@mail.com'           \
     -H 'X-User-Token: YOUR_TOKEN'                 \
     http://localhost:3000/api/v1/drivers/5</p>

<h3>Review</h3>
<p>I hope the application will work as well on your computer than on mine, and that all the desired features will work as intended. It has been a small challenge to code my first API, and this was longer than expected.</p>
<p>Thank you for your time!</p>

<p><small><i>Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
</i></small></p>
