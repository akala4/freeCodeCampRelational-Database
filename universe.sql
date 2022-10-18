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
-- Name: canstellation; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.canstellation (
    canstellation_id integer NOT NULL,
    name character varying(30) NOT NULL,
    planet_id integer,
    star_id integer,
    uni character varying(30)
);


ALTER TABLE public.canstellation OWNER TO freecodecamp;

--
-- Name: canstellation_canstellation_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.canstellation_canstellation_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.canstellation_canstellation_id_seq OWNER TO freecodecamp;

--
-- Name: canstellation_canstellation_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.canstellation_canstellation_id_seq OWNED BY public.canstellation.canstellation_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    shape text NOT NULL,
    far_far_away boolean,
    age integer NOT NULL
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
    type text NOT NULL,
    diameter integer NOT NULL,
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
    name character varying(30) NOT NULL,
    type text NOT NULL,
    diameter integer NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    type text NOT NULL,
    brightness numeric NOT NULL,
    diameter integer NOT NULL,
    single boolean,
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
-- Name: canstellation canstellation_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.canstellation ALTER COLUMN canstellation_id SET DEFAULT nextval('public.canstellation_canstellation_id_seq'::regclass);


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
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: canstellation; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.canstellation VALUES (1, 'leo', 1, 2, 'ocean');
INSERT INTO public.canstellation VALUES (2, 'leo', 2, 1, 'asda');
INSERT INTO public.canstellation VALUES (3, 'scorpion', 3, 4, 'vff');


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'crab', 'crab', true, 14);
INSERT INTO public.galaxy VALUES (2, 'sponge bob', 'square', false, 112);
INSERT INTO public.galaxy VALUES (3, 'milky way', 'spiral', true, 12);
INSERT INTO public.galaxy VALUES (4, 'horse butt', 'butt', true, 221);
INSERT INTO public.galaxy VALUES (5, 'killer bee', 'elliptical', false, 322);
INSERT INTO public.galaxy VALUES (6, 'big mama', 'round', true, 23);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon', 'rocky', 1, 1);
INSERT INTO public.moon VALUES (2, 'titan', 'iron', 1, 10);
INSERT INTO public.moon VALUES (3, 'europe', 'ice ocean', 1, 9);
INSERT INTO public.moon VALUES (4, 'r31', 'lava', 1, 6);
INSERT INTO public.moon VALUES (5, 'pq12', 'rocky', 1, 11);
INSERT INTO public.moon VALUES (6, 'k8m', 'rocky', 1, 5);
INSERT INTO public.moon VALUES (7, 'nassal', 'ocean', 1, 7);
INSERT INTO public.moon VALUES (8, 'chi', 'iron', 1, 12);
INSERT INTO public.moon VALUES (9, 'epe', 'ice ocean', 1, 6);
INSERT INTO public.moon VALUES (10, 'riva', 'lava', 1, 11);
INSERT INTO public.moon VALUES (11, 'podca', 'rocky', 1, 5);
INSERT INTO public.moon VALUES (12, 'kamaz', 'rocky', 1, 5);
INSERT INTO public.moon VALUES (13, 'tea', 'ocean', 1, 4);
INSERT INTO public.moon VALUES (14, 'ledenec', 'ice', 1, 2);
INSERT INTO public.moon VALUES (15, 'moon2', 'dusty', 1, 6);
INSERT INTO public.moon VALUES (16, 'strange', 'unknown', 1, 2);
INSERT INTO public.moon VALUES (17, 'kitan', 'rocky', 1, 11);
INSERT INTO public.moon VALUES (18, 'zaz', 'rocky', 1, 6);
INSERT INTO public.moon VALUES (19, 'music', 'ocean', 1, 4);
INSERT INTO public.moon VALUES (20, 'dance', 'ice', 1, 2);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'earth', 'rocky', 1, 1);
INSERT INTO public.planet VALUES (2, 'nibiru', 'dark', 2, 1);
INSERT INTO public.planet VALUES (3, 'venus', 'rocky', 1, 1);
INSERT INTO public.planet VALUES (4, 'dune', 'desert', 12, 6);
INSERT INTO public.planet VALUES (5, 'azeroth', 'rocky', 1, 5);
INSERT INTO public.planet VALUES (6, 'p73', 'icy', 2, 4);
INSERT INTO public.planet VALUES (7, 'funkatron', 'rocky', 3, 2);
INSERT INTO public.planet VALUES (8, 'zhelezyaka', 'iron', 1, 3);
INSERT INTO public.planet VALUES (9, 'saturn', 'gas giant', 50, 1);
INSERT INTO public.planet VALUES (10, 'jupiter', 'gas giant', 45, 1);
INSERT INTO public.planet VALUES (11, 'jd142', 'rocky', 2, 6);
INSERT INTO public.planet VALUES (12, 'k8', 'icy', 2, 5);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 'red dwarf', 12, 14, true, 3);
INSERT INTO public.star VALUES (2, 'alpfa persey 8', 'normal', 122, 112, true, 6);
INSERT INTO public.star VALUES (3, 'black star', 'black', 22, 12, false, 1);
INSERT INTO public.star VALUES (4, 'polar star', 'normal', 222, 221, true, 3);
INSERT INTO public.star VALUES (5, 'sirius', 'white people', 311, 322, false, 3);
INSERT INTO public.star VALUES (6, 'vega', 'white', 11, 23, true, 4);


--
-- Name: canstellation_canstellation_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.canstellation_canstellation_id_seq', 3, true);


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
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: canstellation canstellation_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.canstellation
    ADD CONSTRAINT canstellation_pkey PRIMARY KEY (canstellation_id);


--
-- Name: canstellation canstellation_uni_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.canstellation
    ADD CONSTRAINT canstellation_uni_key UNIQUE (uni);


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
-- Name: canstellation canstellation_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.canstellation
    ADD CONSTRAINT canstellation_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: canstellation canstellation_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.canstellation
    ADD CONSTRAINT canstellation_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


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

