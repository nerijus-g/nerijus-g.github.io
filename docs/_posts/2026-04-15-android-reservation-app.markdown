---
layout: post
title:  "Android Tennis Court Reservation App"
date:   2026-04-15 21:51:17 +0000
sections:
  - level: 1
    heading: "Features"
    contents:
      - text: |
          * DataStore for URL and Days options
          * JSOUP library for website parsing
          * Jetpack Compose for app's UI
          * Foreground service with coroutines/delay/wake-lock
          * Permissions check on app startup
          * Every minute shows notification
              * with newest available reservation date
              * error if occured while fetching dates from URL
              * plays mp3 sound if new Day found for reservation

  - level: 1
    heading: "Permissions asked on app startup"
    contents:
      - text: "Unrestricted battery management"
        image: "/assets/tennis/Permission1.jpg"
      - text: "Notifications"
        image: "/assets/tennis/Permission2.jpg"

  - level: 1
    heading: "Dynamic Start/Stop button at main screen"
    contents:
      - text: "Press Start to initiate foreground service"
        image: "/assets/tennis/Start.jpg"
      - text: "Press Stop (After starting service) to destroy foreground service"
        image: "/assets/tennis/Stop.jpg"
---
