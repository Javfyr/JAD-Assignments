# JAD CA1


##**B: Problem Statement**

With the easing of COVID-19 restrictions, Singapore is expected to see an uptick in tourist
numbers. To help tour operators ride the potential wave of tourist arrivals, many were
encouraged to go digital as a solution for solving manpower and booking issues.

### 1. **Web Application Specification**

In this assignment, you will create a web application that will allow users to book a tour with
any budget. The application should also cater to backend admin functions for tour operator to
manage tour, membership and sales.
The customer should be able to explore all tours, write reviews about their travel, and book
tours. The platform may be able to accept payments through online payment gateway but this
feature can be added at a later phase (i.e. Assignment #2)

For the time being (Assignment #1), the web app should cater to the following USER roles:

• **Business owner** (login is required)

• **General Public** (does not require login)

Minimally, the web app should have the following features:

(a) A home (landing) page

(b) Tour category page

(c) Tour listing page

(d) A customer registration page

(e) An administrator page to allow the admin user login to maintain the tour packages
such as Create, Read, Update and Delete (CRUD) product info.

(f) Apply session management to prevent public from accidentally or intentionally
accessing the pages that they are not authorized.

### 2. **Functional Specification**

The following describes the various roles and their functions:

2.1 Administrator

2.1.1 Administrator can maintain the databases. Section 2.1.2 to 2.1.5 can only be
achieved after successful login. The login credentials are to be stored in a database
table and you are required to use this table to authenticate the administrator.

2.1.2 Session management must be applied to all pages accessible only by the
asministrator.

2.1.3 The Administrator must be able to Create, Remove, Update and Delete (CRUD)
products in the database.

2.1.4 For each Tour, the following minimum information must be recorded:

(a) Tour ID (Primary Key)

(b) Tour title or name

(c) Brief description

(d) Detail description

(e) Price

(f) Slots available

(g) Tour category

(h) Image location

Besides the above mandatory product info, the developer may suggest additional
info/fields to be recorded.

2.1.5 MySQL database tables has to be created to store the above tour package information
with the following basic requirement:

(a) Each tour category contains a number of tours.

(b) Each product should have an image associated with it. By default, the system will
assign a default image.

Example: You can provide the file name in your web folder e.g.
“\images\p101.png” as a text field in the Image location in the database

(c) Minimally there should be at least 3 categories containing 3 products each (i.e. 9
tours in total) in the database

2.2 General Public and Members

2.2.1 Login is not required for General Public.

2.2.2 Public can view tour packages by category.

2.2.3 Public can register as members through the customer registration page.

2.2.4 Once registered as members, they should be able to login to retrieve their own
records for updates or make changes.

###3. **System Specification**

3.1 Web Application Design and Development

3.1.1 There should be a menu that caters to users with different roles.

3.1.2 Navigation should be easy and intuitive.

3.1.3 The website must be reasonably attractive, especially for the public.

3.2 Database Design

3.2.1 The database design should be well thought of and laid out in a ER-diagram.

3.2.2 The database must be designed for easy and efficient CRUD
PROGRAMMATICALLY based on the above Functional Spec.

###4. **Assessment Guidelines**

The assignment will be assessed based on the following criteria:

• Application and adaptation of knowledge learned from classroom (approx. 50%)

• Demonstrate the requirements stated above correctly and effectively (approx. 22%)

• Graphical User Interface and user friendliness: (8%)

• Advanced Features (10%)

• Documentation (12%)

o Task list

 To list down all JSP or HTML pages developed by the respective
members in a table format:

### e.g.
S/N HTML or JSP pages Done by

1 home.jsp John

2 tours.jsp Mary

3 register_member.jsp Mary

4 header.html John

5 footer.html John

6

7

## o Wireframe of the website

SECURITY CLASSIFICATION: Official (CLOSED), NON-SENSITIVE

ST0510-JAD Assignment 1

AY2223 S1 5

 see: [https://www.linkedin.com/learning/user-experience-ux-for-non](https://www.linkedin.com/learning/user-experience-ux-for-non)designers/sketching-your-ideas?u=2122804

## o ER-diagrams of the database design

 see: [https://www.linkedin.com/learning/relational-databases-essential](https://www.linkedin.com/learning/relational-databases-essential)training/develop-a-model-of-the-real-world?u=212280
