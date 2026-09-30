CREATE TABLE gym_centers (
    center_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    city VARCHAR(50)
);

CREATE TABLE gym_staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    role VARCHAR(50)
);

-- N:M ER relationship: staff can work at multiple centers
CREATE TABLE staff_assignments (
    staff_id INT REFERENCES gym_staff(staff_id),
    center_id INT REFERENCES gym_centers(center_id),
    PRIMARY KEY (staff_id, center_id)
);

CREATE TABLE gym_members (
    member_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    membership_type VARCHAR(20) CHECK (membership_type IN ('cheap', 'worldwide')),
    payment_method VARCHAR(30),
    is_trial BOOLEAN DEFAULT FALSE
);

-- N:M ER Relationship: members can access one or many centers depending on membership_type
CREATE TABLE memberships (
    member_id INT REFERENCES gym_members(member_id),
    center_id INT REFERENCES gym_centers(center_id),
    PRIMARY KEY (member_id, center_id)
);

-- 1:1 (Done 1:1 so that they edit the review instead of commenting repeatedly.)
CREATE TABLE gym_reviews (
    review_id SERIAL PRIMARY KEY,
    member_id INT UNIQUE REFERENCES gym_members(member_id),
    score INT CHECK (score BETWEEN 1 AND 5),
    comment TEXT
);