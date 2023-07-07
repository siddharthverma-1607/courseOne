-- Create the 'courseone' database
CREATE DATABASE courseone;

-- Use the 'courseone' database
USE courseone;

-- Create the 'topic' table
CREATE TABLE topic (
  id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL
);

-- Create the 'course' table
CREATE TABLE course (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  description TEXT NOT NULL,
  course_type VARCHAR(100) NOT NULL,
  price DECIMAL(8, 2) NOT NULL,
  popularity INT NOT NULL
);

-- Create the 'course_topic' table (many-to-many relationship)
CREATE TABLE course_topic (
  id INT PRIMARY KEY AUTO_INCREMENT,
  course_id INT NOT NULL,
  topic_id INT NOT NULL,
  FOREIGN KEY (course_id) REFERENCES course(id),
  FOREIGN KEY (topic_id) REFERENCES topic(id)
);

-- Create the 'content' table
CREATE TABLE content (
  id INT PRIMARY KEY AUTO_INCREMENT,
  brief VARCHAR(200) NOT NULL,
  course_id INT NOT NULL,
  FOREIGN KEY (course_id) REFERENCES course(id)
);

-- Create the 'lecture' table
CREATE TABLE lecture (
  id INT PRIMARY KEY AUTO_INCREMENT,
  brief text NOT NULL,
  content_id INT NOT NULL,
  FOREIGN KEY (content_id) REFERENCES content(id)
);

-- Create the 'video' table
CREATE TABLE video (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  url VARCHAR(200) NOT NULL,
  lecture_id INT NOT NULL,
  FOREIGN KEY (lecture_id) REFERENCES lecture(id)
);

-- Create the 'image' table
CREATE TABLE image (
  id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  url VARCHAR(200) NOT NULL,
  content_id INT NOT NULL,
  FOREIGN KEY (content_id) REFERENCES content(id)
);
