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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    loops_till_win integer,
    date_played date DEFAULT CURRENT_DATE NOT NULL,
    secret_number integer
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.username_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.username_user_id_seq OWNER TO freecodecamp;

--
-- Name: username_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.username_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.username_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 50, '2023-03-28', NULL);
INSERT INTO public.games VALUES (2, 1, 23, '2023-03-28', NULL);
INSERT INTO public.games VALUES (3, 3, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (4, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (5, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (6, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (7, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (8, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (9, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (10, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (11, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (12, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (13, 1, NULL, '2023-03-28', NULL);
INSERT INTO public.games VALUES (14, 1, NULL, '2023-03-28', 500);
INSERT INTO public.games VALUES (15, 1, NULL, '2023-03-28', 594);
INSERT INTO public.games VALUES (16, 1, NULL, '2023-03-28', 81);
INSERT INTO public.games VALUES (17, 1, NULL, '2023-03-28', 507);
INSERT INTO public.games VALUES (18, 1, NULL, '2023-03-28', 15);
INSERT INTO public.games VALUES (19, 8, NULL, '2023-03-28', 609);
INSERT INTO public.games VALUES (20, 9, NULL, '2023-03-28', 298);
INSERT INTO public.games VALUES (21, 8, NULL, '2023-03-28', 41);
INSERT INTO public.games VALUES (22, 8, NULL, '2023-03-28', 22);
INSERT INTO public.games VALUES (23, 8, NULL, '2023-03-28', 978);
INSERT INTO public.games VALUES (52, 41, NULL, '2023-03-28', 408);
INSERT INTO public.games VALUES (53, 42, NULL, '2023-03-28', 616);
INSERT INTO public.games VALUES (54, 41, NULL, '2023-03-28', 492);
INSERT INTO public.games VALUES (55, 41, NULL, '2023-03-28', 622);
INSERT INTO public.games VALUES (56, 41, NULL, '2023-03-28', 366);
INSERT INTO public.games VALUES (85, 74, NULL, '2023-03-28', 359);
INSERT INTO public.games VALUES (86, 75, NULL, '2023-03-28', 733);
INSERT INTO public.games VALUES (87, 74, NULL, '2023-03-28', 585);
INSERT INTO public.games VALUES (88, 74, NULL, '2023-03-28', 687);
INSERT INTO public.games VALUES (89, 74, NULL, '2023-03-28', 17);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'Lou');
INSERT INTO public.users VALUES (2, 'bunsen');
INSERT INTO public.users VALUES (3, 'li');
INSERT INTO public.users VALUES (4, 'user_1679969208059');
INSERT INTO public.users VALUES (5, 'user_1679969208058');
INSERT INTO public.users VALUES (6, 'user_1679969261022');
INSERT INTO public.users VALUES (7, 'user_1679969261021');
INSERT INTO public.users VALUES (8, 'user_1679970712305');
INSERT INTO public.users VALUES (9, 'user_1679970712304');
INSERT INTO public.users VALUES (41, 'user_1679970917440');
INSERT INTO public.users VALUES (42, 'user_1679970917439');
INSERT INTO public.users VALUES (74, 'user_1679971139988');
INSERT INTO public.users VALUES (75, 'user_1679971139987');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 89, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 75, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users username_user_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_user_id_key UNIQUE (user_id);


--
-- Name: users username_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT username_username_key UNIQUE (username);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

