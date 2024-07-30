### Project Structure

The project is divided into several components:

#### **Model**
- **UserEntry.java**: Represents a user with attributes such as email, username, and password.
- **UserDto.java**: Data transfer object for user information.
- **MessageEntry.java**: Represents a message with attributes like userName, message, date, and associated user.
- **MessageDto.java**: Data transfer object for message information.

#### **Controllers**
- **IndexController.java**: Handles requests for the main page. Manages the display of the user interface and interactions.
- **ApiController.java**: Provides RESTful endpoints for user and message management. Handles API requests for CRUD operations.

#### **Repositories**
- **UserRepository.java**: Interface for user data access operations.
- **MessageRepository.java**: Interface for message data access operations.

#### **JavaScript**
- **main.js**: Contains functionality for user interactions and API communication.
  - **Event Listeners**: Handles button clicks for login, registration, and message management.
  - **Form Handling**: Manages login, registration, message addition, and editing forms.
  - **UI Management**: Functions to show or hide different parts of the UI.
  - **Message Management**: Fetches and displays messages, and handles editing and deletion.
  - **Utility Functions**: Provides helpers for date formatting and user ID retrieval.
  - **Logout**: Handles user logout and redirection.

#### **Templates**
- **main.ftlh**: FreeMarker template for rendering the login and registration forms along with the message display sections.
  - Contains the login form, registration form, message display, and forms for adding/editing messages.

- **mainMessage.ftlh**: FreeMarker template for rendering the message board view.
  - Displays a personalized welcome message, message table, and forms for adding/editing messages.

### How It Works

1. **Registering a User**: Use the registration form on `main.ftlh` to create a new user account.
2. **Logging In**: Access the login form on `main.ftlh` to enter your credentials. Upon successful login, you will be redirected to the message board.
3. **Managing Messages**: On the message board (`mainMessage.ftlh`), you can view, add, edit, and delete messages. Interaction is managed through the JavaScript in `main.js`.
4. **Logging Out**: Click the logout button to end your session and return to the login page.

### How to Run

1. Make sure you have Java, Maven, and Spring installed in your IDE.
2. Run the Spring Boot app and navigate to `http://localhost:8080/` to interact with the application.
