# CMSC408 - Fall 2024 - Homework 6

## Project Overview
This project involves creating a company-wide resume database that captures and organizes the skills, certifications, and roles of employees in a small design and development team. The database is designed to allow the company’s sensei to view employees' skills, track role assignments, and identify skill gaps. This database will support better planning and help fulfill the company’s goal of documenting and enhancing its collective expertise.

## File Storage
The main file for this project, `report.qmd`, is located in the `report` folder of the GitHub repository.

## Required Programs
To run this project, you'll need to have the following installed:
- **Poetry** (for managing dependencies and virtual environments)
- **Docker** (to create a consistent environment)
- **Quarto** (to render the `report.qmd` file)

Make sure you have these installed before proceeding.

## Running the Project
To completely build `report.html`, follow these steps:

1. Clone this repository and navigate into the project directory:
   ```bash
   cd path/to/repository
   ```
2. Install dependencies with Poetry:
    ```bash
   poetry install
   ```
3. Start a Poetry shell:
    ```bash
   poetry shell
   ```
4. Render the Quarto report:
    ```bash
   quarto render report/report.qmd
   ```

After running these commands, the generated report.html will be located in the report folder. This file contains the full documentation and results of the database setup and its functionalities.

