# Heroku example for my book "A Lisp Programmer Living in Python-Land: The Hy Programming Language"

My book on leanpub: [A Lisp Programmer Living in Python-Land: The Hy Programming Language](https://leanpub.com/hy-lisp-python)

This is an example for the next edition of my book.

You need to install the Heroku command line tools:

https://devcenter.heroku.com/categories/command-line

After checking out this repo, do the following from this directory:

    heroku login
    heroku create
    git push heroku master

Hopefully, if you have your Heroku account setup, this should deploy this simple Hello World example written in the Hy language (hylang).

You can look at the Heroku log fies for your application using:

    heroku logs --tail

You can open this Hello World app in your default web browser using:

    heroku open

By default, your Hello World app will run on the free Heroku mode. You should still remove it when you are done:

- login to:  https://dashboard.heroku.com/apps
- click on your applicartion name
- click on the Settings tab
- scroll to the bottom of the page and use the option to delete the app

# Going forward

You can make a copy of this example, create a github repo, and follow the above directions.

To test your Heroku setup locally or for development, you can use:

    heroku local
