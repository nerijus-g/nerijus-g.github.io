---
layout: post
title:  "Tennis Court Alert – Android App"
date:   2026-04-15 21:51:17 +0000
sections:
  - level: 1
    heading: "Description"
    contents:
      - text: "The app continuously monitors a selected third‑party website and alerts the user with a sound whenever new updates appear on the website. It performs automatic checks every minute to ensure timely notifications. After installation, the user simply opens the app, grants the required permissions, and can start or stop the monitoring service directly from the app’s interface."

  - level: 1
    heading: "Features"
    contents:
      - text: |
          * Persistent settings with DataStore
          * Website parsing via JSoup
          * Modern UI built with Jetpack Compose
          * Foreground service with coroutines/delays/wake-lock
          * Automatic permission handling
          * Minute‑by‑minute notifications:
              * the newest available reservation date,
              * an error message if fetching fails,
              * an MP3 alert when a new reservation day is detected.

  - level: 1
    heading: "Automatic permission handling"
    contents:
      - text: "Unrestricted battery management"
        image: "/assets/tennis/Permission1.jpg"
      - text: "Notifications"
        image: "/assets/tennis/Permission2.jpg"

  - level: 1
    heading: "Dynamic Start/Stop button on the main screen"
    contents:
      - text: "Press Start to initiate the foreground service."
        image: "/assets/tennis/Start.jpg"
      - text: "Press Stop (After starting service) to destroy the foreground service."
        image: "/assets/tennis/Stop.jpg"

  - level: 1
    heading: "Notifications updated every minute"
    contents:
      - text: "The newest available reservation date is shown."
        image: "/assets/tennis/Notification1.jpg"
      - text: "An error message is shown if fetching fails"
        image: "/assets/tennis/Notification2.jpg"

---
