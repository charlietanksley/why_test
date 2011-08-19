# Why_test

Perhaps my least favorite part of setting up a new project is getting 
the tests set up.  I start projects infrequently enough (and play with 
different test frameworks often enough), that I can never remember what 
goes in the Rakefile for an Rspec test suite vs. one for Riot.  If you 
are using rails, you can often +rake rspec:install+ or whatever to get 
everything set up.  If you aren't using Rails, you have to resort to the 
googles.  Why_test takes the pain out of setting up your tests.

# Use

**Currently only works on Ruby 1.9.2.**

```
    gem install why_test
    gem why_test riot
```
