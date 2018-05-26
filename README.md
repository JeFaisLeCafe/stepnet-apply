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
<p>You're now on the homepage, and you have your token displayed. Copy/Paste it somewhere close!</p>
<p>You're now ready to use the API!</p>
<p>For exemple, you can go to <a href="http://localhost:3000/api/v1/drivers">http://localhost:3000/api/v1/drivers</a>, it's the index of the drivers</p>
<p>If yo</p>

Rails app generated with [lewagon/rails-templates](https://github.com/lewagon/rails-templates), created by the [Le Wagon coding bootcamp](https://www.lewagon.com) team.
