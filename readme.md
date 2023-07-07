# CourseOne Project

CourseOne is a web application that provides an extensive REST API for a Coursera-like website. It allows users to browse courses, view course details, and apply filters based on type, price, popularity, and topics. The project is built using Django and MySQL, and follows a Model-View-Controller (MVC) architecture.

## Features

- Courses List: View a list of courses with filtering options.
- Single Course Details: View detailed information about a specific course, including videos, images, content, and lectures.
- Filter Courses: Apply filters based on type, price, popularity, and topics to narrow down the course list.

## Setup Instructions

Follow these steps to set up and run the CourseOne project on your local machine:

### Prerequisites

- Python (version 3.7 or higher)
- Django (version 3.x)
- MySQL (version 5.x)

### Installation

1. Clone the repository:
git clone https://github.com/your-username/courseone.git


2. Change into the project directory:
cd courseone


3. Create a virtual environment:
python3 -m venv myenv


4. Activate the virtual environment:
- On macOS/Linux:
  ```
  source myenv/bin/activate
  ```
- On Windows:
  ```
  myenv\Scripts\activate
  ```

5. Install the required dependencies:
pip install -r requirements.txt


6. Create a MySQL database:
- Create a new database called `courseone` using your preferred MySQL management tool (e.g., MySQL Workbench).

7. Update the database settings:
- Open the `settings.py` file located in the `courseone` directory.
- Update the `DATABASES` section with your MySQL database details (database name, username, password).

8. Apply database migrations:
python manage.py migrate


### Running the Project

1. Start the Django development server:
python manage.py runserver


2. Access the application in your web browser:
http://localhost:8000/


## Contribution

Contributions to the CourseOne project are welcome! If you find any issues or want to add new features, feel free to create a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
