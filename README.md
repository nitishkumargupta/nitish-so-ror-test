# README

# If you are not willing to setup the project in your local system then you can go to the following link given at the end of this file to run the application on the web. This application is hosted on heroku (initially it will take time because hosted on a free dyno).


This file will tell you how to setup your system and run this test.

List of Dependencies:

`ruby 2.5.0
rails 5.2.3
bundler 2.0.2`

First install all the dependencies which a rails project have. Follow the setups below

`sudo apt install curl
 curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
 curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
 echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
 sudo apt-get update
 sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn`

After installing the dependencies install Ruby and rails on your system.

*	Install Ruby

`sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.5.0
rvm use 2.5.0 --default
ruby -v`


* Install Rails

Install bundler first

`gem install bundler 2.0.2`

`gem install rails -v 5.2.3`


# Run rails server by using the following command

`rails s`

# Application is up now.

Now open your browser and go to localhost:3000
There you will see three buttons each one for each task.

# Click on Macro Polo Game button

A dialogue box will appear which contains the output from 1 to 100. If there is a need to change the numbers then go to app/operations/marco_polo_game_operation.rb and change the default value for initialize method, save the code using `ctrl+s` and refresh your browser and click on marco polo game button you will see changed in the output. 

`def initialize numbers=100
	@numbers = numbers
end`

# Active Record

As we know that rails uses MVC architecture where M stands for Models, V stands for Views, C stands for Controllers. Models are responsible to connect the application with the database (a layer which runs between the database and business logic). Active Record is the ORM in which tables are mapped to classes, objects are mapped to rows/records, and columns are mapped to attributes. Business logics are to be written in models to make light weight controllers.

# click on Active Record button

A dialog box will appear.


# Click on Seven Segment button

A dialog box will appear which accepts a txt file. Upload the seven segment file and the file is processed, output click will be shown on the screnn, click on the button you will see the file content
# or
If you want to check the file manually, please go to the public folder in the app root directory, output_user_story_1.txt contains the desired result.






* Production link

`https://nitish-so-ror-test.herokuapp.com/`


To check the github repo open the following link

`https://github.com/nitishkumargupta/nitish-so-ror-test`


* To run application on rails console

1) Go to the app directory
2) execute `rails c`

* For MarcoPoloGame run following 

1) @marco = MarcoPoloGameOperation.new
2) @marco.display_output

* For User Story

1) Save input file with any name in the public folder of the app directory.
2) SevenSegmentOperation.read_file "file_name_used_in_first_step"
3) Go to the public folder and check for the file named: "output_user_story_1.txt"



# Thanks