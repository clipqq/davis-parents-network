CREATE TABLE davis_pn_schools (
  id SERIAL PRIMARY KEY,
  image TEXT,
  school_name TEXT NOT NULL,
  school_type TEXT NOT NULL,
  school_grades TEXT NOT NULL,
  school_language TEXT,
  school_url TEXT,
  school_email TEXT,
  school_phone TEXT,
  school_address_1 TEXT,
  school_address_2 TEXT,
  school_address_3 TEXT,
  school_address_4 TEXT,
  date_created TIMESTAMP DEFAULT now() NOT NULL
);
