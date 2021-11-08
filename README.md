Original App Design Project - README
===

# FEELINGSIFY

Group Members: SangWon Park, Hannah Williams, Bryan Diaz, Caesar Cuzco 

Spotify API:

https://developer.spotify.com/documentation/web-api/reference/#/

Parse Documentation:

https://docs.parseplatform.org/ios/guide/#updating-objects

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An app that uses Spotify API. The characteristic of Feelingfy is that it will have different playlists that you will be able to choose depending on your mood.

### App Evaluation
   - **Category:** Music 
   - **Mobile:**  Similar to the spotify app we use music as we travel so mobile is an important aspect.
   - **Story:** Choose music based on what you are feeling to truly embrace your emotions
   - **Market:** Anyone who wants to be recommended new music and mood is important to determine what you are more likely to listen to.
   - **Habit:** Can reset mood every time you would like to so you can use this app multiple times.
   - **Scope:** Would be to anyone who actively enjoys listening to music.

## Product Spec

### 1. User Stories (Required and Optional)

**Required Must-have Stories**

* Users can create an account
* Users see loading screen when app is opened
* Users can log in and log out
* Users can remain logged in
* Users can choose a mood
* Users can make a playlist
* Users can save/favorite a playlist

**Optional Nice-to-have Stories**

* Users can upload a profile photo
* Background colors can be in sync with songs genre/mood

### 2. Screen Archetypes

* Login Screen
   * User can sign up or login 
* Choose Mood Screen
   * User can choose a mood for a specific playlist
* New Playlist Screen
   * User can see playlist/song recommendations according to the mood chosen
   * User can save/favorite playlist
* Saved/Favorite Playlists Screen (Profile Screen)
    * User can see previously saved/favorited playlists
    * User can delete playlists
* Add Song View
    * User can add a song to a playlist by searching it
* Play Song View
    * User can play a song by clicking on it
* Search Song Screen
    * User can search for a song to listen to or add to a playlist

### 3. Navigation

**Tab Navigation** (Tab to Screen)

* Profile (Saved/Favorite Playlists) Feed
* Mood Feed
* Search Song 

**Flow Navigation** (Screen to Screen)

* Login Screen
    * Login/Sign Up Button => Profile Feed
* Choose Mood Screen
   * Clicking Mood Emoji => New Playlist Screen
* New Playlist Screen
   * Displays new playlist for user
   * Add song button => Add Song View
   * Click song => Play Song View
* Saved/Favorite Playlist Screen
   * Displays list of playlists
   * Click on a saved playlist => Individual playlist screen
   * Add song button => Add Song View
* Individual Playlist Screen
   * Displays songs within the playlist selected
   * Add song button => Add Song View
   * Click song => Play Song View
* Song Playing Screen
    * Can play/pause song
    * Can go back or forward songs in playlist
    * Can go back to Playlist view => Previous playlist view
* Add Song to Playlist Screen
    * Displays all saved playlists
    * Click on a playlist to add song to playlist => Individual Playlist screen

## Wireframes
### [BONUS] Digital Wireframes & Mockups
![](https://i.imgur.com/IXFQjUp.png)

### [BONUS] Interactive Prototype
https://www.figma.com/file/8cVC1HAlNcIjjJu2V19tzt/Wireframe?node-id=0%3A1

## Schema 
### Models
#### Post
| Property |       Type      | Description     |
| -------- | ----------------| ----------------|
|favorited |Boolean          |Playlist is favorited|
|loggedIn  |Boolean          |User is logged in or not|
|moodId    |String           |Id of the different mood|
|playlistId|String           |Unique ID for the new playlist|
|playlistImage|File          |Image of Playlist|
|playlistAuthor|String  |Playlist author  |
|playSong  |Boolean          |Song is playing/paused|
|songCount |Number           |Number of songs within a playlist|
|songName  |String           |Name of Song|
|songAuthor|String           |Singer of Song|
|songImage |File             |Image of Song |
|searchButton|String         |Search Network for songName/songAuthor|

### Networking
#### Network requests
* Login Screen
    * (Read/GET) Query logged in user object
    * (Create/POST) Create new user object

* Bottom Menu
    * (Read/GET) Fetch Mood Screen
    * (Read/GET) Fetch Profile Screen
    * (Read/GET) Fetch Search Screen

* Choose Mood Screen
    * (Read/GET) Query playlist category object


* New Playlist Screen
    * (Read/GET) Fetch user's favorite playlists
    * (Update/PUT) Update Favorite status


* Saved/Favorite Playlist Screen
    * (Update/PUT) Updated user playlist
    * (Create/POST) Create new playlist


* Individual Playlist Screen
    * (Read/GET) Fetch user's favorite playlists
    * (Read/GET) Fetch playlist 


* Song Playing Screen
    * (Read/GET) Fetch current song in playlist
    * (Read/GET) Fetch current song photo
    * (Update/POST) Change to next/previous song
    * (Update/POST) Play/stop song


* Add Song to Playlist Screen
    * (Update/PUT) Search updated request to network
    * (Create/POST) Add requested song to playlist





- [Create basic snippets for each Parse network request]
    ```
    // Saving Objects in Mood Screen
    let moodCategories = PFObject (ClassName:"Categories")
    moodCategories["partyMood"] = Playlist1
    moodCategories["sadMood"] = Playlist2
    moodCategories["everyMood"] = Playlist3
    moodCategories["emotionalMood"] = Playlist4
    moodCategories["angryMood"] = Playlist5
    moodCategories["happyMood"] = Playlist6
    moodCategories["upMood"] = Playlist7
    moodCategories["loveMood"] = Playlist8
    
    moodCategories.saveInBackground { (succeed, error ) in 
        if (succeeded) {
        //Objects have been saved
        } else {
            //There was a problem saving to Parse
            print(error.description)
        }
    }
    ```
    
    
    ```
    // Saving songs to Playlists
    let newPlaylist = PFObject (Classname:"Newplaylist")
    newPlaylist["newSong"] = songName
    newPlaylist["playlist"] = playlistId
 
    (https://docs.parseplatform.org/ios/guide/#queries)
    
    // Retrieving Data to user
    
    let query = PFQuery(className:"moodCategories")
    query.whereKey("playerName", equalTo:"")
    query.findObjectsInBackground { (objects: [PFObject]?, error: Error?) in
        if let error = error {
            // Log details of the failure
            print(error.localizedDescription)
        } else if let objects = objects {
            // The find succeeded.
            print("Successfully retrieved \(objects.count) scores.")
            // Do something with the found objects
            for object in objects {
                print(object.objectId as Any)
            }
        }
    }
    
    ```
- [OPTIONAL: List endpoints if using existing API such as Yelp


AN API of Spotify
---
-Base URL

| HTTP Verb |    Endpoint   | Description     |
| --------  | --------------| ----------------|
|   Get     |   /artist     |Get Spotify catalog information for a single artist identified by their unique Spotify ID.| 
|   Get     |   /playlist   |Get a playlist owned by a Spotify use.|
|   Get     |  /Seach       |Get Spotify catalog information about albums, artists, playlists, tracks, shows or episodes that match a keyword string.|
|   Get     |   /me | Get detailed profile information about the current user (including the current user's username).|
