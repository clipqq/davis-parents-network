CREATE TABLE davis_pn_comments (
    id SERIAL PRIMARY KEY,
    text TEXT NOT NULL,
    rating INTEGER,
    date_created TIMESTAMP DEFAULT now() NOT NULL,
    school_id INTEGER
        REFERENCES davis_pn_comments(id) ON DELETE CASCADE NOT NULL,
    user_id INTEGER
        REFERENCES davis_pn_users(id) ON DELETE CASCADE NOT NULL
);