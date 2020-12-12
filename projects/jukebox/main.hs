artists :: [ [String] ]
artists = [ ["Kanye West"],
            ["Kendrick Lamar"],
            ["Frank Ocean"],
            ["Angus", "Julia Stone"],
            ["Zeca Pagodinho"],
            ["BTS"]]

-- Song = (name, artist id, duration in seconds)
type Song = (String, Int, Int)
playlist :: [Song]

playlist = [("Devil In A New Dress", 0, 552),
            ("Runaway", 0, 908),
            ("Monster", 0, 619),
            ("m.A.A.d city", 1, 550),
            ("DNA", 1, 306),
            ("Super Rich Kids", 2, 505),
            ("Nights", 2, 507),
            ("Grizzly Bear", 3, 408),
            ("Santa Monica Dream", 3, 530),
            ("Seu Balancê", 4, 344),
            ("Mais Feliz", 4, 331),
            ("DNA", 5, 343)]

song_name :: Song -> String
song_name (name,_,_) = name

song_artist_id :: Song -> Int
song_artist_id (_,artist_id,_) = artist_id

song_duration :: Song -> Int
song_duration (_,_,duration) = duration


all_songs_names :: [String]
all_songs_names = map song_name playlist

all_songs_durations :: [Int]
all_songs_durations = map song_duration playlist

all_songs_artists_id :: [Int]
all_songs_artists_id = map song_artist_id playlist


-- a long song is defined by having a duration greater than 450
list_of_long_songs :: [Song]
list_of_long_songs = filter (\song -> (song_duration song) >= 450) playlist

longest_song_duration :: Int
longest_song_duration = foldr (\dur_a dur_b -> if dur_a > dur_b then dur_a else dur_b) 0 all_songs_durations

longest_song :: Song

longest_between_songs :: Song -> Song -> Song
longest_between_songs song_a song_b = if (song_duration song_a) > (song_duration song_b) then song_a else song_b

first_song :: Song
first_song = head playlist

longest_song = foldr longest_between_songs first_song playlist


songs_artists :: [[String]]

get_artist_of_the_song :: Song -> [String]
get_artist_of_the_song song = artists !! (song_artist_id song)

songs_artists = map get_artist_of_the_song playlist

get_songs_by_name :: String -> [Song]
get_songs_by_name name = filter (\song -> (song_name song) == name) playlist


-- other function to implement in the future
-- get_artist_id_by_name :: String -> Int

-- SongFullInformation = (name, artist name, duration in seconds)
-- type SongFullInformation = (String, String, Int)
-- songs_and_artists_aggregation :: [SongFullInformation]
-- replacing the artist id for it's name


-- main = print (get_artist_of_the_song ("Devil In A New Dress", 0, 552))
main = print (get_songs_by_name "DNA")
