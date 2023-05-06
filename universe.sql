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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,0),
    description text
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,0),
    radius integer NOT NULL,
    description text,
    is_spherical boolean,
    planet_id integer NOT NULL
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,0),
    radius integer,
    description text,
    has_life boolean,
    star_id integer NOT NULL
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
-- Name: rockets; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.rockets (
    rockets_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age integer NOT NULL
);


ALTER TABLE public.rockets OWNER TO freecodecamp;

--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.rockets_rocket_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.rockets_rocket_id_seq OWNER TO freecodecamp;

--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.rockets_rocket_id_seq OWNED BY public.rockets.rockets_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer NOT NULL,
    distance_from_earth numeric(4,0),
    radius integer NOT NULL,
    description text,
    galaxy_id integer NOT NULL
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
-- Name: rockets rockets_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets ALTER COLUMN rockets_id SET DEFAULT nextval('public.rockets_rocket_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milk Way', 13, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Andrômeda', 2200, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Whirpool', 3000, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero', 4500, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Pinwheel', 2000, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Triangulum', 1800, NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 4, NULL, 2, NULL, NULL, 3);
INSERT INTO public.moon VALUES (3, 'Jose', 4000, NULL, 20, NULL, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Maria', 4200, NULL, 21, NULL, NULL, 4);
INSERT INTO public.moon VALUES (5, 'Jose Maria', 4000, NULL, 22, NULL, NULL, 5);
INSERT INTO public.moon VALUES (6, 'Ana', 4500, NULL, 23, NULL, NULL, 6);
INSERT INTO public.moon VALUES (7, 'Pedro', 4300, NULL, 20, NULL, NULL, 4);
INSERT INTO public.moon VALUES (8, 'Jose Pedro', 4100, NULL, 13, NULL, NULL, 5);
INSERT INTO public.moon VALUES (9, 'H123', 6900, NULL, 2, NULL, NULL, 7);
INSERT INTO public.moon VALUES (10, 'U123', 4900, NULL, 2, NULL, NULL, 7);
INSERT INTO public.moon VALUES (11, 'A452', 5000, NULL, 3, NULL, NULL, 8);
INSERT INTO public.moon VALUES (12, 'P231', 6000, NULL, 5, NULL, NULL, 7);
INSERT INTO public.moon VALUES (13, 'HDHD1', 5000, NULL, 2, NULL, NULL, 5);
INSERT INTO public.moon VALUES (14, 'j123', 2133, NULL, 4, NULL, NULL, 5);
INSERT INTO public.moon VALUES (15, 'IP123', 1200, NULL, 5, NULL, NULL, 8);
INSERT INTO public.moon VALUES (16, 'AW23', 1300, NULL, 5, NULL, NULL, 6);
INSERT INTO public.moon VALUES (17, 'O21313', 2000, NULL, 6, NULL, NULL, 9);
INSERT INTO public.moon VALUES (18, 'P123', 2000, NULL, 6, NULL, NULL, 9);
INSERT INTO public.moon VALUES (19, 'DODO', 3000, NULL, 7, NULL, NULL, 8);
INSERT INTO public.moon VALUES (20, 'ASD', 12312, NULL, 8, NULL, NULL, 8);
INSERT INTO public.moon VALUES (21, 'PWQE', 1233, NULL, 7, NULL, NULL, 7);
INSERT INTO public.moon VALUES (22, 'JosEEe', 4000, NULL, 9, NULL, NULL, 9);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (3, 'Earth', 4, NULL, 6, NULL, NULL, 2);
INSERT INTO public.planet VALUES (4, 'Terra', 4500, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (5, 'Marte', 4000, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (6, 'Júpiter', 4600, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (7, 'Vênus', 4200, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (8, 'Netuno', 4600, NULL, NULL, NULL, NULL, 7);
INSERT INTO public.planet VALUES (9, 'Saturno', 4700, NULL, NULL, NULL, NULL, 2);
INSERT INTO public.planet VALUES (10, 'Urano', 4700, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (11, 'Mercúrio', 4400, NULL, NULL, NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Kepler-186f', 4000, NULL, NULL, NULL, NULL, 4);
INSERT INTO public.planet VALUES (13, 'HD 219134b', 6200, NULL, NULL, NULL, NULL, 5);
INSERT INTO public.planet VALUES (14, 'Gliese 876 d', 12000, NULL, NULL, NULL, NULL, 6);
INSERT INTO public.planet VALUES (15, 'TRAPPIST-1e', 1200, NULL, NULL, NULL, NULL, 6);


--
-- Data for Name: rockets; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.rockets VALUES (1, 'Apollo 1', 20);
INSERT INTO public.rockets VALUES (2, 'Jose 1', 25);
INSERT INTO public.rockets VALUES (3, 'Apollo Jose 1', 15);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (2, 'Canopus', 25, NULL, 72, NULL, 1);
INSERT INTO public.star VALUES (3, 'Estrela Azul', 5, NULL, 5, NULL, 2);
INSERT INTO public.star VALUES (4, 'Estrela Vermelha Gigante', 500, NULL, 50, NULL, 3);
INSERT INTO public.star VALUES (5, 'Anã Branca', 10, NULL, 1, NULL, 4);
INSERT INTO public.star VALUES (6, 'Estrela Amarela', 4, NULL, 2, NULL, 5);
INSERT INTO public.star VALUES (7, 'Estrela Supermassiva', 20, NULL, 500, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 22, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 15, true);


--
-- Name: rockets_rocket_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.rockets_rocket_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: rockets rockets_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT rockets_pkey PRIMARY KEY (rockets_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: planet uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: galaxy uq_name_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_name_galaxy UNIQUE (name);


--
-- Name: moon uq_name_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_name_moon UNIQUE (name);


--
-- Name: rockets uq_name_rockets; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.rockets
    ADD CONSTRAINT uq_name_rockets UNIQUE (name);


--
-- Name: star uq_name_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_name_star UNIQUE (name);


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

