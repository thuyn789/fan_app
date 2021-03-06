# fan_app v0.01

This is a fan app where my fans can view my personal insights

## Getting Started

- Thank you for testing out the app.  
- This app should satisfy all the requirements in the assignment sheet, except for Add Message function which is supposed to work for admin accounts only but it works for everyone else.
- All the bugs and not-working functions have been declared below to the best of my knowledge.  If you can find more bugs, please let me know
- ***For testing purposes*** There are 2 demo login credentials below.
- If the source code on github does not work, please use the zip file attached in icollege submission.


## Credits

https://www.filledstacks.com/post/building-flutter-login-and-sign-up-forms/
https://firebase.flutter.dev/docs/auth/usage
https://firebase.flutter.dev/docs/firestore/usage
https://www.youtube.com/playlist?list=PL4cUxeGkcC9jLYyp2Aoh6hcWuxFDX6PBJ
https://www.youtube.com/watch?v=fi2WkznwWbc


## Github Link

https://github.com/thuyn789/fan_app


## Supported Platform

- Android
- Web


## Supported Login

- Email/password login
- Google social login


## Dependencies
flutter:
    sdk: flutter
  cloud_firestore: ^2.2.2
  google_sign_in: ^5.0.4
  firebase_auth: ^1.4.1
  firebase_core: ^1.3.0
  flutter_speed_dial: ^3.0.5


## Dev_Dependencies

flutter_test:
    sdk: flutter
  flutter_native_splash: ^1.2.0

  #This is a configuration for splash screen for android and web app
flutter_native_splash:
  color: "#0096FF"
  image: images/loading_screen.png
  android: true
  ios: false
  web: true
  web_image_mode: center
  color_dark: "#000000"


## defaultConfig 

- applicationId "com.example.fan_app"
- minSdkVersion 24
- targetSdkVersion 30


## Firebase key for web

var firebaseConfig = {
    apiKey: "AIzaSyCAN6ltkh5UO6UYwLF3FmJrHt73bCfLgj8",
    authDomain: "supercool-rental.firebaseapp.com",
    databaseURL: "https://supercool-rental-default-rtdb.firebaseio.com",
    projectId: "supercool-rental",
    storageBucket: "supercool-rental.appspot.com",
    messagingSenderId: "138927912921",
    appId: "1:138927912921:web:4a28b2011ffb2605464bc8"
};


## Configuration for web app

- Please use the correct firebase web app version (8.4.3) 

<script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-app.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-firestore.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.4.3/firebase-auth.js"></script>
<script src="./scripts/firebase-key.js"></script>


## Basic App Structure

- The root widget: main.dart

- There are 3 types of services in the app:
  + Cloud Services - collection of Firebase services: firebase_services.dart
  + App Services - deal with authentication process: forgot_password.dart, login.dart, signup.dart
  + User Services: home.dart, user_profile.dart


## Login Credentials for Demo Accounts

- Admin: admin@admin.com, password

- Customer: customer@email.com, password


## Bugs and Not Working

- Bugs: The Add Message button is supposed to work for only admin accounts but customer accounts also have access to this function.  Will try to fix it soon.

- Not Working at this moment (not in the scope of this assignment): forgot_password.dart, user_profile.dart
