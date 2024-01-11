# TIES-Library

--> how to run front end <--

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
 the backend is already deployed via this link: ***https://kim.nuwarisha.org/public** 



