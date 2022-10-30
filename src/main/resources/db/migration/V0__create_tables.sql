CREATE TABLE IF NOT EXISTS student(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS teacher(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    experience INT NOT NULL
);

CREATE TABLE IF NOT EXISTS course(
    id SERIAL PRIMARY KEY,
    course_name VARCHAR(50),
    hours_count INT
);

CREATE TABLE IF NOT EXISTS course_teacher(
    id SERIAL PRIMARY KEY,
    course_id INT REFERENCES course(id),
    teacher_id INT REFERENCES teacher(id)
);

CREATE TABLE IF NOT EXISTS schedule(
    id SERIAL PRIMARY KEY,
    start_time TIMESTAMP NOT NULL,
    course_id INT REFERENCES course(id)
);

CREATE TABLE IF NOT EXISTS student_course(
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES student(id),
    course_id INT REFERENCES course(id)
);

CREATE TABLE IF NOT EXISTS student_performance(
    id SERIAL PRIMARY KEY,
    student_id INT REFERENCES student(id),
    schedule_id INT REFERENCES schedule(id),
    is_hw_done BOOLEAN,
    is_visited BOOLEAN
);


