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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying(50) NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(50) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (321, 2018, 'Final', 710, 711, 4, 2);
INSERT INTO public.games VALUES (322, 2018, 'Third Place', 712, 713, 2, 0);
INSERT INTO public.games VALUES (323, 2018, 'Semi-Final', 711, 713, 2, 1);
INSERT INTO public.games VALUES (324, 2018, 'Semi-Final', 710, 712, 1, 0);
INSERT INTO public.games VALUES (325, 2018, 'Quarter-Final', 711, 714, 3, 2);
INSERT INTO public.games VALUES (326, 2018, 'Quarter-Final', 713, 715, 2, 0);
INSERT INTO public.games VALUES (327, 2018, 'Quarter-Final', 712, 716, 2, 1);
INSERT INTO public.games VALUES (328, 2018, 'Quarter-Final', 710, 717, 2, 0);
INSERT INTO public.games VALUES (329, 2018, 'Eighth-Final', 713, 718, 2, 1);
INSERT INTO public.games VALUES (330, 2018, 'Eighth-Final', 715, 719, 1, 0);
INSERT INTO public.games VALUES (331, 2018, 'Eighth-Final', 712, 720, 3, 2);
INSERT INTO public.games VALUES (332, 2018, 'Eighth-Final', 716, 721, 2, 0);
INSERT INTO public.games VALUES (333, 2018, 'Eighth-Final', 711, 722, 2, 1);
INSERT INTO public.games VALUES (334, 2018, 'Eighth-Final', 714, 723, 2, 1);
INSERT INTO public.games VALUES (335, 2018, 'Eighth-Final', 717, 724, 2, 1);
INSERT INTO public.games VALUES (336, 2018, 'Eighth-Final', 710, 725, 4, 3);
INSERT INTO public.games VALUES (337, 2014, 'Final', 726, 725, 1, 0);
INSERT INTO public.games VALUES (338, 2014, 'Third Place', 727, 716, 3, 0);
INSERT INTO public.games VALUES (339, 2014, 'Semi-Final', 725, 727, 1, 0);
INSERT INTO public.games VALUES (340, 2014, 'Semi-Final', 726, 716, 7, 1);
INSERT INTO public.games VALUES (341, 2014, 'Quarter-Final', 727, 728, 1, 0);
INSERT INTO public.games VALUES (342, 2014, 'Quarter-Final', 725, 712, 1, 0);
INSERT INTO public.games VALUES (343, 2014, 'Quarter-Final', 716, 718, 2, 1);
INSERT INTO public.games VALUES (344, 2014, 'Quarter-Final', 726, 710, 1, 0);
INSERT INTO public.games VALUES (345, 2014, 'Eighth-Final', 716, 729, 2, 1);
INSERT INTO public.games VALUES (346, 2014, 'Eighth-Final', 718, 717, 2, 0);
INSERT INTO public.games VALUES (347, 2014, 'Eighth-Final', 710, 730, 2, 0);
INSERT INTO public.games VALUES (348, 2014, 'Eighth-Final', 726, 731, 2, 1);
INSERT INTO public.games VALUES (349, 2014, 'Eighth-Final', 727, 721, 2, 1);
INSERT INTO public.games VALUES (350, 2014, 'Eighth-Final', 728, 732, 2, 1);
INSERT INTO public.games VALUES (351, 2014, 'Eighth-Final', 725, 719, 1, 0);
INSERT INTO public.games VALUES (352, 2014, 'Eighth-Final', 712, 733, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (710, 'France');
INSERT INTO public.teams VALUES (711, 'Croatia');
INSERT INTO public.teams VALUES (712, 'Belgium');
INSERT INTO public.teams VALUES (713, 'England');
INSERT INTO public.teams VALUES (714, 'Russia');
INSERT INTO public.teams VALUES (715, 'Sweden');
INSERT INTO public.teams VALUES (716, 'Brazil');
INSERT INTO public.teams VALUES (717, 'Uruguay');
INSERT INTO public.teams VALUES (718, 'Colombia');
INSERT INTO public.teams VALUES (719, 'Switzerland');
INSERT INTO public.teams VALUES (720, 'Japan');
INSERT INTO public.teams VALUES (721, 'Mexico');
INSERT INTO public.teams VALUES (722, 'Denmark');
INSERT INTO public.teams VALUES (723, 'Spain');
INSERT INTO public.teams VALUES (724, 'Portugal');
INSERT INTO public.teams VALUES (725, 'Argentina');
INSERT INTO public.teams VALUES (726, 'Germany');
INSERT INTO public.teams VALUES (727, 'Netherlands');
INSERT INTO public.teams VALUES (728, 'Costa Rica');
INSERT INTO public.teams VALUES (729, 'Chile');
INSERT INTO public.teams VALUES (730, 'Nigeria');
INSERT INTO public.teams VALUES (731, 'Algeria');
INSERT INTO public.teams VALUES (732, 'Greece');
INSERT INTO public.teams VALUES (733, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 352, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 733, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

