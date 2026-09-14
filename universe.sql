--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
-- Name: comet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.comet (
    comet_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    period numeric NOT NULL,
    is_spherical boolean,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.comet OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.comet_comet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.comet_comet_id_seq OWNER TO freecodecamp;

--
-- Name: comet_comet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.comet_comet_id_seq OWNED BY public.comet.comet_id;


--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    luminosity_in_logaritimic_sun numeric NOT NULL,
    color character varying(7)
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
    description text,
    age_in_millions_of_years integer NOT NULL,
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
    description text,
    age_in_millions_of_years integer NOT NULL,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text,
    age_in_millions_of_years integer NOT NULL,
    is_supermassive boolean,
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
-- Name: comet comet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet ALTER COLUMN comet_id SET DEFAULT nextval('public.comet_comet_id_seq'::regclass);


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
-- Data for Name: comet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.comet VALUES (1, 'Cavalli Comet X', 'Cometa periodico de cauda luminosa', 85.5, false, 1);
INSERT INTO public.comet VALUES (2, 'Perseus Spectre', 'Cometa hiperbolico vindo do espaço intergalactico', 4500.0, false, 2);
INSERT INTO public.comet VALUES (3, 'Pillar Wanderer', 'Cometa antigo com nucleo de gelo e rocha', 320.8, false, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Mansos Cavalliensis', 'Conglomerado celeste repleto de nebulosas em formato de cavalo.', 12.2, NULL);
INSERT INTO public.galaxy VALUES (2, 'Perseus', 'Dez vezes maior que andromeda quadrada', 19.8, NULL);
INSERT INTO public.galaxy VALUES (3, 'Pillos Erectus', 'Sistemas fálicos permeiam toda a sua extensão.', 3.14, NULL);
INSERT INTO public.galaxy VALUES (4, 'Sombrero Nebular', 'Anel de poeira denso com formato caracteristico de chapeu', 10.9, NULL);
INSERT INTO public.galaxy VALUES (5, 'Vortex Primordial', 'Galaxia espiral com intensa atividade magnética no centro', 15.4, NULL);
INSERT INTO public.galaxy VALUES (6, 'Abyssal Void', 'Galaxia anã isolada no limite do universo observavel', 1.05, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Cavalli Moon A', 'Satelite natural com crateras de impacto', 4400, true, 1);
INSERT INTO public.moon VALUES (2, 'Cavalli Moon B', 'Pequeña lua irregular', 4300, false, 1);
INSERT INTO public.moon VALUES (3, 'Cavalli Ring I', 'Lua capturada pela gravidade do gigante', 4000, false, 2);
INSERT INTO public.moon VALUES (4, 'Cavalli Ring II', 'Lua congelada rica em agua', 4100, true, 2);
INSERT INTO public.moon VALUES (5, 'Perseus Moon I', 'Lua com intensa atividade vulcanica', 8, true, 4);
INSERT INTO public.moon VALUES (6, 'Perseus Moon II', 'Corpo celeste coberto de gelo carbonico', 9, false, 4);
INSERT INTO public.moon VALUES (7, 'Perseus Moon III', 'Lua esferica de orbita rápida', 10, true, 5);
INSERT INTO public.moon VALUES (8, 'Perseus Moon IV', 'Pequeño asteroide capturado', 5, false, 5);
INSERT INTO public.moon VALUES (9, 'Pillar Satellite 1', 'Lua rochosa sem atmosfera', 7900, true, 7);
INSERT INTO public.moon VALUES (10, 'Pillar Satellite 2', 'Lua com geysers de nitrogênio', 8100, true, 8);
INSERT INTO public.moon VALUES (11, 'Pillar Satellite 3', 'Corpo celeste esférico e denso', 8200, true, 8);
INSERT INTO public.moon VALUES (12, 'Pillar Satellite 4', 'Pequeno fragmento rochoso', 7500, false, 8);
INSERT INTO public.moon VALUES (13, 'Pillar Satellite 5', 'Lua exterior de orbita eliptica', 8300, false, 9);
INSERT INTO public.moon VALUES (14, 'Vortex Moon A', 'Lua oceânica coberta de gelo', 40, true, 10);
INSERT INTO public.moon VALUES (15, 'Vortex Moon B', 'Lua esferica de silicato', 42, true, 10);
INSERT INTO public.moon VALUES (16, 'Vortex Moon C', 'Fragmento metálico capturado', 44, false, 11);
INSERT INTO public.moon VALUES (17, 'Vortex Moon D', 'Lua interna de alta velocidade', 45, false, 11);
INSERT INTO public.moon VALUES (18, 'Vortex Moon E', 'Grande lua congelada exterior', 48, true, 12);
INSERT INTO public.moon VALUES (19, 'Vortex Moon F', 'Lua esférica com crosta de carbono', 49, true, 12);
INSERT INTO public.moon VALUES (20, 'Vortex Moon G', 'Lua anômala com órbita retrógrada', 50, false, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Cavalli I', 'Planeta rochoso proximo da estrela principal', 4500, true, 1);
INSERT INTO public.planet VALUES (2, 'Cavalli II', 'Gigante gasoso com aneis densos', 4400, false, 1);
INSERT INTO public.planet VALUES (3, 'Cavalli III', 'Mundo gelado na periferia do sistema', 4600, false, 1);
INSERT INTO public.planet VALUES (4, 'Perseus Alpha b', 'Super-Terra com atmosfera de vapor', 10, false, 3);
INSERT INTO public.planet VALUES (5, 'Perseus Alpha c', 'Gigante de gelo massivo', 12, false, 3);
INSERT INTO public.planet VALUES (6, 'Perseus Major I', 'Planeta arido e vulcanico', 250, false, 4);
INSERT INTO public.planet VALUES (7, 'Pillar Core', 'Planeta rochoso superdenso', 8000, false, 5);
INSERT INTO public.planet VALUES (8, 'Pillar Outer', 'Gigante gasoso com tempestades permanentes', 8500, false, 5);
INSERT INTO public.planet VALUES (9, 'Pillar Rim', 'Planeta anão cobertos por metano solido', 8900, false, 5);
INSERT INTO public.planet VALUES (10, 'Vortex Prime', 'Mundo oceânico com atividade geotermica', 45, false, 6);
INSERT INTO public.planet VALUES (11, 'Vortex Secundus', 'Planeta rochoso sem atmosfera', 48, false, 6);
INSERT INTO public.planet VALUES (12, 'Vortex Tertius', 'Gigante gasoso de alta densidade', 50, false, 6);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Alpha Cavalli', 'Estrela amarela de sequencia principal', 4600, false, 1);
INSERT INTO public.star VALUES (2, 'Beta Cavalli', 'Estrela binaria pulsante', 5200, false, 1);
INSERT INTO public.star VALUES (3, 'Persei Titan', 'Supergigante azul extremamente luminosa', 12, true, 2);
INSERT INTO public.star VALUES (4, 'Persei Major', 'Estrela de neutrons de alta rotaçao', 300, false, 2);
INSERT INTO public.star VALUES (5, 'Pillaris Prime', 'Anã vermelha de longa vida útil', 8900, false, 3);
INSERT INTO public.star VALUES (6, 'Vortex Sun', 'Estrela hipergigante amarela', 50, true, 5);


--
-- Name: comet_comet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.comet_comet_id_seq', 3, true);


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
-- Name: comet comet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_name_key UNIQUE (name);


--
-- Name: comet comet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_pkey PRIMARY KEY (comet_id);


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
-- Name: comet comet_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.comet
    ADD CONSTRAINT comet_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


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

