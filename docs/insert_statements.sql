USE courseone;

INSERT INTO `courseone`.`courses_topic`
(`name`)
VALUES
('Science'),
  ('Database'),
  ('Networking'),
  ('Python'),
  ('Neurology'),
  ('Biology');

INSERT INTO `courseone`.`courses_course`
(`title`,
`description`,
`course_type`,
`price`,
`popularity`)
VALUES
('Introduction to Science', 'A comprehensive introduction to the world of science.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Databases for Beginners', 'A hands-on introduction to databases.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Networking Essentials', 'Learn the basics of networking.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Python Programming', 'Learn the basics of Python programming.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Neurology 101', 'An introduction to the human nervous system.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Biology for Everyone', 'A beginner-friendly introduction to biology.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Advanced Science', 'A more in-depth look at the world of science.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Database Design', 'Learn how to design and implement databases.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Networking for Advanced Users', 'Learn more advanced networking concepts.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Python for Data Science', 'Learn how to use Python for data science.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Neurology for Professionals', 'A more in-depth look at the human nervous system.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Biology for Professionals', 'A more in-depth look at biology.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Science of the Mind', 'Explore the science of the mind.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('The Future of Technology', 'Learn about the latest trends in technology.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Artificial Intelligence for Beginners', 'Learn the basics of artificial intelligence.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Machine Learning for Everyone', 'Learn the basics of machine learning.', 'Free', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Deep Learning for Professionals', 'Learn about deep learning.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1)),
  ('Natural Language Processing for Data Scientists', 'Learn how to use natural language processing for data science.', 'Premium', FLOOR(RAND() * 8000 + 400), FLOOR(RAND() * 5 + 1));
  

INSERT INTO `courseone`.`courses_course_topics`
(`course_id`,
`topic_id`)
VALUES
(1, 1), (1, 2), (1, 3), (2, 1), (2, 2), (2, 5),
  (3, 1), (3, 2), (3, 5), (4, 1), (4, 2), (4, 3),
  (5, 1), (5, 2), (5, 3), (6, 1), (6, 2), (6, 3),
  (7, 4), (8, 4), (9, 4), (10, 4), (11, 5), (12, 5),
  (13, 6), (14, 6), (15, 6), (16, 6), (17, 6), (18, 6);



-- SELECT `courses_course`.`id`,
--     `courses_course`.`title`,
--     `courses_course`.`description`,
--     `courses_course`.`course_type`,
--     `courses_course`.`price`,
--     `courses_course`.`popularity`
-- FROM `courseone`.`courses_course`;


INSERT INTO `courseone`.`courses_content`
(`brief`,
`course_id`)
VALUES
('A comprehensive introduction to the world of science. Explore various scientific disciplines and their significance. Gain skills in critical thinking and scientific inquiry.', 1),
('A hands-on introduction to databases. Learn fundamental concepts and techniques of database management. Gain skills in designing and querying databases.', 2),
('Learn the basics of networking and network infrastructure. Explore different network protocols and technologies. Gain skills in network troubleshooting and administration.', 3),
('Learn the basics of Python programming language. Understand core concepts and syntax. Gain skills in writing simple programs and automating tasks.', 4),
('An introduction to the human nervous system and its functions. Explore the structure of the brain and nervous system. Gain insights into neurology research and advancements.', 5),
('A beginner-friendly introduction to biology. Explore the principles of life and the diversity of living organisms. Gain foundational knowledge in biological sciences.', 6),
('A more in-depth look at the world of science. Explore advanced scientific concepts and research methodologies. Gain skills in analyzing and interpreting scientific data.', 7),
('Learn how to design and implement databases. Explore advanced database modeling techniques and normalization. Gain skills in database optimization and performance tuning.', 8),
('Learn more advanced networking concepts and protocols. Dive deeper into network architecture and security. Gain skills in configuring and managing complex networks.', 9),
('Learn how to use Python for data science and analysis. Explore libraries and tools for data manipulation, visualization, and machine learning. Gain skills in data wrangling and analysis.', 10),
('A more in-depth look at the human nervous system and neurological disorders. Explore advanced topics in neurology research and clinical practice. Gain specialized knowledge in neurology.', 11),
('A more in-depth look at biology and its subfields. Dive deeper into topics like genetics, ecology, and evolution. Gain specialized knowledge in advanced biology.', 12),
('Explore the science of the mind and human cognition. Study different theories and research in psychology and neuroscience. Gain insights into mental processes and behavior.', 13),
('Learn about the latest trends in technology and its impact on society. Explore emerging technologies and their applications. Gain insights into the future of technology.', 14),
('Learn the basics of artificial intelligence and its applications. Study algorithms and techniques for machine learning and AI programming. Gain skills in AI development.', 15),
('Learn the basics of machine learning and its algorithms. Study supervised and unsupervised learning techniques. Gain skills in developing machine learning models.', 16),
('Explore deep learning techniques and neural networks. Study advanced algorithms for image recognition and natural language processing. Gain skills in deep learning applications.', 17),
('Learn how to use natural language processing (NLP) for data science tasks. Study techniques for text analysis, sentiment analysis, and language generation. Gain skills in NLP modeling.', 18);



INSERT INTO `courseone`.`courses_lecture`
(`brief`,
`content_id`)
VALUES
('<label>Module 1:</label><p>Introduction to Science</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 1),
('<label>Module 1:</label><p>Databases for Beginners</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 2),
('<label>Module 1:</label><p>Networking Essentials</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 3),
('<label>Module 1:</label><p>Python Programming</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 4),
('<label>Module 1:</label><p>Neurology 101</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 5),
('<label>Module 1:</label><p>Biology for Everyone</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 6),
('<label>Module 1:</label><p>Advanced Science</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 7),
('<label>Module 1:</label><p>Database Design</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 8),
('<label>Module 1:</label><p>Networking for Advanced Users</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 9),
('<label>Module 1:</label><p>Python for Data Science</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 10),
('<label>Module 1:</label><p>Neurology for Professionals</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 11),
('<label>Module 1:</label><p>Biology for Professionals</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 12),
('<label>Module 1:</label><p>Science of the Mind</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 13),
('<label>Module 1:</label><p>The Future of Technology</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 14),
('<label>Module 1:</label><p>Artificial Intelligence for Beginners</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 15),
('<label>Module 1:</label><p>Machine Learning for Everyone</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 16),
('<label>Module 1:</label><p>Deep Learning for Professionals</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 17),
('<label>Module 1:</label><p>Natural Language Processing for Data Scientists</p><ul><li>Module Topic 1</li><li>Module Topic 2</li></ul>', 18);




--  Image table insert

SET @url1 = 'https://ibb.co/yfMtWtg';
SET @url2 = 'https://ibb.co/Wz8vyks';
SET @url3 = 'https://ibb.co/kQFZxMy';
SET @url4 = 'https://ibb.co/C0f8Xhw';
SET @url5 = 'https://ibb.co/pWc3c09';


INSERT INTO `courseone`.`courses_image`
(`title`,
`url`,
`content_id`)
VALUES
('Image', @url1, 1),
('Databases for Beginners Image', @url2, 2),
('Networking Essentials Image', @url3, 3),
('Python Programming Image', @url4, 4),
('Neurology 101 Image', @url5, 5),
('Biology for Everyone Image', @url1, 6),
('Advanced Science Image', @url2, 7),
('Database Design Image', @url3, 8),
('Networking for Advanced Users Image', @url4, 9),
('Python for Data Science Image', @url5, 10),
('Neurology for Professionals Image', @url1, 11),
('Biology for Professionals Image', @url2, 12),
('Science of the Mind Image', @url3, 13),
('The Future of Technology Image', @url4, 14),
('Artificial Intelligence for Beginners Image', @url5, 15),
('Machine Learning for Everyone Image', @url1, 16),
('Deep Learning for Professionals Image', @url2, 17),
('Natural Language Processing for Data Scientists Image', @url3,18);


-- video insert

-- Video URLs
SET @url1 = 'https://youtu.be/HXV3zeQKqGY';
SET @url2 = 'https://youtu.be/ad79nYk2keg';
SET @url3 = 'https://youtu.be/URUJD5NEXC8';
SET @url4 = 'https://youtu.be/ASPGQYCGJuA';
SET @url5 = 'https://youtu.be/ukzFI9rgwfU';

-- Batch 1: Videos for lecture IDs 1-5
INSERT INTO `courseone`.`courses_video`
(`title`,
`url`,
`lecture_id`) VALUES
((SELECT brief FROM courseone.courses_lecture WHERE id = 1), @url1, 1),
((SELECT brief FROM courseone.courses_lecture WHERE id = 2), @url2, 2),
((SELECT brief FROM courseone.courses_lecture WHERE id = 3), @url3, 3),
((SELECT brief FROM courseone.courses_lecture WHERE id = 4), @url4, 4),
((SELECT brief FROM courseone.courses_lecture WHERE id = 5), @url5, 5),
((SELECT brief FROM courseone.courses_lecture WHERE id = 6), @url1, 6),
((SELECT brief FROM courseone.courses_lecture WHERE id = 7), @url2, 7),
((SELECT brief FROM courseone.courses_lecture WHERE id = 8), @url3, 8),
((SELECT brief FROM courseone.courses_lecture WHERE id = 9), @url4, 9),
((SELECT brief FROM courseone.courses_lecture WHERE id = 10), @url5, 10),
((SELECT brief FROM courseone.courses_lecture WHERE id = 11), @url1, 11),
((SELECT brief FROM courseone.courses_lecture WHERE id = 12), @url2, 12),
((SELECT brief FROM courseone.courses_lecture WHERE id = 13), @url3, 13),
((SELECT brief FROM courseone.courses_lecture WHERE id = 14), @url4, 14),
((SELECT brief FROM courseone.courses_lecture WHERE id = 15), @url5, 15),
((SELECT brief FROM courseone.courses_lecture WHERE id = 16), @url1, 16),
((SELECT brief FROM courseone.courses_lecture WHERE id = 17), @url2, 17),
((SELECT brief FROM courseone.courses_lecture WHERE id = 18), @url3, 18);


-- SELECT * FROM `courseone`.`courses_video`;