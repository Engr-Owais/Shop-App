### 📁 Overview
This is a basic e-commerce mobile application built using Flutter and the Fakestore API for product listings and details. The app supports core features such as viewing product listings, accessing individual product details, and an internet connection checker. The project is suitable for Android and iOS.

### 📁 Description

🌐 Checks the internet connection before displaying products.
📋 If connected, lists available products.
➕ Each product has a "+" icon in the top right corner to add it to the basket.
📈 An animated menu appears to increase or decrease product quantity.
🔄 When adding or deleting products, the basket value in the upper right updates in real-time.
🛒 Click the basket value to view items in your basket.
📦 In the basket, you can increase or decrease product quantities as needed.
🔍 You can search for products as well.

### 📶 API
[Fake store api](https://fakestoreapi.com/) is used in this project.Data in the API is parsed with the [json_serializable](https://pub.dev/packages/json_serializable) and [json_annotation](https://pub.dev/packages/json_annotation) methods. The ["dio"](https://pub.dev/packages/dio) package is used to send requests to the API.

### 🧑🏻‍💻 Coding
✨ Wrote clean code following best practices.
🏛️ Used MVVM (Model-View-ViewModel) as the software architecture.
📂 Project structured into three main folders:
  🔧 Core: Contains shared elements like extensions, singleton classes, base classes, and navigation routes used across all projects.
  📱 Properties: Houses individual screens organized according to the MVVM model, handling both design and API integration.
  ⚙️  Product: Contains atomic widgets, custom components, and managers.
🛠️ Utilized Provider for state management.

## Technical Decisions
## MVVM Architecture: 
  Chose the Model-View-ViewModel pattern for clear separation of concerns. This helps in maintaining cleaner, testable, and scalable code by separating business logic from UI.

## Provider for State Management: 
  Used Provider to handle state management. It offers a simple, lightweight, and efficient way to manage application state, making it easier to propagate state changes across the app while maintaining performance.

## Folder Structure:

## Core Folder: 
  Centralized shared components like extensions, singleton classes, base classes, and navigation routes for reuse across multiple projects. This keeps the core logic modular and easier to maintain.
  
## Properties Folder: 
  Organized screens according to the MVVM pattern, ensuring that each screen has a well-defined structure separating UI from business logic and API handling.

## Product Folder: 
  Contains atomic widgets, reusable components, and managers, which ensures a modular approach to UI design and logic handling, promoting reuse and consistency across the app.

## Clean Code Principle: 
  Followed clean coding practices throughout the project to ensure the code is easy to understand, maintain, and scale. This includes adhering to single responsibility principles and using meaningful naming conventions.

## Offline Mode: 
  Added functionality to handle cases where the app detects no internet connection, ensuring a smoother user experience.

## How to Use This Repo?

## Prerequisites
- Flutter SDK installed
- Android Studio or Visual Studio Code with Flutter extensions
- A device/emulator to run the app

**Clone this repo using:**
git clone https://github.com/Engr-Owais/Shop-App.git

**Install dependencies:**
Flutter pub get


## Screenshots

<img width="272" alt="Screenshot 2024-09-14 at 1 01 15 PM" src="https://github.com/user-attachments/assets/90770f84-ab23-4e29-9a92-06d8b0b98b04">
<img width="270" alt="Screenshot 2024-09-14 at 1 01 26 PM" src="https://github.com/user-attachments/assets/873bfc1d-be9f-4e37-9b00-dd792c1aac95">
<img width="272" alt="Screenshot 2024-09-14 at 1 01 34 PM" src="https://github.com/user-attachments/assets/f1363b3a-a7d6-4e6d-93f6-f2dedee6633c">
<img width="273" alt="Screenshot 2024-09-14 at 1 01 47 PM" src="https://github.com/user-attachments/assets/d227b964-f98d-4e76-8cd2-bfa47dd00966">
<img width="269" alt="Screenshot 2024-09-14 at 1 02 09 PM" src="https://github.com/user-attachments/assets/e7bf1796-9dc4-4f11-a95c-29350231a1da">

