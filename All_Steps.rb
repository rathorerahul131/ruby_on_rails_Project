Install latest version of Ruby
Install Rails, Node, yarn as per Rails guide
Once evrything is installed, create a folder where you want to store the project (In mycase I have crated a folder named railsTutorial inside Documnets)
Then open terminal, Navigate to the folder you created using cd command


--> """Rails comes with a number of scripts called generators that are designed to make your development life easier by creating everything 
that's necessary to start working on a particular task. 
One of these is the new application generator, which will provide you with the 
foundation of a fresh Rails application so that you don't have to write it yourself. """
Type the command to create the project-->   rails new firstProject
This will create a Rails application called "firstProject" in a "railsTutorial" directory
now navigate to the "firstProject" folder using cd

--> "To begin with, let's get some text up on screen quickly. To do this, you need to get your Rails application server running."
start the rails server by using the command -->  rails s
--> "This will start up Puma, a web server distributed with Rails by default. To see your application in action, 
open a browser window and navigate to http://localhost:3000. You should see the Rails default information page:"

--> "To get Rails saying "Hello", you need to create at minimum a route, a controller with an action, and a view. 
A route maps a request to a controller action. A controller action performs the necessary work to handle the request, 
and prepares any data for the view. A view displays data in a desired format.
In terms of implementation: Routes are rules written in a Ruby DSL (Domain-Specific Language). Controllers are Ruby classes, 
and their public methods are actions. And views are templates, usually written in a mixture of HTML and Ruby."


-->"Let's start by adding a route to our routes file, config/routes.rb, at the top of the Rails.application.routes.draw block"
Rails.application.routes.draw do
    get "/home", to: "home#index"
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

-->"The route above declares that GET /articles requests are mapped to the index action of ArticlesController."

-->"To create ArticlesController and its index action, we'll run the controller generator 
(with the --skip-routes option because we already have an appropriate route):"
Type the following command --> rails generate controller home index --skip-routes

-->"Rails will create several files for you"
-->"The most important of these is the controller file, app/controllers/home_controller.rb. Let's take a look at it:"
class HomeController < ApplicationController
    def index
    end
end

--> "The index action is empty. When an action does not explicitly render a view (or otherwise trigger an HTTP response), 
Rails will automatically render a view that matches the name of the controller and action. 
Convention Over Configuration! Views are located in the app/views directory. 
So the index action will render app/views/articles/index.html.erb by default. "

--> "Let's open app/views/home/index.html.erb, and replace its contents with"
 
<h1>Hello, Rails!</h1>

start the server, if it is stopped, and  visit http://localhost:3000/home, and see our text displayed!