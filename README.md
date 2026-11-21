# Package delivery database

## Set Up
#set up virtual environment

#install dependencies 

#launch app

## Project Design 
A Flask (Python 3.11) web application that functions as both a customer and employee interface for a package delivery system. Utilizes Python Flask for backend, Oracle for database and frontend built with HTML, CSS and Javascript.

_Tech Stack_
- Backend: Python Flask
- Frontend: HTML, CSS, JavaScript
- Database: Oracle
- Hosting: 

_Git Repo Structure_
```text
.
├── app.py                              # backend Python Flask - routing, roles, authorization
├── config.py                           # configuring Flask and Oracle db
├── db                                  # database - initialization, sample data
│   ├── database.py
│   ├── package_tracking.ddl
│   └── sample_data.sql
├── er_diagram                          # ER Diagram
│   └── Relational_2.png
├── models.py                           # backend login authentication and functionality
├── README.md                           
├── requirements.txt          
├── static                              # frontend styling - CSS & JavaScript
│   ├── css
│   │   └── style.css
│   └── js
│       └── script.js
└── templates                           # frontend pages - HTML
    ├── customer                        # customer pages
    │   └── ...
    ├── employee                        # employee pages
    │   └── ...
    └── ...                             # common pages for customers and employees
```

## Project Guidelines
#### _ER Diagram_: 
develop an ER Model for the application. The ER Diagram can be included in the report as any type of image file.

#### _Relational Schema_: 
a translation of the ER Model into a relational schema implemented as an SQL script. In addition to defining tables and constraints, this script may include views or indexes where appropriate. Please upload the script as a simple text file.

#### _Application_: 
develop a web or desktop application that uses its relational schema. Please feel free to use GitHub or BitBucket to manage/exchange the source codes with your teammates.

The following application requirements illustrate the automobile sales example. Groups choosing other
topics should define corresponding functions for their own applications.

• Every customer registers an account with an email and will be assigned an ID for automobile purchase
from the current automobile company. If one customer purchases multiple vehicles from different
dealers, the same ID is used.
• A customer holding an account can register/modify/delete the information for their account.
• A customer can check his/her purchase history.
• Employees at dealers can login, check and update the vehicle information in stock.
• Before new vehicles arrive any dealer, the system checks that if the dealer has enough space (not
exceeding the maximum number of vehicles).

All the above data and application are only examples. If you would like to add more functionalities in
the database and application, please feel free to do so.

#### _Submission (Deadline 12/10/2026)_: 
a report (including the ER Diagram, the screen shots of the application, each student’s contributions, and necessary description), source codes, and an SQL script file.

#### _Demo (in early December)_: 
demo can be done via a 10-minute (online) meeting (scheduling a 10-min time slot with the instructor and TA) or video (taping a video for your application and sharing the link to the instructor and TA).
