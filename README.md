# instagram_scraper_extension
### An R extension for tidying details of the photos obtained using the Python package [instagram-scraper](https://github.com/arc298/instagram-scraper)

The instagram-scraper python package lets you search for and download photos from Instagram, along with a JSON file with the details of the photos. 

For my own use I require locations where the photos were taken, along with the link for the photos. I also require the filenames of the photos, which are a part of the URL by default.

To obtain these information, one needs to run this command in the terminal:

`instagram-scraper <KEYWORD> --tag --media-metadata --include-location`

This R code lets you go through the JSON file with the photo details, and save the details as a CSV file. 
