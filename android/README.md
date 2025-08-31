# Dime Android - Personal Finance Tracker

An Android version of the Dime personal finance tracker app, built with Jetpack Compose, Room database, and modern Android architecture patterns.

## Features

- **Transaction Management**: Add, edit, and delete income/expense transactions
- **Category Management**: Create custom categories with emojis and colors
- **Budget Tracking**: Set and monitor budgets for categories and overall spending
- **Insights & Analytics**: View spending patterns with charts and summaries
- **Recurring Transactions**: Automatic processing of daily, weekly, monthly, and yearly recurring transactions
- **Biometric Authentication**: Secure app access with fingerprint/face unlock
- **Data Export/Import**: Backup and restore data in JSON or CSV format
- **Home Screen Widget**: Quick balance overview on home screen
- **Dark/Light Theme**: Automatic theme switching based on system preferences
- **Notifications**: Expense reminders and budget alerts

## Architecture

### Tech Stack
- **UI**: Jetpack Compose with Material 3 Design
- **Database**: Room with SQLite
- **Dependency Injection**: Hilt
- **Async Operations**: Kotlin Coroutines and Flow
- **Background Work**: WorkManager for recurring transactions
- **Authentication**: AndroidX Biometric API
- **Data Storage**: DataStore for preferences
- **Charts**: MPAndroidChart library

### Project Structure
```
app/src/main/java/com/dime/android/
├── data/
│   ├── entity/          # Room entities (Transaction, Category, Budget, MainBudget)
│   ├── dao/             # Data Access Objects
│   ├── database/        # Room database configuration
│   ├── repository/      # Repository pattern implementation
│   ├── converter/       # Type converters for Room
│   └── relation/        # Entity relationships
├── di/                  # Hilt dependency injection modules
├── model/               # Data models and enums
├── ui/
│   ├── screen/          # Compose screens (Log, Budget, Insights, Settings)
│   ├── component/       # Reusable UI components
│   └── theme/           # Material 3 theme configuration
├── util/                # Utility classes (formatters, managers)
├── viewmodel/           # ViewModels for state management
├── worker/              # Background workers
├── widget/              # Home screen widget
└── notification/        # Notification helpers
```

## Setup Instructions

### Prerequisites
- Android Studio Arctic Fox or later
- Android SDK 26+ (Android 8.0)
- Kotlin 1.9+
- Gradle 8.0+

### Building the App
1. Clone the repository
2. Open the `android` folder in Android Studio
3. Sync the project with Gradle files
4. Build and run on device/emulator

### Configuration
The app uses the following permissions:
- `USE_BIOMETRIC` - For biometric authentication
- `POST_NOTIFICATIONS` - For expense reminders
- `RECEIVE_BOOT_COMPLETED` - For recurring transaction processing

## Data Model

### Core Entities
- **Transaction**: Financial transactions with amount, category, date, and recurring properties
- **Category**: Expense/income categories with emoji, color, and ordering
- **Budget**: Category-specific budgets with time periods and sustainability flags
- **MainBudget**: Overall spending budgets

### Relationships
- Transactions belong to Categories (many-to-one)
- Budgets are linked to Categories (many-to-one)
- All entities support full CRUD operations

## Key Features Implementation

### Recurring Transactions
- Background WorkManager processes recurring transactions
- Supports daily, weekly, monthly, and yearly frequencies
- Prevents duplicate creation with date-based checks

### Biometric Security
- Optional app lock with fingerprint/face authentication
- Graceful fallback for devices without biometric hardware
- Secure preference storage

### Data Export/Import
- JSON format for complete data backup/restore
- CSV export for transaction analysis
- File picker integration for easy data management

### Home Screen Widget
- Displays current balance and recent activity
- Updates automatically with transaction changes
- Configurable refresh intervals

## Development Status

✅ **Completed Components:**
- Complete data layer with Room database
- All UI screens and components
- ViewModels with state management
- Biometric authentication
- Recurring transaction processing
- Export/import functionality
- Home screen widget
- Notification system
- Theme and styling

🔄 **Next Steps:**
- Cloud sync integration (similar to iOS CloudKit)
- Advanced analytics and reporting
- Transaction search and filtering
- Backup encryption
- Performance optimizations

## Testing

The app includes:
- Unit tests for ViewModels and repositories
- Integration tests for database operations
- UI tests for critical user flows

Run tests with:
```bash
./gradlew test
./gradlew connectedAndroidTest
```

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Add tests for new functionality
5. Submit a pull request

## License

This project maintains the same license as the original iOS Dime app.
