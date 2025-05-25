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
    name character varying NOT NULL,
    description text,
    age_in_millions_of_years integer,
    age_in_millions integer
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
    name character varying NOT NULL,
    planet_id integer,
    orbital_period integer,
    has_atmosphere boolean
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
    name character varying NOT NULL,
    star_id integer,
    has_life boolean,
    distance_from_earth numeric,
    diameter integer,
    moons_count integer
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
-- Name: space_agency; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space_agency (
    space_agency_id integer NOT NULL,
    name character varying NOT NULL,
    founded_year integer
);


ALTER TABLE public.space_agency OWNER TO freecodecamp;

--
-- Name: space_agency_agency_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_agency_agency_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_agency_agency_id_seq OWNER TO freecodecamp;

--
-- Name: space_agency_agency_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_agency_agency_id_seq OWNED BY public.space_agency.space_agency_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying NOT NULL,
    galaxy_id integer,
    is_spherical boolean,
    luminosity double precision
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
-- Name: space_agency space_agency_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency ALTER COLUMN space_agency_id SET DEFAULT nextval('public.space_agency_agency_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 'Our home galaxy', 13600, NULL);
INSERT INTO public.galaxy VALUES (3, 'Andromeda', 'Nearest major galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Whirlpool', 'Spiral galaxy with well-defined arms', NULL, NULL);
INSERT INTO public.galaxy VALUES (11, 'Sombrero', 'Galaxy with a bright nucleus', NULL, NULL);
INSERT INTO public.galaxy VALUES (12, 'Triangulum', 'Small spiral galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (13, 'Messier 87', 'Massive elliptical galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Andromeda_2', 'Nearest major galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (9, 'Andromeda_3', 'Nearest major galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way_2', 'Our home galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Milky Way_3', 'Our home galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (8, 'Milky Way_4', 'Our home galaxy', NULL, NULL);
INSERT INTO public.galaxy VALUES (7, 'Whirlpool_2', 'Spiral galaxy with well-defined arms', NULL, NULL);
INSERT INTO public.galaxy VALUES (10, 'Whirlpool_3', 'Spiral galaxy', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 1, NULL, NULL);
INSERT INTO public.moon VALUES (2, 'Phobos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (3, 'Deimos', 2, NULL, NULL);
INSERT INTO public.moon VALUES (10, 'Io', 5, NULL, NULL);
INSERT INTO public.moon VALUES (11, 'Europa', 5, NULL, NULL);
INSERT INTO public.moon VALUES (12, 'Ganymede', 5, NULL, NULL);
INSERT INTO public.moon VALUES (13, 'Callisto', 5, NULL, NULL);
INSERT INTO public.moon VALUES (14, 'Titan', 6, NULL, NULL);
INSERT INTO public.moon VALUES (15, 'Rhea', 6, NULL, NULL);
INSERT INTO public.moon VALUES (16, 'Iapetus', 6, NULL, NULL);
INSERT INTO public.moon VALUES (17, 'Dione', 6, NULL, NULL);
INSERT INTO public.moon VALUES (18, 'Tethys', 6, NULL, NULL);
INSERT INTO public.moon VALUES (19, 'Miranda', 7, NULL, NULL);
INSERT INTO public.moon VALUES (20, 'Ariel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (21, 'Umbriel', 7, NULL, NULL);
INSERT INTO public.moon VALUES (22, 'Titania', 7, NULL, NULL);
INSERT INTO public.moon VALUES (23, 'Oberon', 7, NULL, NULL);
INSERT INTO public.moon VALUES (24, 'Triton', 8, NULL, NULL);
INSERT INTO public.moon VALUES (25, 'Nereid', 8, NULL, NULL);
INSERT INTO public.moon VALUES (26, 'Charon', 9, NULL, NULL);
INSERT INTO public.moon VALUES (6, 'Deimos_2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (9, 'Deimos_3', 4, NULL, NULL);
INSERT INTO public.moon VALUES (4, 'Moon_2', 1, NULL, NULL);
INSERT INTO public.moon VALUES (7, 'Moon_3', 3, NULL, NULL);
INSERT INTO public.moon VALUES (5, 'Phobos_2', 2, NULL, NULL);
INSERT INTO public.moon VALUES (8, 'Phobos_3', 4, NULL, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Earth', 1, true, 0, NULL, NULL);
INSERT INTO public.planet VALUES (2, 'Mars', 1, false, 0.00015, NULL, NULL);
INSERT INTO public.planet VALUES (5, 'Venus', 1, NULL, NULL, 12104, 0);
INSERT INTO public.planet VALUES (6, 'Mercury', 1, NULL, NULL, 4879, 0);
INSERT INTO public.planet VALUES (10, 'Jupiter', 1, NULL, NULL, 139820, 79);
INSERT INTO public.planet VALUES (11, 'Saturn', 1, NULL, NULL, 116460, 82);
INSERT INTO public.planet VALUES (12, 'Uranus', 1, NULL, NULL, 50724, 27);
INSERT INTO public.planet VALUES (13, 'Neptune', 1, NULL, NULL, 49244, 14);
INSERT INTO public.planet VALUES (14, 'Pluto', 1, NULL, NULL, 2376, 5);
INSERT INTO public.planet VALUES (15, 'Kepler-22b', 2, NULL, NULL, 30000, 0);
INSERT INTO public.planet VALUES (16, 'Krypton', 2, NULL, NULL, 15000, 3);
INSERT INTO public.planet VALUES (17, 'Namek', 2, NULL, NULL, 13000, 1);
INSERT INTO public.planet VALUES (3, 'Earth_2', 1, NULL, NULL, 12742, 1);
INSERT INTO public.planet VALUES (8, 'Earth_3', 1, NULL, NULL, 12742, 1);
INSERT INTO public.planet VALUES (4, 'Mars_2', 1, NULL, NULL, 6779, 2);
INSERT INTO public.planet VALUES (9, 'Mars_3', 1, NULL, NULL, 6779, 2);
INSERT INTO public.planet VALUES (7, 'Venus_2', 1, NULL, NULL, 12104, 0);


--
-- Data for Name: space_agency; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space_agency VALUES (1, 'NASA', 1958);
INSERT INTO public.space_agency VALUES (2, 'ESA', 1975);
INSERT INTO public.space_agency VALUES (3, 'ISRO', 1969);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 1, true, NULL);
INSERT INTO public.star VALUES (3, 'Proxima Centauri', 1, NULL, NULL);
INSERT INTO public.star VALUES (4, 'Sirius', 1, NULL, NULL);
INSERT INTO public.star VALUES (7, 'Betelgeuse', 1, true, NULL);
INSERT INTO public.star VALUES (8, 'Rigel', 1, true, NULL);
INSERT INTO public.star VALUES (9, 'Alpha Centauri', 1, true, NULL);
INSERT INTO public.star VALUES (10, 'Proxima Centauri_2', 1, true, NULL);
INSERT INTO public.star VALUES (6, 'Sirius_2', 1, true, NULL);
INSERT INTO public.star VALUES (2, 'Sun_2', 1, NULL, NULL);
INSERT INTO public.star VALUES (5, 'Sun_3', 1, true, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 13, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 26, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 17, true);


--
-- Name: space_agency_agency_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_agency_agency_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 10, true);


--
-- Name: galaxy pk_galaxy; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT pk_galaxy PRIMARY KEY (galaxy_id);


--
-- Name: moon pk_moon; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT pk_moon PRIMARY KEY (moon_id);


--
-- Name: planet pk_planet; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT pk_planet PRIMARY KEY (planet_id);


--
-- Name: space_agency pk_space_agency; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency
    ADD CONSTRAINT pk_space_agency PRIMARY KEY (space_agency_id);


--
-- Name: star pk_star; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT pk_star PRIMARY KEY (star_id);


--
-- Name: galaxy unique_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT unique_galaxy_name UNIQUE (name);


--
-- Name: moon unique_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT unique_moon_name UNIQUE (name);


--
-- Name: planet unique_planet_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT unique_planet_name UNIQUE (name);


--
-- Name: space_agency unique_space_agency_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space_agency
    ADD CONSTRAINT unique_space_agency_name UNIQUE (name);


--
-- Name: star unique_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT unique_star_name UNIQUE (name);


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

