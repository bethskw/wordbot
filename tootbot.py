import random
import pawopy
from toot_secrets import *

# for tooting
auth = pawopy.OAuthHandler( 'https://botsin.space' )
auth.set_access_token( A_TOKEN )
api = pawopy.API( auth )

# get random words
word_file = "/home/beth/wordbot/words.txt"
words = open(word_file).read().splitlines()

thisword = words[random.randint(1,len(words)-1)].capitalize()

toot = "The word of the hour is: " + thisword
print(toot)

api.update_status(toot) 
print("...tooted!")
