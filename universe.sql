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
-- Name: asteroid; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.asteroid (
    asteroid_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    color character varying(20),
    is_spherical boolean
);


ALTER TABLE public.asteroid OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.asteroid_asteroid_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.asteroid_asteroid_seq OWNER TO freecodecamp;

--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.asteroid_asteroid_seq OWNED BY public.asteroid.asteroid_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(50) NOT NULL,
    description text,
    color character varying(20),
    is_spherical boolean
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
    name character varying(50) NOT NULL,
    description text,
    has_life boolean,
    planet_id integer NOT NULL,
    color character varying(20),
    is_spherical boolean
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
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    diameter_in_km numeric(7,1),
    description text,
    has_life boolean,
    star_id integer NOT NULL,
    color character varying(20),
    is_spherical boolean,
    is_dwarf boolean
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
    name character varying(50) NOT NULL,
    age_in_million_years integer,
    description text,
    galaxy_id integer NOT NULL,
    color character varying(20),
    is_spherical boolean
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
-- Name: asteroid asteroid_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid ALTER COLUMN asteroid_id SET DEFAULT nextval('public.asteroid_asteroid_seq'::regclass);


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
-- Data for Name: asteroid; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.asteroid VALUES (1, '243 Ida', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (2, '253 Mathilde', NULL, NULL, NULL);
INSERT INTO public.asteroid VALUES (3, '4 Vesta', NULL, NULL, NULL);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (3, 'Cygnus A', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (4, 'Canis Major Dwarf', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (5, 'Magellanic Clouds', NULL, NULL, false);
INSERT INTO public.galaxy VALUES (6, 'Virgo A', NULL, NULL, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Earth Moon', NULL, NULL, 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Delmos', NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Phobos', NULL, NULL, 7, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Io', NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Europe', NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Ganymede', NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Calisto', NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Enceladus', NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Titan', NULL, NULL, 6, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Charon', NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Hydra', NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Kerberos', NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Nix', NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Styx', NULL, NULL, 14, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Galatea', NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Larissa', NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Proteus', NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Triton', NULL, NULL, 16, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Adrastea', NULL, NULL, 5, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Aite', NULL, NULL, 5, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', NULL, NULL, NULL, true, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (2, 'Jupiter', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (3, 'Saturn', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (4, 'Earth', NULL, NULL, NULL, true, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (7, 'Mars', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (8, 'Venus', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (9, 'Mercury', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (10, 'Uranus', NULL, NULL, NULL, false, 1, NULL, true, NULL);
INSERT INTO public.planet VALUES (11, 'planet b', NULL, NULL, NULL, NULL, 3, NULL, true, NULL);
INSERT INTO public.planet VALUES (12, 'planet c', NULL, NULL, NULL, NULL, 3, NULL, true, NULL);
INSERT INTO public.planet VALUES (13, 'planet d', NULL, NULL, NULL, NULL, 3, NULL, true, NULL);
INSERT INTO public.planet VALUES (14, 'Pluto', NULL, NULL, NULL, NULL, 1, NULL, true, true);
INSERT INTO public.planet VALUES (15, 'Ceres', NULL, NULL, NULL, NULL, 1, NULL, true, true);
INSERT INTO public.planet VALUES (16, 'Neptune', NULL, NULL, NULL, NULL, 1, NULL, true, NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, 1, NULL, true);
INSERT INTO public.star VALUES (2, 'Barnard', NULL, NULL, 1, NULL, true);
INSERT INTO public.star VALUES (3, 'Centauri C', NULL, NULL, 1, NULL, true);
INSERT INTO public.star VALUES (4, 'Altair', NULL, NULL, 1, NULL, true);
INSERT INTO public.star VALUES (5, 'Alpha Andromedae', NULL, NULL, 2, NULL, true);
INSERT INTO public.star VALUES (6, 'Beta Andromedae', NULL, NULL, 2, NULL, true);
INSERT INTO public.star VALUES (7, 'Delta Andromedae', NULL, NULL, 2, NULL, true);
INSERT INTO public.star VALUES (8, 'Epsilon Virginis', NULL, NULL, 6, NULL, true);


--
-- Name: asteroid_asteroid_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.asteroid_asteroid_seq', 3, true);


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

SELECT pg_catalog.setval('public.planet_planet_id_seq', 16, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 8, true);


--
-- Name: asteroid asteroid_asteroid_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_asteroid_id_key UNIQUE (asteroid_id);


--
-- Name: asteroid asteroid_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.asteroid
    ADD CONSTRAINT asteroid_id PRIMARY KEY (asteroid_id);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_id PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_id PRIMARY KEY (moon_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: planet planet_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_id PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_id; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_id PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


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

