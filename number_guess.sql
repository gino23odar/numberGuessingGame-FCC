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
    user_id integer NOT NULL,
    number_guesses integer DEFAULT 0 NOT NULL,
    game_id integer NOT NULL
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
    name character varying(100) NOT NULL,
    games_played integer DEFAULT 0 NOT NULL,
    best_game integer DEFAULT 0 NOT NULL,
    user_id integer NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (2, 9, 1);
INSERT INTO public.games VALUES (3, 746, 2);
INSERT INTO public.games VALUES (3, 555, 3);
INSERT INTO public.games VALUES (4, 818, 4);
INSERT INTO public.games VALUES (4, 868, 5);
INSERT INTO public.games VALUES (3, 820, 6);
INSERT INTO public.games VALUES (3, 239, 7);
INSERT INTO public.games VALUES (3, 934, 8);
INSERT INTO public.games VALUES (5, 415, 9);
INSERT INTO public.games VALUES (5, 777, 10);
INSERT INTO public.games VALUES (6, 541, 11);
INSERT INTO public.games VALUES (6, 467, 12);
INSERT INTO public.games VALUES (5, 98, 13);
INSERT INTO public.games VALUES (5, 800, 14);
INSERT INTO public.games VALUES (5, 229, 15);
INSERT INTO public.games VALUES (7, 433, 16);
INSERT INTO public.games VALUES (7, 782, 17);
INSERT INTO public.games VALUES (8, 645, 18);
INSERT INTO public.games VALUES (8, 239, 19);
INSERT INTO public.games VALUES (7, 552, 20);
INSERT INTO public.games VALUES (7, 595, 21);
INSERT INTO public.games VALUES (7, 18, 22);
INSERT INTO public.games VALUES (9, 152, 23);
INSERT INTO public.games VALUES (9, 235, 24);
INSERT INTO public.games VALUES (10, 885, 25);
INSERT INTO public.games VALUES (10, 176, 26);
INSERT INTO public.games VALUES (9, 140, 27);
INSERT INTO public.games VALUES (9, 308, 28);
INSERT INTO public.games VALUES (9, 479, 29);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES ('Gino', 1, 9, 1);
INSERT INTO public.users VALUES ('Gabe', 1, 9, 2);
INSERT INTO public.users VALUES ('user_1670642800306', 2, 818, 4);
INSERT INTO public.users VALUES ('user_1670642800307', 5, 239, 3);
INSERT INTO public.users VALUES ('user_1670642857750', 2, 467, 6);
INSERT INTO public.users VALUES ('user_1670642857751', 5, 98, 5);
INSERT INTO public.users VALUES ('user_1670643023425', 2, 239, 8);
INSERT INTO public.users VALUES ('user_1670643023426', 5, 18, 7);
INSERT INTO public.users VALUES ('user_1670643094229', 2, 176, 10);
INSERT INTO public.users VALUES ('user_1670643094230', 5, 140, 9);


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 29, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 10, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


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

