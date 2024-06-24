# Get a Lift

GetLift is a ride-sharing app to help users expecially students to save money on travel. Users can offer or search for lifts to specific places, making it easy to plan trips with friends, like a holiday. You can book or confirm if you're joining a ride and get details on where to meet, given the time, date and cost of the lift. This new feature aims to make travel cheaper and more fun for everyone.

# Features
Onboarding: this is where the user first interacts with the app (User authentication)
• Log in ,Create Account and Forgot Password (Reset password)

Offer a Lift: 
• Offer a new Lift by indicating your availability , address, cost and departer and destination
• Update Lift Details
• View Offered Lifts

 Search for a Lift: 
• View/ search available Lifts by destination address
• View Lift details

Confirm or Cancel a Lift
• Confirm and View confirmed or booked Lift
• Cancel and view cancelled Lift (remove your self from the lift)

# Technologies Used

UI Framework for the view:
Flutter: The core UI framework for building natively compiled applications for mobile, web, and desktop from a single codebase.
Styling and Themes:
Flutter Material: Material design widgets and components.

UI Libraries:
Flutter Lottie: For rendering animations (welcome screen).

Routing:
Flutter Navigator: Built-in navigation system.

For the Controller
State Management:
Provider: To notify the UI about changes in the model.

Database:
Firebase: Comprehensive suite of services including Firestore for database, Authentication, Cloud Functions, and more.

Payment Processing:
Stripe: For handling payments.

Push Notifications:
Firebase Cloud Messaging (FCM): For sending push notifications to the app.

# Architecture

MVC: The app follows the MVC (Model-View-Controller) ensuring separation of concerns and maintaining a clean and organized codebase. 
data: Contains data-related components following Clean Architecture principles:
ui: User interface components:
screens: RecyclerView adapters for displaying lifts in a listview
viewmodels: ViewModels for managing UI-related data and logic.
FIREBASE: used for user cloud authentication and data storage

## Getting Started
 
 To build and run the GetLift app locally, follow these steps below:

Clone the repository: git clone https://github.com/NonhlePrecious/GetLift.git
Open the project in Android Studio.
Build and run the app on an emulator or physical device.









