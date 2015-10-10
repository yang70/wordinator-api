#  - Wordinator API - Rails API Exercise

By [Matthew Yang](http://www.matthewgyang.com).

## Description
This is a simple Rails application that was created with [Rails-API](https://github.com/rails-api/rails-api) using `rails generate wordinator --api' which generates a 'lighter' application.  Per the guide, it leaves out much of the middleware for processing browser requests and configures `rails generate` to leave out views, helpers and assets.

Thes specs of this assignment required the application to respond to a json request by taking two words and returning true or false depending on whether the two words were anagrams or not.  An anagram is when the letters from one word can be rearranged to create a different word (all letters from the first word must be used).

After generating the application, I generated a `wordinator` controller and put in a single action `index`.  I then configured the root route to point at 'wordinator#index'.

I decided I would take input via url parameters, where the first word would be given the key `:one`, and the second word `:two`.  A valid get request would therefore be constructed as `http://wordinator.com?one=firstword&two=secondword`

It was then very simple to write a conditional that compared each word, downcased and sorted.  If the two are equal then they are anagrams and it returns `true`, otherwise returns `false`.

The boolean response is keyed to `anagram:` and is packaged along with the original two words and sent as a JSON object in a response.

## Sources
[Rails Guides](http://edgeguides.rubyonrails.org/api_app.html)
