--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(20),
    distance_from_earth numeric(5,0),
    color character varying(20),
    galaxy_stars integer NOT NULL
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    name character varying(20),
    moon_id integer NOT NULL,
    planet_id integer NOT NULL,
    moon_color character varying(20),
    moon_satelites integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    name character varying(20),
    planet_id integer NOT NULL,
    has_life boolean,
    dexcription text,
    distance_from_earth integer,
    planet_age integer NOT NULL,
    star_id integer NOT NULL,
    has_water boolean
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: satelite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satelite (
    name character varying(20),
    satelite_id integer NOT NULL,
    has_rings integer,
    sun_dist integer NOT NULL
);


ALTER TABLE public.satelite OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satelite_satelite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satelite_satelite_id_seq OWNER TO freecodecamp;

--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satelite_satelite_id_seq OWNED BY public.satelite.satelite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    name character varying(20),
    star_id integer NOT NULL,
    galaxy_id integer NOT NULL,
    star_age integer,
    star_sparks integer,
    star_color character varying(20)
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: weather; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.weather (
    weather_id integer NOT NULL,
    name character varying(20),
    acid_rain integer,
    rain_days integer NOT NULL
);


ALTER TABLE public.weather OWNER TO freecodecamp;

--
-- Name: weather_wether_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.weather_wether_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.weather_wether_id_seq OWNER TO freecodecamp;

--
-- Name: weather_wether_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.weather_wether_id_seq OWNED BY public.weather.weather_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: satelite satelite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite ALTER COLUMN satelite_id SET DEFAULT nextval('public.satelite_satelite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Name: weather weather_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.weather ALTER COLUMN weather_id SET DEFAULT nextval('public.weather_wether_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'A', 100, 'Red', 1);
INSERT INTO public.galaxy VALUES (2, 'B', 200, 'Blue', 2);
INSERT INTO public.galaxy VALUES (3, 'C', 300, 'BluRede', 3);
INSERT INTO public.galaxy VALUES (4, 'D', 400, 'BsluRede', 4);
INSERT INTO public.galaxy VALUES (5, 'E', 500, 'Bsse', 5);
INSERT INTO public.galaxy VALUES (6, 'F', 600, 'Bssdsce', 6);
INSERT INTO public.galaxy VALUES (7, 'G', 700, 'Bsshghgrte', 7);
INSERT INTO public.galaxy VALUES (8, 'H', 800, 'Bssekjrt', 8);
INSERT INTO public.galaxy VALUES (9, 'I', 900, 'Bsstrlklke', 9);
INSERT INTO public.galaxy VALUES (10, 'J', 1000, 'Bstlklkrse', 10);
INSERT INTO public.galaxy VALUES (11, 'K', 1100, 'Bssghgtre', 11);
INSERT INTO public.galaxy VALUES (12, 'L', 1200, 'Bssejhjhjetee', 12);
INSERT INTO public.galaxy VALUES (13, 'M', 1300, 'Bssssfvctrte', 13);
INSERT INTO public.galaxy VALUES (14, 'N', 1400, 'Bqwsdfdfse', 14);
INSERT INTO public.galaxy VALUES (15, 'O', 1500, 'Bssevcvcwewe', 15);
INSERT INTO public.galaxy VALUES (16, 'P', 1600, 'Bsqgfgfwese', 16);
INSERT INTO public.galaxy VALUES (17, 'Q', 1700, 'Bsfdfdsweqe', 17);
INSERT INTO public.galaxy VALUES (18, 'R', 1800, 'Bssvcvqee', 18);
INSERT INTO public.galaxy VALUES (19, 'S', 1900, 'Bssvcvcqewe', 19);
INSERT INTO public.galaxy VALUES (20, 'T', 2000, 'Bsqreeerwse', 20);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES ('A', 1, 1, 'Red', 1);
INSERT INTO public.moon VALUES ('B', 2, 2, 'Rereed', 2);
INSERT INTO public.moon VALUES ('C', 3, 3, 'Rewerd', 3);
INSERT INTO public.moon VALUES ('D', 4, 4, 'Refdfd', 4);
INSERT INTO public.moon VALUES ('E', 5, 5, 'Resfd', 5);
INSERT INTO public.moon VALUES ('F', 6, 6, 'Refdfsd', 6);
INSERT INTO public.moon VALUES ('G', 7, 7, 'Resdad', 7);
INSERT INTO public.moon VALUES ('H', 8, 8, 'Refsfd', 8);
INSERT INTO public.moon VALUES ('I', 9, 9, 'Redasdd', 9);
INSERT INTO public.moon VALUES ('J', 10, 10, 'Rqwzuizuieed', 10);
INSERT INTO public.moon VALUES ('K', 11, 11, 'Rqweed', 11);
INSERT INTO public.moon VALUES ('L', 12, 12, 'Rgdfged', 12);
INSERT INTO public.moon VALUES ('M', 13, 13, 'Reasdd', 13);
INSERT INTO public.moon VALUES ('N', 14, 14, 'Rebfgdd', 14);
INSERT INTO public.moon VALUES ('O', 15, 15, 'Radsed', 15);
INSERT INTO public.moon VALUES ('P', 16, 16, 'Resdfd', 16);
INSERT INTO public.moon VALUES ('Q', 17, 17, 'Rgfded', 17);
INSERT INTO public.moon VALUES ('R', 18, 18, 'Rehtud', 18);
INSERT INTO public.moon VALUES ('S', 19, 19, 'Rturtghed', 19);
INSERT INTO public.moon VALUES ('T', 20, 20, 'Reerted', 20);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES ('A', 1, true, 'aa', 1, 1, 1, true);
INSERT INTO public.planet VALUES ('B', 2, true, 'bb', 2, 2, 2, true);
INSERT INTO public.planet VALUES ('C', 3, true, 'cc', 3, 3, 3, true);
INSERT INTO public.planet VALUES ('D', 4, true, 'dd', 4, 4, 4, true);
INSERT INTO public.planet VALUES ('E', 5, true, 'ee', 5, 5, 5, true);
INSERT INTO public.planet VALUES ('F', 6, true, 'ff', 6, 6, 6, true);
INSERT INTO public.planet VALUES ('G', 7, true, 'gg', 7, 7, 7, true);
INSERT INTO public.planet VALUES ('H', 8, true, 'hh', 8, 8, 8, true);
INSERT INTO public.planet VALUES ('I', 9, true, 'ii', 9, 9, 9, true);
INSERT INTO public.planet VALUES ('J', 10, true, 'jj', 10, 10, 10, true);
INSERT INTO public.planet VALUES ('K', 11, true, 'kk', 11, 11, 11, true);
INSERT INTO public.planet VALUES ('L', 12, true, 'll', 12, 12, 12, true);
INSERT INTO public.planet VALUES ('M', 13, true, 'mm', 13, 13, 13, true);
INSERT INTO public.planet VALUES ('N', 14, true, 'nn', 14, 14, 14, true);
INSERT INTO public.planet VALUES ('O', 15, true, 'oo', 15, 15, 15, true);
INSERT INTO public.planet VALUES ('P', 16, true, 'pp', 16, 16, 16, true);
INSERT INTO public.planet VALUES ('Q', 17, true, 'qq', 17, 17, 17, true);
INSERT INTO public.planet VALUES ('R', 18, true, 'rr', 18, 18, 18, true);
INSERT INTO public.planet VALUES ('S', 19, true, 'ss', 19, 19, 19, true);
INSERT INTO public.planet VALUES ('T', 20, true, 'tt', 20, 20, 20, true);


