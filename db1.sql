CREATE TABLE auth_user (
    id serial PRIMARY KEY,
    name character varying(255) NOT NULL,
    password character varying(255) NOT NULL,
    email character varying(255) NOT NULL
);

CREATE TABLE resturants (
    id serial PRIMARY KEY,
    user_name character varying(255),
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    contact character varying(255) NOT NULL,
    website character varying(255) NOT NULL
);

CREATE TABLE workers (
    id serial PRIMARY KEY,
    boss_name character varying(255),
    salary integer NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    post character varying(255) NOT 
    resturant_id integer NOT NULL
);