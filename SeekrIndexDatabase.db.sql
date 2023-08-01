BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "Index" (
	"id"	INTEGER,
	"url"	TEXT,
	"description"	TEXT,
	"website_title"	TEXT,
	"link_title"	TEXT,
	PRIMARY KEY("id" AUTOINCREMENT)
);
INSERT INTO "Index" ("id","url","description","website_title","link_title") VALUES (1,'https://www.utdallas.edu/','UT Dallas is a rising public research university in the heart of DFW. Explore our 140+ degree programs and see why we''re ranked as a top value in Texas ...','The Univeristy of Texas at Dallas','University of Texas at Dallas'),
 (2,'https://www.google.com/','Search the world''s information, including webpages, images, videos and more. Google has many special features to help you find exactly what you''re looking ...
','Google','Google'),
 (3,'https://about.google/','Our mission is to organize the world''s information and make it universally accessible and useful. · Make life easier with a little help from our products.
','About Google','Google - About Google, Our Culture & Company News'),
 (4,'https://twitter.com/Google','Science & Technology Mountain View, CA blog.google/newsletter-sub… ... A love story about the moments that matter most, told with a little help from Google.
','Twitter','Google'),
 (5,'https://www.youtube.com/','Share your videos with friends, family, and the world.','YouTube','YouTube: Home'),
 (6,'https://apps.apple.com/us/app/youtube-watch-listen-stream/id544007664','Get the official YouTube app on iPhones and iPads. See what the world is watching -- from the hottest music videos to what''s popular in gaming, fashion, ...','Apple','YouTube: Watch, Listen, Stream on the App Store'),
 (7,'https://www.instagram.com/youtube/','31M Followers, 1749 Following, 4284 Posts - See Instagram photos and videos from YouTube (@youtube)','Instagram','YouTube (@youtube) • Instagram photos and videos
'),
 (8,'https://www.instagram.com/','Create an account or log in to Instagram - A simple, fun & creative way to capture, edit & share photos, videos & messages with friends & family.','Instagram','Instagram'),
 (9,'https://music.youtube.com/','A new music service with official albums, singles, videos, remixes, live performances and more for Android, iOS and desktop. It''s all here.','YouTube Music','YouTube Music'),
 (10,'https://www.apple.com/apple-music/','Stream millions of songs in lossless audio at no extra cost. Download your favorites and play them offline. Start listening for free today.','Apple','Apple Music'),
 (11,'https://open.spotify.com/','Spotify is a digital music service that gives you access to millions of songs.','Spotify','Spotify - Web Player: Music for everyone');
COMMIT;
