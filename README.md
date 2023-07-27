# Portfilio
my personal [portfolio](https://portfolio-4029d.web.app/#/)


##### Firebase deploy steps.

**These are the steps that will be used to deploy build on the firebase hosting.**
1. First login into your firebase account that you can create using your google account and create a flutter project.
2. Now enter `firebase init hosting` and select the project from the dropdown for hosting.
3. Create a release build using this command `flutter build web --release`
4. Now run this command `cp -r build/web/ <public_directory_name_created_on_init>` to copy all the files from the build folder to the firebase folder to deploy.
5. Now run the following command to deploy build on firebase hosting: `firebase deploy`