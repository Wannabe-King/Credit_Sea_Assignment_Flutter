# creditsea_flutter_assignment

A new Flutter project.

## Getting Started

## Backend at [Link](https://github.com/Wannabe-King/Credit_Sea_Assignment_Flutter_backend)

# Flutter Frontend - Loan Application & User Management

## Overview
This Flutter application provides a frontend interface for user authentication, personal detail management, and loan application functionalities. It integrates with a Node.js + Express backend and MongoDB database. The project follows a modular architecture with GetX for state management and route handling.

## Features
- User Registration & Authentication
- Personal Detail Management
- Loan Application & Status Tracking
- Responsive UI with Custom Widgets
- GetX for State Management & Routing

---

## Folder Structure
```
lib/
├── config/                # App configurations (colors, assets, carousel items)
│   ├── assets.dart
│   ├── carousal_items.dart
│   └── color.dart
│
├── controllers/           # GetX controllers for managing app logic
│   ├── auth_controller.dart
│   ├── carousal_controller.dart
│   ├── loan_controller.dart
│   ├── personal_detail_controller.dart
│   ├── signin_controller.dart
│   └── signup_controller.dart
│
├── routes/                # App routing and navigation
│   └── routes_controller.dart
│
├── view/
│   ├── screens/           # App screens
│   │   ├── applicationstatus.dart
│   │   ├── applyforloan.dart
│   │   ├── email_verification.dart
│   │   ├── loanoffer.dart
│   │   ├── name_screen.dart
│   │   ├── pan_detail.dart
│   │   ├── personal_details.dart
│   │   ├── signin.dart
│   │   ├── signupFlow.dart
│   │   └── welcome.dart
│   │
│   └── widget/            # Reusable custom widgets
│       ├── custom_date_picker.dart
│       ├── custom_gender_dropdown.dart
│       ├── custom_input_container.dart
│       ├── custom_input_field.dart
│       ├── custom_phone_input.dart
│       ├── custom_tile.dart
│       ├── custom_top_container.dart
│       ├── custombutton.dart
│       ├── progress_container.dart
│       ├── show_dialog.dart
│       └── status_tile.dart
└── pubspec.yaml           # Project dependencies and assets configuration
```

---

## Setup Instructions
1. **Clone the repository:**
   ```bash
   git clone <repository_url>
   cd <project_directory>
   ```

2. **Install dependencies:**
   ```bash
   flutter pub get
   ```

3. **Configure environment:**
   Create a `.env` file for backend URL or use constants inside the `config/` folder.

4. **Run the application:**
   ```bash
   flutter run
   ```

---

## Key Controllers
- **auth_controller.dart:** Handles user authentication logic.
- **loan_controller.dart:** Manages loan application data and API interactions.
- **personal_detail_controller.dart:** Updates and fetches user personal details.

---

## API Integration Examples
### 1. **Update User Details**
```dart
void updateUserDetail(Map<String, String> userDetails) async {
  try {
    final response = await http.put(
      Uri.parse('https://<backend_url>/api/auth/update/<phoneNumber>'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authController.token}',
      },
      body: jsonEncode(userDetails),
    );

    if (response.statusCode == 200) {
      Get.snackbar('Success', 'User details updated');
    } else {
      Get.snackbar('Error', 'Failed to update details');
    }
  } catch (e) {
    Get.snackbar('Error', e.toString());
  }
}
```

### 2. **Create Loan Application**
```dart
void createLoanApplication(Map<String, dynamic> loanData) async {
  try {
    final response = await http.post(
      Uri.parse('https://<backend_url>/api/loan/create'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${authController.token}',
      },
      body: jsonEncode(loanData),
    );

    if (response.statusCode == 201) {
      Get.snackbar('Success', 'Loan application submitted');
    } else {
      Get.snackbar('Error', 'Failed to submit loan application');
    }
  } catch (e) {
    Get.snackbar('Error', e.toString());
  }
}
```

---

## Technologies Used
- **Flutter** & **Dart** – Frontend development  
- **GetX** – State management and routing  
- **HTTP Package** – API calls  
- **Custom Widgets** – Reusable UI components  

---

## License
This project is for educational purposes only.
