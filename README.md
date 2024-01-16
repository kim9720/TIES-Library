# TIES-Library

--> how to run front end <--

the project is already deployed for testing you can use this link  **https://library-frontend-pied.vercel.app/**
or follow the to configure in your local machine

1. **Clone the Repository:**

     https://github.com/kim9720/TIES-Library.git
    
2. **Navigate to the library-frontend:**
  
3. **Install Dependencies:**
   open terminal and run commamd bellow
     npm install
   
4. **Start the Development Server:**
   run commamd bellow
     npm start
  
5. **Access the Application:**
    
     Open your browser and visit http://localhost:3000/
    

    --> how to run back end <--
1. **Navigate to the library_backend:**

3. **Install Dependencies:**
    open terminal and run commamd bellow
     composer install
  

4. **Configure the Database:**
   - Open the `.env` file in a text editor and configure the database connection settings:
  
     DB_CONNECTION=mysql
     DB_HOST=127.0.0.1
     DB_PORT=3306
     DB_DATABASE= lybrary
     DB_USERNAME=root
     DB_PASSWORD=
  

5. **Run Migrations and Seed (if needed):**
   - Run the following commands to migrate the database:
     php artisan migrate  

6. **Start the Laravel Development Server:**
   - Run the following command to start the Laravel development server:
     php artisan serve
  

--> Access End point <--
 **NOTE**
 the backend is already deployed via this link: ***https://kim.nuwarisha.org/public** you can accss those API via this link or you can configure your local server

### User Endpoints

#### Register User
- **URL:** `/register`
- **Method:** `POST`
- **Description:** Register a new user.
- **Request Body:**
  - `name`: User's name
  - `email`: User's email
  - `password`: User's password

#### Login User
- **URL:** `/login`
- **Method:** `POST`
- **Description:** Login existing user.
- **Request Body:**
  - `email`: User's email
  - `password`: User's password

#### Get All Users
- **URL:** `/users`
- **Method:** `GET`
- **Description:** Retrieve a list of all users.

#### Get User by ID
- **URL:** `/users/{id}`
- **Method:** `GET`
- **Description:** Retrieve information about a specific user.
- **URL Parameters:**
  - `id`: User ID

#### Update User
- **URL:** `/users/{id}`
- **Method:** `PUT`
- **Description:** Update information for a specific user.
- **URL Parameters:**
  - `id`: User ID
- **Request Body:** Updated user data

#### Delete User
- **URL:** `/users/{id}`
- **Method:** `DELETE`
- **Description:** Delete a specific user.
- **URL Parameters:**
  - `id`: User ID

#### Get Number of Users
- **URL:** `/userscount`
- **Method:** `GET`
- **Description:** Get the total number of users.

### Book Endpoints

#### Get All Books
- **URL:** `/books`
- **Method:** `GET`
- **Description:** Retrieve a list of all books.

#### Get Book by ID
- **URL:** `/books/{id}`
- **Method:** `GET`
- **Description:** Retrieve information about a specific book.
- **URL Parameters:**
  - `id`: Book ID

#### Create New Book
- **URL:** `/books`
- **Method:** `POST`
- **Description:** Create a new book.
- **Request Body:**
  - `title`: Book title
  - `author`: Book author
  - `published_at`: Book publication date (optional)

#### Update Book
- **URL:** `/books/{id}`
- **Method:** `PUT`
- **Description:** Update information for a specific book.
- **URL Parameters:**
  - `id`: Book ID
- **Request Body:** Updated book data

#### Delete Book
- **URL:** `/books/{id}`
- **Method:** `DELETE`
- **Description:** Delete a specific book.
- **URL Parameters:**
  - `id`: Book ID

#### Get Book Image
- **URL:** `/books/{id}/image`
- **Method:** `GET`
- **Description:** Retrieve the image of a specific book.
- **URL Parameters:**
  - `id`: Book ID

#### Get Number of Books
- **URL:** `/bookscount`
- **Method:** `GET`
- **Description:** Get the total number of books.

### Favorite Endpoints

#### Get All Favorites
- **URL:** `/favorites`
- **Method:** `GET`
- **Description:** Retrieve a list of all favorites.

#### Get Favorite by ID
- **URL:** `/favorites/{id}`
- **Method:** `GET`
- **Description:** Retrieve information about a specific favorite.
- **URL Parameters:**
  - `id`: Favorite ID

#### Create New Favorite
- **URL:** `/favorites`
- **Method:** `POST`
- **Description:** Create a new favorite.
- **Request Body:**
  - `user_id`: User ID
  - `book_id`: Book ID

#### Delete Favorite
- **URL:** `/favorites/{id}`
- **Method:** `DELETE`
- **Description:** Delete a specific favorite.
- **URL Parameters:**
  - `id`: Favorite ID





