# Wordbot - toots words #

This mastodon bot will toot words from a list you provide. 

The original bot, @wordbot@botsin.space, uses a list of words created by a
neural network. You may use whatever words you want, but it's your job to
supply the words. This repository includes an example word file.

BONUS: If you have a list of new and unusual words, and want to make sure they're
not in the dictionary, I've provided a perl script called check.pl that you
can manually run on your word file. It compares the new words to an included
dictionary file. Feel free to replace the dictionary and repurpose the
script as you like. 

If all you want to do is toot items from a list, you just need tootbot.py,
toot_secrets.py, and words.txt. 

# Depends on: pawopy #

The python module pawopy is required for tooting. 

If you would prefer to make a twitter bot, you can edit tootbot.py to use
tweepy instead.

# How to toot #

1. Create a mastodon account for your bot (recommended: http://botsin.space )

2. In the settings of that account: 
	a. Go to Development
	b. Create an app
	c. Click on the app you just created
	d. Copy the key, secret, and access token

3. Add the key, secret, and access token to the toot_secrets.py file
included here. 

4. Run the tootbot.py script from the command line to make sure it does the
right thing. (This provides some command line feedback and also makes it
toot its first toot!)

5. Set up a cron job to run tootbot.py on your desired interval.





