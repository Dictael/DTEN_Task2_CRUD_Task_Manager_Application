# Task 2 — CRUD Task Manager Application

## Requirements covered
- Full-stack task management application.
- Node.js + Express backend.
- MySQL relational database.
- Sign up and login authentication using bcrypt password hashing and JWT sessions.
- Tasks belong to individual users.
- Create, read, update and delete task operations.
- Search, status and priority filtering.
- Status, priority and due-date fields.
- Prepared SQL statements and ownership checks.
- This README documents the tech stack and setup instructions.

## Tech stack
- Frontend: HTML, CSS, JavaScript
- Backend: Node.js, Express
- Database: MySQL
- Authentication: bcryptjs + JSON Web Tokens

## Setup with XAMPP MySQL
1. Install Node.js 18+ and start MySQL from XAMPP.
2. Open phpMyAdmin at `http://localhost/phpmyadmin`.
3. Import `schema.sql` or copy its SQL into the SQL tab and run it.
4. Open this Task 2 folder in a terminal.
5. Run `npm install`.
6. Copy `.env.example` to `.env`.
7. Set a strong `JWT_SECRET`. If your XAMPP MySQL root account has a password, enter it as `DB_PASSWORD`.
8. Run `npm start`.
9. Open `http://localhost:3000`.

## Test flow
1. Create an account.
2. Log in.
3. Create several tasks with different statuses and priorities.
4. Edit a task.
5. Search/filter tasks.
6. Delete a task.
7. Create a second account and confirm each user sees only their own tasks.

## GitHub
Upload the complete source code to the required GitHub repository. Do not use GitHub Pages to run this project because GitHub Pages does not execute Node.js or MySQL. The repository is for source-code submission; the application itself runs with Node.js and MySQL.
