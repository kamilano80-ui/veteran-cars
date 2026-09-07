# Veteran Cars

**Veteran Cars** is a CMS web application focused on historic and classic cars. 
The project was created as a portfolio project while learning PHP and the Nette Framework.

The application is divided into two main parts:

* **Administration** – management of users, articles, categories, comments, CMS pages and contact information.
* **Frontend** – public website where visitors can browse articles, filter them by category, read article details, 
add comments and use the contact form.

The main goal of the project was to practice working with the Nette Framework, MVC architecture, databases, 
forms, authentication and CRUD operations.

## Features

### Administration

* Dashboard with an overview of articles and comments
* User management
  * Add users
  * Delete users
  * User authentication
  * User roles
 
* Category management
  * Create categories
  * Edit categories
  * Delete categories
  
* Article management
  * Create articles
  * Edit articles
  * Delete articles
  * Assign articles to categories
  * Upload article images

* Comment management
  * Display comments
  * Delete comments

* CMS page management
  * Create pages
  * Edit pages
  * Delete pages
  * Upload page images

* Contact information management
* Access control for administration

### Frontend

* Homepage
* Article listing
* Article detail
* Filtering articles by category
* CMS pages
* Comments
* Contact page
* Contact form with email sending
* Responsive user interface
* Image display for articles and CMS pages

## Technologies

* PHP 8.1+
* Nette Framework 3.2
* Latte 3
* Nette Database
* Nette Forms
* Nette Security
* Nette Mail
* Tracy
* Nittro
* Bootstrap form renderer
* MariaDB / MySQL
* HTML5
* CSS3
* JavaScript
* Composer

## Architecture

The application follows the MVC architecture provided by the Nette Framework.

### Presenters

Presenters handle requests, application flow and communication between the frontend and the model layer.

The application contains separate presenters for the administration and frontend:

* `Presentation/Admin`
* `Presentation/Front`

### Model

The model layer contains managers responsible for database operations and application logic.

Examples:

* `ArticleManager`
* `CategoryManager`
* `CmsManager`
* `UserManager`
* `CommentManager`
* `ContactManager`
* `DatabaseManager`

### Forms

Forms are separated into reusable factories where appropriate.

Examples:

* `FormFactory`
* `SignInFormFactory`
* `SignUpFormFactory`

### Components

The project contains reusable Nette components.

For example, the `Comments` component handles displaying and adding comments for an article.

### Templates

The presentation layer uses Latte templates for rendering the frontend and administration interface.

## Authentication & Authorization

The administration interface is protected using Nette Security.

Users can have one of two roles:

* `member` – administrator/editor access to selected parts of the administration
* `admin` – full administration access

Authentication is handled by `UserManager`, which implements `IAuthenticator`.

Passwords are securely hashed using Nette's `Passwords` service.

Access to individual administration resources is controlled using Nette authorization.

## Routing

The application uses custom routing defined in `RouterFactory`.

Examples of frontend routes:

* `/kontakt`
* `/clanek/<id>`
* `/<url>`
* `/<presenter>/<url>`

Administration routes use the `/admin/` prefix:

* `/admin/dashboard`
* `/admin/article`
* `/admin/category`
* `/admin/user`
* `/admin/comment`
* `/admin/cms`
* `/admin/setting`

## Database

The application uses a relational MariaDB/MySQL database.

Main tables:

| Table              | Description                                               |
| ------------------ | --------------------------------------------------------- |
| `user`             | Application users and their roles                         |
| `article`          | Articles                                                  |
| `category`         | Article categories                                        |
| `article_category` | Many-to-many relationship between articles and categories |
| `comments`         | Comments belonging to articles                            |
| `cms`              | CMS pages and homepage content                            |
| `contact`          | Contact information                                       |

Articles and categories have a many-to-many relationship through the `article_category` junction table.

Comments are linked to articles using a foreign key. Deleting an article also removes its related comments.

The database dump is located in:

```text
db/veteran_car.sql
```

## Image Handling

