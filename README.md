# Flutter Production Navigation Example

This project was built to elevate the standard of [Google's 2.0 Navigation Example](https://medium.com/flutter/learning-flutters-new-navigation-and-routing-system-7c9068155ade). With this, I would like to enhance it by doing the following:

 - Swap from hand-made navigation over to using [auto-route](https://pub.dev/packages/auto_route)
 - Introduce State Management with [Bloc](https://pub.dev/packages/bloc)
 - Add Tests to ensure code quality
 - Revamp project structure to be ready for data layer

By doing this, we can have a complete and total understanding of how to properly setup navigation throughout your app.


# Setup
- [Install Flutter](https://flutter.dev/docs/get-started/install)
- To ensure code quality, Git Hooks and a Git Action have been setup. You can use the hooks I've created by running 

  `git config core.hooksPath .github/hooks` 

  in the project folder. When you commit and push anything, your code will be cleaned and tested automatically!
- Run the project!

