# my-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS peopleroles;
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

CREATE TABLE skills (
    id int PRIMARY KEY,
    name varchar(255) NOT NULL,
    description varchar(4096) NOT NULL,
    tag varchar(255) NOT NULL,
    url varchar(255),
    time_commitment varchar(255)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

insert into skills (id,name,description,tag,time_commitment) values (101, 'Animal Tracking', 'The ability to track animal locations via footprints', 'Skill 1', 'Medium');
insert into skills (id,name,description,tag,time_commitment) values (102,'Sock Matching', 'Expert ability to find matching pairs of socks in a laundry pile', 'Skill 2', 'Low');
insert into skills (id,name,description,tag,time_commitment) values (103, 'Pencil Spinning', 'Advanced skill in twirling a pencil around fingers without dropping it', 'Skill 3', 'Low');
insert into skills (id,name,description,tag,time_commitment) values (104, 'Impressive Yawning', 'Mastery in performing dramatic yawns that influence others to yawn', 'Skill 4', 'Minimal');
insert into skills (id,name,description,tag,time_commitment) values (105, 'One-Handed Clapping', 'Ability to create sound by clapping with just one hand', 'Skill 5', 'Medium');
insert into skills (id,name,description,tag,time_commitment) values (106, 'Spontaneous Dancing', 'Skill in breaking into dance at random moments', 'Skill 6', 'Low');
insert into skills (id,name,description,tag,time_commitment) values (107, 'Refrigerator Tetris', 'Talent in arranging food items in the fridge to maximize space', 'Skill 7', 'Medium');
insert into skills (id,name,description,tag,time_commitment) values (108, 'Pet Whispering', 'The ability to hold engaging conversations with pets and understand their “replies”', 'Skill 8', 'High');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    id int PRIMARY KEY,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url varchar(255),
    headshot_url varchar(255),
    discord_handle varchar(255),
    brief_bio varchar(255),
    date_joined date NOT NULL
);

# Section 5
# Populate people with TEN people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (201, 'Alex', 'Person 1', 'alex.person1@example.com', 'https://linkedin.com/in/alexperson1', 'alex#1234', 'A motivated designer.', '2023-01-15');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (202, 'Jordan', 'Person 2', 'jordan.person2@example.com', 'https://linkedin.com/in/jordanperson2', 'jordan#2345', 'Skilled in front-end development.', '2022-11-20');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (203, 'Taylor', 'Person 3', 'taylor.person3@example.com', 'https://linkedin.com/in/taylorperson3', 'taylor#3456', 'Passionate about UX/UI.', '2021-08-05');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (204, 'Casey', 'Person 4', 'casey.person4@example.com', 'https://linkedin.com/in/caseyperson4', 'casey#4567', 'Backend developer extraordinaire.', '2023-03-12');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (205, 'Morgan', 'Person 5', 'morgan.person5@example.com', 'https://linkedin.com/in/morganperson5', 'morgan#5678', 'Data scientist in training.', '2022-07-22');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (206, 'Reese', 'Person 6', 'reese.person6@example.com', 'https://linkedin.com/in/reeseperson6', 'reese#6789', 'Loves to work with APIs.', '2021-06-11');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (207, 'Blake', 'Person 7', 'blake.person7@example.com', 'https://linkedin.com/in/blakeperson7', 'blake#7890', 'Machine learning enthusiast.', '2023-02-08');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (208, 'Alexis', 'Person 8', 'alexis.person8@example.com', 'https://linkedin.com/in/alexperson8', 'alexis#8901', 'Front-end designer.', '2020-12-14');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (209, 'Drew', 'Person 9', 'drew.person9@example.com', 'https://linkedin.com/in/drewperson9', 'drew#9012', 'QA engineer with a keen eye.', '2022-05-03');
insert into people (id, first_name, last_name, email, linkedin_url, discord_handle, brief_bio, date_joined) values (210, 'Robin', 'Person 10', 'robin.person10@example.com', 'https://linkedin.com/in/robinperson10', 'robin#0123', 'Specializes in cloud services.', '2023-04-19');

# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.


CREATE TABLE peopleskills(
    id int PRIMARY KEY AUTO_INCREMENT, 
    skills_id int NOT NULL, 
    people_id int NOT NULL, 
    date_acquired date NOT NULL,
    FOREIGN KEY (people_id) REFERENCES people(id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (skills_id) REFERENCES skills(id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
);



# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.


insert into peopleskills (skills_id, people_id, date_acquired) values (101, 201, '2024-03-03');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 201, '2024-07-29');
insert into peopleskills (skills_id, people_id, date_acquired) values (106, 201, '2023-10-17');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 202, '2024-04-10');
insert into peopleskills (skills_id, people_id, date_acquired) values (104, 202, '2024-05-18');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 202, '2023-12-22');
insert into peopleskills (skills_id, people_id, date_acquired) values (101, 203, '2024-01-15');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 203, '2024-02-08');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 205, '2024-06-12');
insert into peopleskills (skills_id, people_id, date_acquired) values (106, 205, '2024-07-03');
insert into peopleskills (skills_id, people_id, date_acquired) values (102, 206, '2024-02-17');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 206, '2023-11-11');
insert into peopleskills (skills_id, people_id, date_acquired) values (104, 206, '2024-01-20');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 207, '2024-04-04');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 207, '2023-09-30');
insert into peopleskills (skills_id, people_id, date_acquired) values (106, 207, '2024-05-05');
insert into peopleskills (skills_id, people_id, date_acquired) values (101, 208, '2024-02-27');
insert into peopleskills (skills_id, people_id, date_acquired) values (103, 208, '2024-03-15');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 208, '2024-01-30');
insert into peopleskills (skills_id, people_id, date_acquired) values (106, 208, '2023-12-01');
insert into peopleskills (skills_id, people_id, date_acquired) values (102, 209, '2023-08-19');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 209, '2024-03-02');
insert into peopleskills (skills_id, people_id, date_acquired) values (106, 209, '2024-01-25');
insert into peopleskills (skills_id, people_id, date_acquired) values (101, 210, '2023-09-14');
insert into peopleskills (skills_id, people_id, date_acquired) values (104, 210, '2024-02-19');
insert into peopleskills (skills_id, people_id, date_acquired) values (105, 210, '2023-11-07');

 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

CREATE TABLE roles(
    id int PRIMARY KEY,
    name varchar(255) NOT NULL,
    sort_priority int
);


# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (id, name, sort_priority) VALUES (401, 'Designer', 10);
INSERT INTO roles (id, name, sort_priority) VALUES (402, 'Developer', 20);
INSERT INTO roles (id, name, sort_priority) VALUES (403, 'Recruit', 30);
INSERT INTO roles (id, name, sort_priority) VALUES (404, 'Team Lead', 40);
INSERT INTO roles (id, name, sort_priority) VALUES (405, 'Boss', 50);
INSERT INTO roles (id, name, sort_priority) VALUES (406, 'Mentor', 60);



# Section 10
# Create peopleroles( id, people_id, roles_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles(
    id int PRIMARY KEY AUTO_INCREMENT,
    people_id int NOT NULL,
    roles_id int NOT NULL,
    date_assigned date NOT NULL,
    FOREIGN KEY (people_id) REFERENCES people(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE,
    FOREIGN KEY (roles_id) REFERENCES roles(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE
);


# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

BEGIN;
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (201, 402, '2024-01-15'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (202, 405, '2024-02-20'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (202, 406, '2024-02-20'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (203, 402, '2024-03-10'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (203, 404, '2024-03-10'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (204, 403, '2024-04-05'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (205, 403, '2024-05-12'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (206, 402, '2024-06-07'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (206, 401, '2024-06-07'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (207, 401, '2024-07-19'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (208, 401, '2024-08-03'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (208, 404, '2024-08-03'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (209, 402, '2024-09-11'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (210, 402, '2024-10-05'); 
INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES (210, 401, '2024-10-05'); 
COMMIT;


