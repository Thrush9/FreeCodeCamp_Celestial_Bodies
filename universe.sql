--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million_years numeric,
    area_in_square_kms integer
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million_years numeric,
    area_in_square_kms integer,
    planet_id integer
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million_years numeric,
    area_in_square_kms integer,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: scientific_names; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.scientific_names (
    scientific_names_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean DEFAULT false NOT NULL
);


ALTER TABLE public.scientific_names OWNER TO freecodecamp;

--
-- Name: scientific_names_sname_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.scientific_names_sname_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.scientific_names_sname_id_seq OWNER TO freecodecamp;

--
-- Name: scientific_names_sname_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.scientific_names_sname_id_seq OWNED BY public.scientific_names.scientific_names_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    description text,
    has_life boolean NOT NULL,
    is_spherical boolean NOT NULL,
    age_in_million_years numeric,
    area_in_square_kms integer,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: scientific_names scientific_names_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientific_names ALTER COLUMN scientific_names_id SET DEFAULT nextval('public.scientific_names_sname_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', 'galaxy1 description', false, false, 1200, 8900);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', 'galaxy2 description', false, false, 1000, 6700);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', 'galaxy3 description', false, false, 800, 5500);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', 'galaxy4 description', false, false, 600, 10500);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', 'galaxy5 description', true, false, 100, 4500);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', 'galaxy6 description', true, false, 500, 500);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 'moon1 description', true, false, 500, 500, 1);
INSERT INTO public.moon VALUES (2, 'moon2', 'moon2 description', true, false, 500, 500, 1);
INSERT INTO public.moon VALUES (3, 'moon3', 'moon3 description', true, false, 500, 500, 1);
INSERT INTO public.moon VALUES (4, 'moon4', 'moon4 description', true, false, 500, 500, 1);
INSERT INTO public.moon VALUES (5, 'moon5', 'moon5 description', true, false, 500, 500, 1);
INSERT INTO public.moon VALUES (6, 'moon6', 'moon6 description', true, false, 500, 500, 2);
INSERT INTO public.moon VALUES (7, 'moon7', 'moon7 description', true, false, 500, 500, 2);
INSERT INTO public.moon VALUES (8, 'moon8', 'moon8 description', true, false, 500, 500, 2);
INSERT INTO public.moon VALUES (9, 'moon9', 'moon9 description', true, false, 500, 500, 2);
INSERT INTO public.moon VALUES (10, 'moon10', 'moon10 description', true, false, 500, 500, 2);
INSERT INTO public.moon VALUES (11, 'moon11', 'moon11 description', true, false, 500, 500, 3);
INSERT INTO public.moon VALUES (12, 'moon12', 'moon12 description', true, false, 500, 500, 3);
INSERT INTO public.moon VALUES (13, 'moon13', 'moon13 description', true, false, 500, 500, 3);
INSERT INTO public.moon VALUES (14, 'moon14', 'moon14 description', true, false, 500, 500, 3);
INSERT INTO public.moon VALUES (15, 'moon15', 'moon15 description', true, false, 500, 500, 3);
INSERT INTO public.moon VALUES (16, 'moon16', 'moon16 description', true, false, 500, 500, 4);
INSERT INTO public.moon VALUES (17, 'moon17', 'moon17 description', true, false, 500, 500, 4);
INSERT INTO public.moon VALUES (18, 'moon18', 'moon18 description', true, false, 500, 500, 4);
INSERT INTO public.moon VALUES (19, 'moon19', 'moon19 description', true, false, 500, 500, 4);
INSERT INTO public.moon VALUES (20, 'moon20', 'moon20 description', true, false, 500, 500, 4);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 'planet1 description', true, false, 500, 500, 1);
INSERT INTO public.planet VALUES (2, 'planet2', 'planet2 description', true, false, 500, 500, 1);
INSERT INTO public.planet VALUES (3, 'planet3', 'planet3 description', true, false, 500, 500, 2);
INSERT INTO public.planet VALUES (4, 'planet4', 'planet4 description', true, false, 500, 500, 2);
INSERT INTO public.planet VALUES (5, 'planet5', 'planet5 description', true, false, 500, 500, 3);
INSERT INTO public.planet VALUES (6, 'planet6', 'planet6 description', true, false, 500, 500, 3);
INSERT INTO public.planet VALUES (7, 'planet7', 'planet7 description', true, false, 500, 500, 4);
INSERT INTO public.planet VALUES (8, 'planet8', 'planet8 description', true, false, 500, 500, 4);
INSERT INTO public.planet VALUES (9, 'planet9', 'planet9 description', true, false, 500, 500, 5);
INSERT INTO public.planet VALUES (10, 'planet10', 'planet10 description', true, false, 500, 500, 5);
INSERT INTO public.planet VALUES (11, 'planet11', 'planet11 description', true, false, 500, 500, 6);
INSERT INTO public.planet VALUES (12, 'planet12', 'planet12 description', true, false, 500, 500, 6);


--
-- Data for Name: scientific_names; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.scientific_names VALUES (1, 'EARTH', 'Sample Description', false);
INSERT INTO public.scientific_names VALUES (2, 'MARS', 'Sample Description', false);
INSERT INTO public.scientific_names VALUES (3, 'JUPITER', 'Sample Description', false);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 'star2 description', true, false, 500, 500, 5);
INSERT INTO public.star VALUES (2, 'star2', 'star2 description', true, false, 500, 500, 5);
INSERT INTO public.star VALUES (3, 'star3', 'star3 description', true, false, 500, 500, 5);
INSERT INTO public.star VALUES (4, 'star4', 'star4 description', true, false, 800, 500, 6);
INSERT INTO public.star VALUES (5, 'star5', 'star5 description', true, false, 800, 500, 6);
INSERT INTO public.star VALUES (6, 'star6', 'star6 description', true, false, 800, 500, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: scientific_names_sname_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.scientific_names_sname_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: scientific_names scientific_names_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientific_names
    ADD CONSTRAINT scientific_names_name_key UNIQUE (name);


--
-- Name: scientific_names scientific_names_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.scientific_names
    ADD CONSTRAINT scientific_names_pkey PRIMARY KEY (scientific_names_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