The application supports image uploads for articles and CMS pages.

Uploaded images are processed using Nette's image utilities and resized to:

```text
900 × 400 px
```

Article images are stored in:

```text
www/images/articles
```

CMS images are stored in:

```text
www/images/cms
```

## Contact Form

The frontend contains a contact form that allows visitors to send a message directly to the configured contact 
email address.

The form includes:

* Email validation
* Message validation
* Simple anti-spam protection using the current year
* Email sending through Nette Mail

The destination email address is configured in the application configuration.

## Installation

### Requirements

* PHP 8.1 or newer
* Composer
* MariaDB or MySQL
* Web server or PHP built-in development server

### 1. Clone the repository

```bash
git clone https://github.com/kamilano80-ui/veteran-cars.git
cd veteran-cars
```

### 2. Install dependencies

```bash
composer install
```

### 3. Create the database

Import the database dump:

```text
db/veteran_car.sql
```

The SQL dump creates the `veteran_car` database and its required tables.

### 4. Configure the database

Update the database connection in:

```text
config/common.neon
```

Example:

```neon
database:
    dsn: 'mysql:host=127.0.0.1;dbname=veteran_car'
    user: root
    password: ''
```

Change the database credentials according to your local environment.

### 5. Start the application

For local development, the application can be started using PHP's built-in server:

```bash
php -S localhost:8000 -t www
```

Then open:

```text
http://localhost:8000
```

## Configuration

Application configuration is stored in the `config` directory.

The main configuration file is:

```text
config/common.neon
```

It contains:

* Database connection
* Contact email
* Nette application configuration
* Latte configuration
* Security roles
* Registered services
* Authorization rules

Local environment-specific configuration should not contain credentials that are committed to the repository.

## Project Structure

```text
veteran-cars/
├── app/
│   ├── Components/
│   │   ├── Comments.php
│   │   ├── Comments.latte
│   │   └── form.latte
│   ├── Core/
│   │   └── RouterFactory.php
│   ├── Forms/
│   │   ├── FormFactory.php
│   │   ├── SignInFormFactory.php
│   │   └── SignUpFormFactory.php
│   ├── Model/
│   │   ├── ArticleManager.php
│   │   ├── CategoryManager.php
│   │   ├── CmsManager.php
│   │   ├── CommentManager.php
│   │   ├── ContactManager.php
│   │   ├── DatabaseManager.php
│   │   └── UserManager.php
│   └── Presentation/
│       ├── Admin/
│       ├── Front/
│       ├── Error/
│       └── Accessory/
├── config/
│   ├── common.neon
│   └── services.neon
├── db/
│   └── veteran_car.sql
├── www/
│   ├── images/
│   ├── css/
│   ├── js/
│   └── index.php
├── composer.json
└── README.md
```

## Testing

The project currently does not contain a comprehensive automated test suite.

The application has been tested manually during development, including:

* User authentication
* Administration access
* CRUD operations
* Article and category management
* Comment functionality
* Contact form
* Image uploads
* Frontend navigation

Automated tests using Nette Tester / PHPUnit could be added in the future.

## Future Improvements

Possible future improvements include:

* Automated tests
* Pagination of articles
* Article search
* Improved user role management
* Confirmation dialogs before deleting records
* Rich text editor for article content
* Improved image management
* Additional form validation
* Improved administration dashboard

## About the Project

Veteran Cars was created as a portfolio project while learning PHP and the Nette Framework.

The project helped me practice:

* PHP programming
* Nette Framework
* MVC architecture
* Object-oriented programming
* Database design and SQL
* CRUD operations
* Authentication and authorization
* Forms and validation
* Latte templating
* Reusable components
* File and image uploads
* Email sending
* Custom routing
* Application structure

The project is primarily intended as a demonstration of my progress in web application development 
and my ability to work with the Nette Framework.

## License

This project is available under the license specified in `composer.json`.

## Author

This project was created as a personal learning project focused on PHP and the Nette Framework.

**Author:** Kamila Vojtíšková
