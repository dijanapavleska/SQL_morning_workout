<?php


require_once 'DB.php';

DB::connect('localhost', 'laravel_imdb', 'root', '');

$results = DB::select("
    SELECT `movies`.*,
        `movie_types`.`name` AS movie_type_name,
        `movie_statuses`.`name` AS movie_status_name,
        `certifications`.`slug` AS bob
    FROM `movies`
    LEFT JOIN `movie_types`
        ON `movies`.`movie_type_id` = `movie_types`.`id`
    LEFT JOIN `movie_statuses`
        ON `movies`.`movie_status_id` = `movie_statuses`.`id`
    LEFT JOIN `certifications`
        ON `movies`.`certification_id` = `certifications`.`id`
    WHERE `movies`.`id` = 111161;
");

var_dump($results);
