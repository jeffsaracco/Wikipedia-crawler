Wikipedia Crawler
-----------------

This crawler is based on a wiki scraper by Jordan Scales

I reimplemented using the Mechanize gem just so I could try and learn how to use it

The basic premise is it finds a random path to the Philosophy Wikipedia page,
it goes to a page and chooses a random wikipedia link and follows it.
If there is a link to the Philosophy page it follows that and is done.

No real reason, just for fun.

Usage: `ruby wiki-scraper.rb <search-term>`
ex: `ruby wiki-scraper.rb compters`
