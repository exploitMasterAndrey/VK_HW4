INSERT INTO teacher (first_name, last_name, phone, experience) VALUES
    ('Pavel', 'Akatiev', '8-999-111-22-33', 10),
    ('Sergey', 'Volkov', '8-888-222-11-44', 5);

INSERT INTO student (first_name, last_name, phone) VALUES
('Mikhail', 'Boroditskiy', '8-111-222-33-44'),
('Grigory', 'Zhuchkov', '8-222-333-44-55'),
('Andrey', 'Sverchkov', '8-333-444-55-66'),
('Nastya', 'Molodih', '8-444-555-66-77'),
('Sonya', 'Emelyanenko', '8-555-666-77-88'),
('Ilya', 'Okhripov', '8-666-777-88-99');

INSERT INTO course (course_name, hours_count) VALUES
('Economic Basics', 120),
('Marketing', 168);

INSERT INTO course_teacher (course_id, teacher_id) VALUES
(1, 1),
(1, 2),
(2, 2);

INSERT INTO schedule (start_time, course_id) VALUES
('2022-09-07 15:50:00', 1),
('2022-09-15 15:50:00', 1),
('2022-09-21 15:50:00', 1),
('2022-09-05 12:40:00', 2),
('2022-09-12 12:40:00', 2),
('2022-09-19 12:40:00', 2);

INSERT INTO student_course (student_id, course_id) VALUES
(1, 1),
(1, 2),
(2, 1),
(3, 2),
(4, 2),
(5, 1),
(6, 1);

INSERT INTO student_performance (student_id, schedule_id, is_hw_done, is_visited) VALUES
(1, 1, TRUE, TRUE),
(1, 2, TRUE, TRUE),
(1, 3, FALSE, TRUE),
(1, 4, TRUE, TRUE),
(1, 5, TRUE, FALSE),
(1, 6, FALSE, FALSE),
(2, 1, FALSE, TRUE),
(2, 2, TRUE, FALSE),
(2, 3, FALSE, TRUE),
(3, 4, TRUE, TRUE),
(3, 5, TRUE, TRUE),
(3, 6, TRUE, TRUE),
(4, 4, FALSE, FALSE),
(4, 5, TRUE, FALSE),
(4, 6, FALSE, TRUE);


