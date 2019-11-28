BEGIN;

TRUNCATE
  davis_pn_comments,
  davis_pn_schools,
  davis_pn_users
  RESTART IDENTITY CASCADE;

INSERT INTO davis_pn_users (user_name, full_name, password)
VALUES
  ('dunder', 'Dunder Mifflin', 'password'),
  ('b.deboop', 'Bodeep Deboop', 'bo-password'),
  ('c.bloggs', 'Charlie Bloggs', 'charlie-password'),
  ('s.smith', 'Sam Smith', 'sam-password'),
  ('lexlor', 'Alex Taylor', 'lex-password'),
  ('wippy', 'Ping Won In', 'ping-password');

INSERT INTO davis_pn_schools
(
  image,
  school_name,
  school_type,
  school_grades,
  school_address_1
)
VALUES
(
('Davis Senior High School',
'Public',
'10-12',
'315 West 14th Street, Davis, CA, 95616'),

('Pioneer Elementary School',
'Public',
'K-6',
'5215 Hamel Street, Davis, CA, 95616'),

('Robert E. Willett Elementary School',
'Public',
'K-6',
'1207 Sycamore Lane, Davis, CA, 95616'),

('Da Vinci Charter Academy',
'Public charter',
'7-12',
'1400 East Eighth Street, Davis, CA, 95616'),

('Ralph Waldo Emerson Junior High School',
'Public',
'7-9',
'2121 Calaveras Avenue, Davis, CA, 95616'),

('North Davis Elementary School',
'Public',
'K-6',
'555 East 14th Street, Davis, CA, 95616'),

('Birch Lane Elementary School',
'Public',
'K-6',
'1600 Birch Lane, Davis, CA, 95616'),

('Oliver Wendell Holmes Junior High School',
'Public',
'7-9',
'1220 Drexel Drive, Davis, CA, 95616'),

('Patwin Elementary School',
'Public',
'K-6',
'2222 Shasta Drive, Davis, CA, 95616'),

('Davis School For Independent Study',
'Public',
'K-12',
'526 B Street, Davis, CA, 95616'),

('Frances Ellen Watkins Harper Junior High School',
'Public',
'7-9',
'4000 East Covell Boulevard, Davis, CA, 95618'),

('Fred T. Korematsu Elementary School At Mace Ranch',
'Public',
'K-6',
'3100 Loyola Drive, Davis, CA, 95616'),

('Cesar Chavez Elementary School',
'Public',
'K-6',
'1221 Anderson Road, Davis, CA, 95616'),

('Marguerite Montgomery Elementary School',
'Public',
'K-6',
'1441 Danbury Drive, Davis, CA, 95616'),

('Fairfield Elementary School',
'Public',
'K-3',
'26960 County Road 96, Davis, CA, 95616'),

('King (Martin Luther) High (Continuation) School',
'Public',
'9-12',
'635 B Street, Davis, CA, 95616'),

('Tender Learning Care',
'Private',
'PK-K',
'1818 Lake Boulevard, Davis, CA, 95616'),

('St James School',
'Private',
'K-8',
'1215 B Street, Davis, CA, 95616'),

('Davis Waldorf School',
'Private',
'K-8',
'3100 Sycamore Lane, Davis, CA, 95616'),

('The School of Science & Fine Art',
'Private',
'43477',
'45161 County Road 32b, Davis, CA, 95618'),

('Davis Special Education Pre-School',
'Public',
'PK',
'1400 East Eighth Street, Davis, CA, 95616'),

('Merryhill School Davis',
'Private',
'PK',
'222 La Vida Way, Davis, CA, 95618'),

('Peregrine School',
'Private',
'K-7',
'1909 Galileo Court, Davis, CA, 95618'),

('University Covenant Nursery School',
'Private',
'PK',
'315 Mace Blvd., Davis, CA, 95618'),

('Larue Park Cdc',
'Private',
'PK',
'50 Atrium Way, Davis, CA, 95616'),

('Davis Parnt Nursery School',
'Private',
'PK',
'426 West 8th Street, Davis, CA, 95616'),

('Montessori Country Day School',
'Private',
'PK',
'1811 Renoir Avenue, Davis, CA, 95618'),

('North Davis Child Development Center',
'Private',
'PK',
'607 East 14th Street, Davis, CA, 95616'),

('Patwin Child Development Center',
'Private',
'PK',
'2222 Shasta Drive, Davis, CA, 95616'),

('Hutchinson Child Development Center',
'Private',
'PK',
'1055 Extension Center Dr, Davis, CA, 95616'),

('Neighborhood Clubhouse Dc',
'Private',
'PK',
'2400 Bombadil Lane, Davis, CA, 95616'),

('Univ Covenant Nursery School',
'Private',
'PK',
'315 Mace Boulevard, Davis, CA, 95618'),

('Kormatsu Child Development Center',
'Private',
'PK',
'3100 Loyola Drive, Davis, CA, 95618'),

('Gan Haverim Pre-School',
'Private',
'PK',
'1715 Anderson Road, Davis, CA, 95616'),

('Little Friends Montessori School',
'Private',
'PK-K',
'1101 F Street, Davis, CA, 95616'),

('Familiesfirst Non Public School',
'Private',
'2-12',
'2100 5th Street, Davis, CA, 95618'),

('Grace Valley Christian Academy',
'Private',
'K-9',
'27173 County Road 98, Davis, CA, 95616'),

('Redbud Montessori School',
'Private',
'K',
'27082 Patwin Road, Davis, CA, 95616'),

('Montessori Country Day Ii',
'Private',
'PK-K',
'2802 Spafford Street, Davis, CA, 95618'),

('Davis Adult Education',
'Public district',
'Ungraded',
'315 West 14th Street, Davis, CA, 95616'),

('Clonlara',
'Private',
'K-12',
'2724 Eel Place, Davis, CA, 95616'),

('Discovery Pre-School & Child Care',
'Private',
'PK',
'1020 F Street, Davis, CA, 95616'),

('West Davis Child Development Center',
'Private',
'PK',
'1221 Anderson Rd, Davis, CA, 95616'),

('Applegate Nursery School',
'Private',
'PK',
'2040 Bishop Place, Davis, CA, 95618'),

('Ca Human Dev Corp HD St.-Davis',
'Private',
'PK',
'1850 Hanover Dr, Davis, CA, 95616'),

('Ann''s Nursery School',
'Private',
'PK',
'3208 Grosbeak Court, Davis, CA, 95616'),

('Patwin State Pre-School',
'Private',
'PK',
'2222 Shasta Dr, Davis, CA, 95616'),

('Uc Davies Center Chld & Family Stdy',
'Private',
'PK',
'1 Shields Ave, Davis, CA, 95616'),

('Rivendell Nursery School',
'Private',
'PK',
'2661 Portage Bay East, Davis, CA, 95616'),

('Children''s Creative Center',
'Private',
'PK',
'2742 Siene Ave, Davis, CA, 95616'),

('Escuela Alobos',
'Private',
'PK',
'2907 Portage Bay West, Davis, CA, 95616'),

('Peregrine Elementary School',
'Private',
'K-6',
'2650 Lillard Drive, Davis, CA, 95616'),

('Russell Park Child Development Center',
'Private',
'PK-K',
'400 Russell Park, Davis, CA, 95616'),

('Davis Community Church Nursery School',
'Private',
'PK',
'412 C Street, Davis, CA, 95616'),

('International Parent-Child Care Center',
'Private',
'PK',
'640 Hawthorne Ln, Davis, CA, 95616'),

)