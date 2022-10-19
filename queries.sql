SELECT *
FROM `movies`
ORDER BY `rating` DESC
LIMIT 10;

SELECT *
FROM `movies`
WHERE `votes_nr` >= 5000
ORDER BY `rating` DESC
LIMIT 10;


SELECT *
FROM `movies`
WHERE `votes_nr` >= 5000
    AND `movie_type_id` = 1
ORDER BY `rating` DESC
LIMIT 10;


SELECT *
FROM `movies`
WHERE `name` LIKE '%shawshank%redemption%';

-- 111161

SELECT *
FROM `movies`
WHERE `id` = 111161;


INSERT
INTO `movies`
(`movie_type_id`, `name`, `year`, `rating`)
VALUES
(1, "Chip \'n Dale: Rescue Rangers", 2022, 7.0);

-- 5863127

SELECT *
FROM `movies`
WHERE `id` = 5863127;


SELECT *
FROM `movies`
WHERE `name` LIKE '%chip%dale%rangers%';

UPDATE `movies`
SET `movie_status_id` = 14,
    `certification_id` = 27
WHERE `id` = 5863127
LIMIT 1;


SELECT *
FROM `movies`
LEFT JOIN `movie_types`
    ON `movies`.`movie_type_id` = `movie_types`.`id`
LEFT JOIN `movie_statuses`
    ON `movies`.`movie_status_id` = `movie_statuses`.`id`
LEFT JOIN `certifications`
    ON `movies`.`certification_id` = `certifications`.`id`
WHERE `movies`.`id` = 5863127;


SELECT *
FROM `movies`
LEFT JOIN `movie_types`
    ON `movies`.`movie_type_id` = `movie_types`.`id`
LEFT JOIN `movie_statuses`
    ON `movies`.`movie_status_id` = `movie_statuses`.`id`
LEFT JOIN `certifications`
    ON `movies`.`certification_id` = `certifications`.`id`
WHERE `movies`.`id` = 111161;