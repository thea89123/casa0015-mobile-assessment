# CASA0015-Weather-Guardian-APP
This is the Final assessment template for CASA0015. 
Android APP to track family and exchange urgent communication

## Background
With extreme weather events likely to become more frequent and severe as a result of global warming and increased changes in air tables, this app provides a convenient, real-time way for people to find out weather information and respond to extreme weather.
The app can also be used as an essential tool for travelling and travel, helping users to better plan and schedule their trips and avoid unnecessary weather risks and surprises. 
Whether in everyday life or when travelling, this App provides useful weather information and warning services to help users better adapt to weather changes and keep themselves safe. 
At the same time, with the development of technology, real-time weather data and map information can also help people to better understand the impact of the weather in order to make more scientific and rational decisions. 
Therefore, this app aims to provide users with comprehensive, real-time weather information and warning functions to help them better understand and prevent the possible impact of weather on their lives.


### Storyboard

On a sunny morning, a city dweller named Ming opened his Weather Alert App. he first logged into his account and went to the main screen.

Ming saw the live weather data for his city and he noticed that the temperature today was much higher than usual. He continued to browse through the other features on the app and he used the search function to check the weather conditions in the city he was about to travel to in order to prepare for his trip.

Suddenly, Ming received an extreme weather warning notification informing him that there would be heavy rainfall in the city this afternoon. Ming felt very grateful as this gave him enough time to take precautions to keep him safe.

Ming continued to use the app and checked the temperature heat map in the live map. He saw that certain areas were particularly hot, reminding him to take care of his health in the hot weather.

Ming then went to the trip planning page of the app and entered his departure and destination, travel dates and number of days for the trip. The App then automatically fetched the weather data for both cities and displayed it to Ming.
After he completed the trip plan, the App automatically generated a trip details page. On this page, Ming could view the exact itinerary for each day, including weather conditions, transport suggestions and suggestions of places to visit. This allows him to better plan his trip and ensures that he can stay safe and comfortable during his journey.

In the end, Ming was satisfied that he had been given comprehensive weather information, warning notices and his trip details to better plan his life and travel, as well as to take appropriate precautions to protect his health and safety and that of his family.

## Outline
**Current Function Point:**
1. User login registration function
2. Display of current city weather data
3. Provide real-time map function including temperature heat map
4. Search for weather conditions in other areas
5. Provide extreme weather warning notifications
6. Trip planning page, where users can select the departure location, destination, travel dates and number of days

**Further functional points for the future:**
1. Automatically retrieves and displays weather data for departure and destination based on user input
2. Automatically generated trip details page, including each day's itinerary, including weather conditions, transport advice and suggestions for places to visit


## Wireframe
![image](https://github.com/thea89123/casa0015-mobile-assessment/blob/433037e9224c3c424e2fd3b67d69958f281311e0/Weather%20Guardian/Frame%201.JPG)

## UI Design
![image](https://github.com/thea89123/casa0015-mobile-assessment/blob/c40619a9e02cff2eddcded5c7d5460d4b9be3ccc/Weather%20Guardian/Frame%202.JPG)

## Design
![image](https://user-images.githubusercontent.com/91799774/167440009-32975829-d12b-4889-8aa2-150e19c5a012.png)

## Screenshots
Login workflow:

![image](https://user-images.githubusercontent.com/91799774/167434793-2b982b79-f1fc-4005-859a-047b3181f994.png)

Tracker workflow:

![image](https://user-images.githubusercontent.com/91799774/167436423-dccfe41f-af67-4eef-9359-f9c7d0b3a83d.png)


Notes workflow:


![image](https://user-images.githubusercontent.com/91799774/167446067-6aec374d-c576-42a7-82f4-8a29e18ea656.png)


## Challenges and Future improvement
1. The login module remembers the login state through local storage. But the module is incomplete and allows login irrespective of the password or username. 
 By integrating Firebase utility, the app can actually support multiple users.
2. Due to shortage of time, the app does not support the 'Add family' functionality yet. In future, a separate workflow needs to be added to Add new family/Add new member to your family.
3. Due to the process of testing from a single phone, the location of all family members is shown as the same location. To test separate locations, I used the login functionality to login as multiple users at different locations. After firebase is integrated, it will be possible to record locations for multiple users.
4. To demonstrate the utility of tracker application, two dummy ids[John and Tina] are provided in code if the person list is empty. This is just for demo.
5. Images cutouts have been used to show different profiles on trackers and note page. In future, user would be able to customise the marker with their own picture.
6. It is important to think about the ethical implications of sharing someone's location even though they are a family member and android app asks for location permissions. In future, the app could be enhanced with more options to stop and start sharing based on user's choice to make the app more secure.


## References and links:
1. https://codesource.io/build-a-simple-login-page-and-dashboard-with-flutter/
		
2. https://instaflutter.com/flutter-tutorials/persistent-storage-flutter/#:~:text=The%20management%20and%20handling%20of%20such%20a%20state,was%20before%20the%20application%20has%20been%20shut%20off.
			
3. https://github.com/heremaps/here-sdk-examples/tree/master/examples/latest/explore/flutter/hello_map_app
		
4. https://github.com/flutter/samples/tree/master/place_tracker
		
5. https://betterprogramming.pub/flutter-how-to-save-objects-in-sharedpreferences-b7880d0ee2e4
		
6. https://stackoverflow.com/questions/41436639/does-shared-preferences-get-shared-across-user


## Build instructions
1. Download the android project from the below github link
    https://github.com/AbhipsaKar/CASA0015-Mine-AndroidAPP
2. Rename project to mine_project.
3. Set your HERE SDK credentials to
    https://github.com/AbhipsaKar/CASA0015-Mine-AndroidAPP/blob/main/MineProject/android/app/src/main/AndroidManifest.xml
4. Unzip the HERE SDK plugin for flutter and copy inside plugins folder in your project. Name the folder 'here_sdk': mine_project/plugins/here_sdk.
5. Install the below dependencies for this project:
    shared_preferences: ^2.0.5
    provider: ^6.0.2
    geolocator: ^8.2.0
6. Start an emulator or simulator and execute flutter run from the app's directory - or run the app from within your IDE.




