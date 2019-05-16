Wikipedia Crawler
-----------------

This crawler is based on a wiki scraper by Jordan Scales

I reimplemented using the Mechanize gem just so I could try and learn how to use it

The basic premise is it finds a random path to the Philosophy Wikipedia page,
it goes to a page and chooses a random wikipedia link and follows it.
If there is a link to the Philosophy page it follows that and is done.

No real reason, just for fun.

Usage: `ruby wiki-scraper.rb <search-term>`
ex: `ruby wiki-scraper.rb seltzer`

```
1: Seltzer - Wikipedia
2: Seltzer, Pennsylvania - Wikipedia: http://en.wikipedia.org/wiki/Seltzer,_Pennsylvania
3: Schuylkill County, Pennsylvania - Wikipedia: http://en.wikipedia.org/wiki/Schuylkill_County,_Pennsylvania
4: Lebanon, Pennsylvania - Wikipedia: http://en.wikipedia.org/wiki/Lebanon,_Pennsylvania
5: Lawrence County, Pennsylvania - Wikipedia: http://en.wikipedia.org/wiki/Lawrence_County,_Pennsylvania
6: Philadelphia - Wikipedia: http://en.wikipedia.org/wiki/Philadelphia
7: Saunders Park, Philadelphia - Wikipedia: http://en.wikipedia.org/wiki/Saunders_Park,_Philadelphia
8: Southwest Center City, Philadelphia - Wikipedia: http://en.wikipedia.org/wiki/Southwest_Center_City,_Philadelphia
9: Aramingo Borough, Pennsylvania - Wikipedia: http://en.wikipedia.org/wiki/Aramingo_Borough,_Pennsylvania
10: Philadelphia - Wikipedia: http://en.wikipedia.org/wiki/Philadelphia
11: 1932 United States presidential election - Wikipedia: http://en.wikipedia.org/wiki/United_States_presidential_election,_1932
12: 1888 United States presidential election - Wikipedia: http://en.wikipedia.org/wiki/1888_United_States_presidential_election
13: Illinois - Wikipedia: http://en.wikipedia.org/wiki/Illinois
14: Horizon League - Wikipedia: http://en.wikipedia.org/wiki/Horizon_League
15: University of Wisconsin–Milwaukee - Wikipedia: http://en.wikipedia.org/wiki/University_of_Wisconsin%E2%80%93Milwaukee
16: College and university rankings - Wikipedia: http://en.wikipedia.org/wiki/SCImago_Institutions_Rankings
17: Philosophy - Wikipedia: http://en.wikipedia.org/wiki/Philosophy
```