--
-- Data for Name: satelite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satelite VALUES ('A', 1, 1, 1);
INSERT INTO public.satelite VALUES ('B', 2, 2, 2);
INSERT INTO public.satelite VALUES ('C', 3, 3, 3);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES ('A', 1, 1, 1, 1, 'Red');
INSERT INTO public.star VALUES ('B', 2, 2, 2, 2, 'Res');
INSERT INTO public.star VALUES ('C', 3, 3, 3, 3, 'Blue');
INSERT INTO public.star VALUES ('D', 4, 4, 4, 4, 'Green');
INSERT INTO public.star VALUES ('E', 5, 5, 5, 5, 'Purple');
INSERT INTO public.star VALUES ('F', 6, 6, 6, 6, 'Pink');
INSERT INTO public.star VALUES ('G', 7, 7, 7, 7, 'Bluqe');
INSERT INTO public.star VALUES ('H', 8, 8, 8, 8, 'Greeqn');
INSERT INTO public.star VALUES ('I', 9, 9, 9, 9, 'Purplqe');
INSERT INTO public.star VALUES ('J', 10, 10, 10, 10, 'Pinqqk');
INSERT INTO public.star VALUES ('K', 11, 11, 11, 11, 'Purpqle');
INSERT INTO public.star VALUES ('L', 12, 12, 12, 12, 'Pqink');
INSERT INTO public.star VALUES ('M', 13, 13, 13, 13, 'Blque');
INSERT INTO public.star VALUES ('N', 14, 14, 14, 14, 'Greqqen');
INSERT INTO public.star VALUES ('O', 15, 15, 15, 15, 'Puqrple');
INSERT INTO public.star VALUES ('P', 16, 16, 16, 16, 'Piwnk');
INSERT INTO public.star VALUES ('Q', 17, 17, 17, 17, 'Puwrple');
INSERT INTO public.star VALUES ('R', 18, 18, 18, 18, 'Pinwk');
INSERT INTO public.star VALUES ('S', 19, 19, 19, 19, 'Purwwple');
INSERT INTO public.star VALUES ('T', 20, 20, 20, 20, 'Pinwk');


--
-- Data for Name: weather; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.weather VALUES (1, 'A', 1, 1);
INSERT INTO public.weather VALUES (2, 'B', 2, 2);
INSERT INTO public.weather VALUES (3, 'C', 3, 3);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 1, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 1, false);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 1, false);


--
-- Name: satelite_satelite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satelite_satelite_id_seq', 1, false);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 2, true);


--
-- Name: weather_wether_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.weather_wether_id_seq', 1, false);


--
-- Name: galaxy galaxy_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key UNIQUE (color);


--
-- Name: galaxy galaxy_color_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_color_key1 UNIQUE (color);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_moon_color_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_color_key UNIQUE (moon_color);


--
-- Name: moon moon_moon_satelites_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_satelites_key UNIQUE (moon_satelites);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_age_key UNIQUE (planet_age);


--
-- Name: satelite satelite_has_rings_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_has_rings_key UNIQUE (has_rings);


--
-- Name: satelite satelite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satelite
    ADD CONSTRAINT satelite_pkey PRIMARY KEY (satelite_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_age_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_age_key UNIQUE (star_age);


--
-- Name: weather weather_acid_rain_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_acid_rain_key UNIQUE (acid_rain);


--
-- Name: weather weather_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.weather
    ADD CONSTRAINT weather_pkey PRIMARY KEY (weather_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

