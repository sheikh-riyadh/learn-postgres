-- Active: 1778232352309@@127.0.0.1@5432@ph

-- created ranger table
CREATE TABLE rangers (
    ranger_id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    region TEXT
);

-- inserted data into rangers table
INSERT INTO
    rangers (name, region)
VALUES (
        'Alice Green',
        'Northern Hills'
    ),
    ('Bob White', 'River Delta'),
    (
        'Carol King',
        'Mountain Range'
    ),
    (
        'David Clark',
        'Coastal Forest'
    ),
    (
        'Emma Stone',
        'Eastern Wetlands'
    ),
    (
        'Frank Moore',
        'Savannah Plains'
    ),
    (
        'Grace Hall',
        'Rainforest Zone'
    ),
    ('Henry Adams', 'Desert Edge'),
    (
        'Isabella Scott',
        'Central Valley'
    ),
    (
        'Jack Turner',
        'Western Plateau'
    );

-- created species table
CREATE TABLE species (
    species_id SERIAL PRIMARY KEY,
    common_name VARCHAR(50),
    scientific_name VARCHAR(100),
    discovery_date DATE,
    conservation_status TEXT CHECK (
        conservation_status IN ('Endangered', 'Vulnerable', 'Historic')
    )
);



-- inserted data into species table
INSERT INTO
    species (
        common_name,
        scientific_name,
        discovery_date,
        conservation_status
    )
VALUES (
        'Snow Leopard',
        'Panthera uncia',
        '1775-01-01',
        'Endangered'
    ),
    (
        'Bengal Tiger',
        'Panthera tigris',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Red Panda',
        'Ailurus fulgens',
        '1825-01-01',
        'Vulnerable'
    ),
    (
        'Asiatic Elephant',
        'Elephas maximus indicus',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Blue Whale',
        'Balaenoptera musculus',
        '1758-01-01',
        'Endangered'
    ),
    (
        'Green Sea Turtle',
        'Chelonia mydas',
        '1758-01-01',
        'Endangered'
    ),
    (
        'African Lion',
        'Panthera leo',
        '1758-01-01',
        'Vulnerable'
    ),
    (
        'Polar Bear',
        'Ursus maritimus',
        '1774-01-01',
        'Vulnerable'
    ),
    (
        'Komodo Dragon',
        'Varanus komodoensis',
        '1912-01-01',
        'Endangered'
    ),
    (
        'Orangutan',
        'Pongo pygmaeus',
        '1760-01-01',
        'Endangered'
    ),
    (
        'Cheetah',
        'Acinonyx jubatus',
        '1775-01-01',
        'Vulnerable'
    ),
    (
        'Black Rhinoceros',
        'Diceros bicornis',
        '1758-01-01',
        'Endangered'
    );

-- Created sighings table
CREATE TABLE sightings (
    sighting_id SERIAL PRIMARY KEY,
    ranger_id INTEGER NOT NULL REFERENCES rangers (ranger_id),
    species_id INTEGER NOT NULL REFERENCES species (species_id),
    sighting_time TIMESTAMP,
    location TEXT NOT NULL,
    notes TEXT
);

-- inserted data into siggtings table
INSERT INTO
    sightings (
        ranger_id,
        species_id,
        sighting_time,
        location,
        notes
    )
VALUES (
        1,
        1,
        '2024-05-10 07:45:00',
        'Peak Ridge',
        'Camera trap image captured'
    ),
    (
        2,
        2,
        '2024-05-12 16:20:00',
        'Bankwood Area',
        'Juvenile seen'
    ),
    (
        3,
        3,
        '2024-05-15 09:10:00',
        'Bamboo Grove East',
        'Feeding observed'
    ),
    (
        1,
        2,
        '2024-05-18 18:30:00',
        'Snowfall Pass',
        NULL
    ),
    (
        4,
        4,
        '2024-05-20 11:15:00',
        'River Crossing',
        'Large herd moving south'
    ),
    (
        5,
        5,
        '2024-05-21 06:40:00',
        'Ocean Watch Point',
        'Spotted near research vessel'
    ),
    (
        6,
        6,
        '2024-05-22 14:05:00',
        'Coral Beach',
        'Nest area identified'
    ),
    (
        7,
        7,
        '2024-05-23 17:25:00',
        'Savannah Sector A',
        'Two adults resting'
    ),
    (
        2,
        8,
        '2024-05-24 08:55:00',
        'Frozen Lake Zone',
        'Tracks found near ice edge'
    ),
    (
        3,
        9,
        '2024-05-25 13:30:00',
        'Island Reserve',
        'Observed hunting activity'
    ),
    (
        4,
        10,
        '2024-05-26 15:45:00',
        'Rainforest Canopy',
        'Mother carrying infant'
    ),
    (
        5,
        11,
        '2024-05-27 07:20:00',
        'Grassland Trail',
        'Running at high speed'
    ),
    (
        6,
        12,
        '2024-05-28 10:50:00',
        'Mud Basin',
        'Single adult near waterhole'
    );

-- 1️⃣ Register a new ranger with provided data with name = 'Derek Fox' and region = 'Coastal Plains'
INSERT INTO
    rangers (name, region)
VALUES ('Derek Fox', 'Coastal Plains');



-- 2️⃣ Count unique species ever sighted.
SELECT COUNT(DISTINCT species_id) FROM sightings



-- 3️⃣ Find all sightings where the location includes "Pass".
SELECT * FROM sightings WHERE location LIKE '%Pass%'



-- 4️⃣ List each ranger's name and their total number of sightings.
SELECT name, COUNT(*) as total_sightings
FROM sightings JOIN rangers ON sightings.ranger_id = rangers.ranger_id 
GROUP BY rangers.ranger_id, rangers.name



-- 5️⃣ List species that have never been sighted.

SELECT * FROM species
WHERE NOT EXISTS(
    SELECT * FROM sightings
    WHERE species.species_id = sightings.species_id
)



--  6️⃣ Show the most recent 2 sightings.
SELECT common_name, sighting_time, name FROM sightings
JOIN rangers ON sightings.ranger_id = rangers.ranger_id
JOIN species ON sightings.species_id = species.species_id
ORDER BY sighting_time DESC LIMIT 2



-- 7️⃣ Update all species discovered before year 1800 to have status 'Historic'.
UPDATE species SET conservation_status = 'Historic'
WHERE EXTRACT(YEAR FROM discovery_date) < 1800



-- 8️⃣ Label each sighting's time of day as 'Morning', 'Afternoon', or 'Evening'.
SELECT 
    sighting_id,
    sighting_time,
    CASE
        WHEN EXTRACT(HOUR FROM sighting_time) BETWEEN 5 AND 11 THEN 'Morning'
        WHEN EXTRACT(HOUR FROM sighting_time) BETWEEN 12 AND 16 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day
FROM sightings;




-- 9️⃣ Delete rangers who have never sighted any species
DELETE FROM rangers
WHERE NOT EXISTS(
    SELECT 1 FROM sightings
    WHERE sightings.ranger_id = rangers.ranger_id
)
