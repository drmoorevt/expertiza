Code Review Peer Review Feedback:

1) There should be comments for new method is_code_review_assignment?
   -- Added comments to every modified file

2) It wasn't very intuitive as to how to test your changes. Your README file should contain this.
   It wasn't very clear which objects were modified in this project. 
   -- The modified files are as follows:
README.md	
app/models/assignment.rb	
app/views/assignment/_content.html.erb	
app/views/review_files/show_all_submitted_files.html.erb	
app/views/submitted_content/_main.html.erb	
db/migrate/20120707144639_assignment_code_review.rb	
db/schema.rb	
  -- You can log in as admin and impersonate user: name1000 to see their submission for assignment 12-4. You will see that the
     popup window shows up and provides instructions. You can also edit the assignment 12-4 and turn on/off code review.
     You can also create a new code review / no code review assignment.
     You can log in / impersonate name1001 to review name1000 work and provide comments per line of code.


3) Can you comment the changes you made in the code? If you replaced any previous code just comment out that part so that I can know. 
  -- Commented every line, thanks!

4) Can you tell me password for the two users you were talking about in the readme file. I tried giving password as the password as told by the professor but it was not working on your vcl image.
  -- The password for each user is expertiza, but its much easier to log in as admin and use the impersonate user function under the Manage toolbar.

Also how can I check your point 1) in the readme file? The admin page for create assignment looked same for admin in my branch and your admin page.
  -- Its there, either create a new assignment by clicking on Manage-> then hover over the assignment drop down. The next page will show you have the ability
  to choose code review under the staggered deadline drop down menu.



Code Review Dashboard Update:

Note that the admin user/pass is: admin/expertiza
user name1000 has submitted a file with a codereview assignment that user name1001 has reviewed and submitted comments on.

     *You can impersonate either user to see what that user would view.

1) Need to add an option to the assignment creation/edit page to say whether or not the assignment is a code-review assignment or not
   
     *Completed

2) Suppress the display of the "Code Review Dashboard" link if it is not a code review assignment
  
    *Completed. Added a migration to store this column in the database.

3) Ensure Functionality
   
     *Completed. Code reviews work well, changes noted above are in effect.

4) Add on-screen popups to explain how to use the functionality
   
     *Popup when submitter submits code for a code review assignment
   
     *Popup when a reviewer begins reviewing code

Expertiza
=========

#### Peer review system

Expertiza is a web application where students can submit and peer-review learning objects (articles, code, web sites, etc). It is used in select courses at NC State and by professors at several other colleges and universities.

Setup
-----

### NCSU VCL image

The expertiza environment is already set up in [NC State's VCL](https://vcl.ncsu.edu) image "Ruby on Rails".
If you have access, this is quickest way to get a development environment running for Expertiza.

If not:

### Tools

 * [Set up git](http://help.github.com/set-up-git-redirect)
 * Install Ruby 1.8.7. (Some plugins/gems we use are not yet 1.9.2 compatible)
   On Linux/OSX, use [rvm](http://beginrescueend.com).
   On Windows, use [RubyInstaller](http://rubyinstaller.org) and [RailsInstaller](http://railsinstaller.org).
 * `gem install bundler` (see [issues on Windows](http://matt-hulse.com/articles/2010/01/30/from-zero-to-rails3-on-windows-in-600-seconds/))

### Dependencies

 * libxslt development libraries [OSX: (already installed?) Ubuntu: `sudo apt-get install libxslt-dev` Fedora: `yum install libxslt-devel` Windows: ?]
 * libmysqlclient [OSX: `brew install mysql` Ubuntu: `sudo apt-get install mysql-server mysql-client libmysqlclient-dev` Fedora: `yum install mysql mysql-server mysql-devel`]
 * (optional) [graphviz](http://www.graphviz.org)
 * bundled gems: `bundle install`
 
 If anything is missing here, please report it in an issue or fix it in a pull request. Thanks!

Contributing
------------

 * [Fork](http://help.github.com/fork-a-repo/) the expertiza project
 * [Create a new branch](http://progit.org/book) for your contribution with a descriptive name
 * [Commit and push](http://progit.org/book) until you are happy with your contribution - follow the style guidelines below
 * Make sure to add tests for it; the tests should fail before your contribution/fix and pass afterward
 * [Send a pull request](http://help.github.com/send-pull-requests) to have your code reviewed for merging back into Expertiza

Style Guidelines
----------------

We've had many contributors in the past who have used a wide variety of ruby coding styles. It's a mess, and we're trying to unify it.

All new files/contributions should:

 * Use unix line endings (Windows users: configure git to use [autocrlf](http://help.github.com/line-endings))
 * Indent with 2 spaces (no tabs; configure your editor) both in ruby and erb
 * Follow the [Ruby Style Guide](https://github.com/bbatsov/ruby-style-guide) style for syntax, formatting, and naming

When editing existing files:

 * Keep the existing tabbing (use tabs instead of spaces in files that already use tabs everywhere; otherwise use spaces)
 * Keep the existing line ending style (dos/unix)
 * Follow the Ruby style Guide on code you add or edit, as above

Please do no go crazy changing old code to match these guidelines; it will just create lots of potential merge conflicts.
Applying style guidelines to code you add and modify is good enough. :-)
