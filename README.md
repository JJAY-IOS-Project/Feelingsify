Original App Design Project - README Template
===

# FEELINGSIFY
Group Members: SangWon Park, Hannah Williams, Bryan Diaz, Caesar Cuzco
Spotify API Link:

https://developer.spotify.com/documentation/web-api/reference/#/

## Table of Contents
1. [Overview](#Overview)
1. [Product Spec](#Product-Spec)
1. [Wireframes](#Wireframes)
2. [Schema](#Schema)

## Overview
### Description
An app that uses Spotify API. The characteristic of Feelingfy is that it will have different playlists that you will be able to choose depending on your mood.

### App Evaluation
[Evaluation of your app across the following attributes]
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
[This section will be completed in Unit 9]
### Models
[Add table of models]
### Networking
- [Add list of network requests by screen ]
- [Create basic snippets for each Parse network request]
- [OPTIONAL: List endpoints if using existing API such as Yelp]
