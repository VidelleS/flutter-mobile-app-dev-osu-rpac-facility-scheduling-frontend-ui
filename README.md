RPAC Fitness – OSU Facility Scheduling App (Frontend UI)

This is a Flutter-based frontend prototype for viewing and scheduling activities at the Ohio State University RPAC (Recreation and Physical Activity Center).  
I built it as a solo project to reimagine how students could explore facilities, browse sports and fitness programs, and check gym availability from their phone.

---

🎥 Demo
A short demo video of the app and its interface is available on my [LinkedIn](https://www.linkedin.com/posts/videlle-sita_fitness-ohiostateuniversity-osurpac-activity-7046426889741111296-D6o8).
App built in Dec 2022
---

🏋️ About the App
The app simulates a working scheduling system using data scraped from the official OSU RPAC site.  
Everything — from page navigation to UI components and layouts — was coded manually in Flutter.  
There’s no backend or API connection; all functionality is frontend-based and purely interface-driven.

Main Features
- Splash and landing pages for smooth app entry  
- Category-based browsing (e.g., Rec Sports, Classes, Clubs)  
- Subcategory pages displaying detailed facility options  
- Clean Material UI design with Flutter widgets  
- Dynamic image-based cards for activities  

---

🧠 Tech Stack
- **Language:** Dart  
- **Framework:** Flutter  
- **Platform:** Android / iOS / Web  
- **Concepts:** OOP, data structuring, widget trees, and navigation management  

---

📁 Project Structure
/lib
├── main.dart                         # Entry point and app routing

Data models and utility files
├── Data/
│   ├── Category.dart                 # Defines main facility categories
│   ├── Schedule.dart                 # Handles time and day mapping logic
│   ├── subcategory.dart              # Data class for subcategories
│   └── Utils.dart                    # Helper functions and shared data

UI screens and layouts
├── Pages/
│   ├── Home.dart                     # Home screen showing facility cards
│   ├── splashpage.dart               # Splash screen on app startup
│   ├── square.dart                   # Reusable UI widget for square cards
│   ├── selectedcategorypage.dart     # Displays all subcategories in a category
│   └── selectedsubcategorypage.dart  # Detailed view for specific facility

UI icons and photos
/images/                              # Zumba, Soccer, Volleyball, etc.

/pubspec.yaml   

---

🧩 Developer Notes
This app was created independently as a **UI concept project** — all code, layout, and visuals were designed and implemented from scratch.  
The project uses **object-oriented design** and **simple data structures** to organize category and scheduling data in a maintainable way.

The data files define reusable models (`Category`, `SubCategory`, `Schedule`) that feed into dynamically rendered UI pages.  
This structure made it easy to build scalable navigation logic without connecting to an actual API.

---

🧰 Skills Highlight
- Flutter UI design  
- Object-oriented programming in Dart  
- Data structuring for frontend logic  
- Responsive layout and widget composition  
- Version control with Git  

---
