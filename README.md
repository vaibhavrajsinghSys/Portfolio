# Portfolio
my personal [portfolio](https://portfolio-4029d.web.app/#/)


## Firebase deploy steps.

**These are the steps that will be used to deploy build on the firebase hosting.**
1. First login into your firebase account that you can create using your google account and create a flutter project.
2. Now enter `firebase init hosting` and select the project from the dropdown for hosting.
3. Create a release build using this command `flutter build web --release`
4. Now run this command `cp -r build/web/ <public_directory_name_created_on_init>` to copy all the files from the build folder to the firebase folder to deploy.
5. Now run the following command to deploy build on firebase hosting: `firebase deploy`

## State management -> provider.

**These are the steps to user state-management tool named as provider.**
1. First create a file in which the state management functions and class name will be present like [this](https://github.com/vaibhavrajsinghSys/Portfolio/blob/feature/state_management_provider/lib/Statemanagement_Provider/initialState.dart)
2. Now we have to call the state management tool when launching the application from the main class like [this](https://github.com/vaibhavrajsinghSys/Portfolio/blob/feature/state_management_provider/lib/main.dart)
3. Then what we can do is use this tool on different stateless widgets like i did in [this code](https://github.com/vaibhavrajsinghSys/Portfolio/blob/feature/state_management_provider/lib/View/HomePage.dart).  
***
more will be added to this document.