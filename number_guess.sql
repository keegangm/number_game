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
INSERT INTO public.games VALUES (90, 76, NULL, '2023-03-28', 695);
INSERT INTO public.games VALUES (91, 77, NULL, '2023-03-28', 320);
INSERT INTO public.games VALUES (92, 76, NULL, '2023-03-28', 147);
INSERT INTO public.games VALUES (93, 76, NULL, '2023-03-28', 157);
INSERT INTO public.games VALUES (94, 76, NULL, '2023-03-28', 497);
INSERT INTO public.games VALUES (95, 78, NULL, '2023-03-28', 367);
INSERT INTO public.games VALUES (96, 79, NULL, '2023-03-28', 408);
INSERT INTO public.games VALUES (97, 78, NULL, '2023-03-28', 810);
INSERT INTO public.games VALUES (98, 78, NULL, '2023-03-28', 411);
INSERT INTO public.games VALUES (99, 78, NULL, '2023-03-28', 453);
INSERT INTO public.games VALUES (100, 1, NULL, '2023-03-28', 904);
INSERT INTO public.games VALUES (101, 1, NULL, '2023-03-28', 483);
INSERT INTO public.games VALUES (102, 1, NULL, '2023-03-28', 493);
INSERT INTO public.games VALUES (103, 1, NULL, '2023-03-28', 407);
INSERT INTO public.games VALUES (104, 1, NULL, '2023-03-28', 672);
INSERT INTO public.games VALUES (105, 1, NULL, '2023-03-28', 420);
INSERT INTO public.games VALUES (106, 80, NULL, '2023-03-28', 425);
INSERT INTO public.games VALUES (107, 81, NULL, '2023-03-28', 826);
INSERT INTO public.games VALUES (108, 80, NULL, '2023-03-28', 431);
INSERT INTO public.games VALUES (109, 80, NULL, '2023-03-28', 861);
INSERT INTO public.games VALUES (110, 80, NULL, '2023-03-28', 203);
INSERT INTO public.games VALUES (111, 1, NULL, '2023-03-28', 865);
INSERT INTO public.games VALUES (112, 1, NULL, '2023-03-28', 77);
INSERT INTO public.games VALUES (113, 82, NULL, '2023-03-28', 409);
INSERT INTO public.games VALUES (114, 83, NULL, '2023-03-28', 937);
INSERT INTO public.games VALUES (115, 82, NULL, '2023-03-28', 312);
INSERT INTO public.games VALUES (116, 82, NULL, '2023-03-28', 116);
INSERT INTO public.games VALUES (117, 82, NULL, '2023-03-28', 252);
INSERT INTO public.games VALUES (118, 84, NULL, '2023-03-28', 909);
INSERT INTO public.games VALUES (119, 85, NULL, '2023-03-28', 985);
INSERT INTO public.games VALUES (120, 84, NULL, '2023-03-28', 846);
INSERT INTO public.games VALUES (121, 84, NULL, '2023-03-28', 54);
INSERT INTO public.games VALUES (122, 84, NULL, '2023-03-28', 671);
INSERT INTO public.games VALUES (123, 1, NULL, '2023-03-28', 628);
INSERT INTO public.games VALUES (124, 1, NULL, '2023-03-28', 904);
INSERT INTO public.games VALUES (125, 1, NULL, '2023-03-28', 380);
INSERT INTO public.games VALUES (126, 1, NULL, '2023-03-28', 20);
INSERT INTO public.games VALUES (127, 1, NULL, '2023-03-28', 11);
INSERT INTO public.games VALUES (128, 1, NULL, '2023-03-28', 788);
INSERT INTO public.games VALUES (129, 1, NULL, '2023-03-28', 298);
INSERT INTO public.games VALUES (130, 86, NULL, '2023-03-28', 87);
INSERT INTO public.games VALUES (131, 87, NULL, '2023-03-28', 662);
INSERT INTO public.games VALUES (132, 86, NULL, '2023-03-28', 87);
INSERT INTO public.games VALUES (133, 86, NULL, '2023-03-28', 651);
INSERT INTO public.games VALUES (134, 86, NULL, '2023-03-28', 999);
INSERT INTO public.games VALUES (135, 88, NULL, '2023-03-28', 398);
INSERT INTO public.games VALUES (136, 89, NULL, '2023-03-28', 866);
INSERT INTO public.games VALUES (137, 88, NULL, '2023-03-28', 946);
INSERT INTO public.games VALUES (138, 88, NULL, '2023-03-28', 527);
INSERT INTO public.games VALUES (139, 88, NULL, '2023-03-28', 36);
INSERT INTO public.games VALUES (140, 91, NULL, '2023-03-28', 714);
INSERT INTO public.games VALUES (141, 90, NULL, '2023-03-28', 961);
INSERT INTO public.games VALUES (142, 90, NULL, '2023-03-28', 437);
INSERT INTO public.games VALUES (143, 90, NULL, '2023-03-28', 108);
INSERT INTO public.games VALUES (144, 1, NULL, '2023-03-28', 381);
INSERT INTO public.games VALUES (145, 1, NULL, '2023-03-28', 325);
INSERT INTO public.games VALUES (146, 1, NULL, '2023-03-28', 865);
INSERT INTO public.games VALUES (147, 1, NULL, '2023-03-28', 748);
INSERT INTO public.games VALUES (148, 1, NULL, '2023-03-28', 581);
INSERT INTO public.games VALUES (149, 1, NULL, '2023-03-28', 202);
INSERT INTO public.games VALUES (150, 1, NULL, '2023-03-28', 809);
INSERT INTO public.games VALUES (151, 1, 9, '2023-03-28', 18);
INSERT INTO public.games VALUES (152, 1, NULL, '2023-03-28', 984);
INSERT INTO public.games VALUES (153, 92, 300, '2023-03-28', 299);
INSERT INTO public.games VALUES (169, 99, 368, '2023-03-28', 367);
INSERT INTO public.games VALUES (154, 93, 293, '2023-03-28', 292);
INSERT INTO public.games VALUES (155, 92, NULL, '2023-03-28', 361);
INSERT INTO public.games VALUES (156, 92, 135, '2023-03-28', 133);
INSERT INTO public.games VALUES (170, 98, NULL, '2023-03-28', 746);
INSERT INTO public.games VALUES (157, 92, 20, '2023-03-28', 19);
INSERT INTO public.games VALUES (158, 1, NULL, '2023-03-28', 934);
INSERT INTO public.games VALUES (159, 1, 11, '2023-03-28', 327);
INSERT INTO public.games VALUES (160, 94, NULL, '2023-03-28', 339);
INSERT INTO public.games VALUES (161, 95, 164, '2023-03-28', 163);
INSERT INTO public.games VALUES (171, 98, 326, '2023-03-28', 324);
INSERT INTO public.games VALUES (162, 94, 533, '2023-03-28', 530);
INSERT INTO public.games VALUES (163, 94, 741, '2023-03-28', 739);
INSERT INTO public.games VALUES (184, 104, 999, '2023-03-28', 998);
INSERT INTO public.games VALUES (164, 94, 423, '2023-03-28', 422);
INSERT INTO public.games VALUES (172, 98, 320, '2023-03-28', 319);
INSERT INTO public.games VALUES (165, 97, 10, '2023-03-28', 459);
INSERT INTO public.games VALUES (166, 98, 331, '2023-03-28', 330);
INSERT INTO public.games VALUES (173, 100, NULL, '2023-03-28', 911);
INSERT INTO public.games VALUES (167, 98, 721, '2023-03-28', 720);
INSERT INTO public.games VALUES (168, 99, NULL, '2023-03-28', 431);
INSERT INTO public.games VALUES (174, 100, 398, '2023-03-28', 397);
INSERT INTO public.games VALUES (204, 110, NULL, '2023-03-28', 725);
INSERT INTO public.games VALUES (175, 101, 740, '2023-03-28', 739);
INSERT INTO public.games VALUES (185, 103, 959, '2023-03-28', 956);
INSERT INTO public.games VALUES (176, 101, 358, '2023-03-28', 357);
INSERT INTO public.games VALUES (177, 100, 511, '2023-03-28', 508);
INSERT INTO public.games VALUES (197, 108, 773, '2023-03-28', 772);
INSERT INTO public.games VALUES (178, 100, 217, '2023-03-28', 215);
INSERT INTO public.games VALUES (186, 103, 38, '2023-03-28', 36);
INSERT INTO public.games VALUES (179, 100, 688, '2023-03-28', 687);
INSERT INTO public.games VALUES (180, 102, 9, '2023-03-28', 459);
INSERT INTO public.games VALUES (181, 103, NULL, '2023-03-28', 354);
INSERT INTO public.games VALUES (182, 103, 497, '2023-03-28', 496);
INSERT INTO public.games VALUES (187, 103, 908, '2023-03-28', 907);
INSERT INTO public.games VALUES (183, 104, 720, '2023-03-28', 719);
INSERT INTO public.games VALUES (188, 105, 879, '2023-03-28', 878);
INSERT INTO public.games VALUES (189, 105, NULL, '2023-03-28', 319);
INSERT INTO public.games VALUES (190, 106, NULL, '2023-03-28', 598);
INSERT INTO public.games VALUES (198, 109, 318, '2023-03-28', 317);
INSERT INTO public.games VALUES (191, 106, 262, '2023-03-28', 261);
INSERT INTO public.games VALUES (192, 105, 452, '2023-03-28', 449);
INSERT INTO public.games VALUES (207, 111, 541, '2023-03-28', 540);
INSERT INTO public.games VALUES (193, 105, 990, '2023-03-28', 988);
INSERT INTO public.games VALUES (194, 105, NULL, '2023-03-28', 182);
INSERT INTO public.games VALUES (199, 109, 575, '2023-03-28', 574);
INSERT INTO public.games VALUES (195, 107, 9, '2023-03-28', 349);
INSERT INTO public.games VALUES (196, 108, 866, '2023-03-28', 865);
INSERT INTO public.games VALUES (200, 108, NULL, '2023-03-28', 352);
INSERT INTO public.games VALUES (205, 110, 226, '2023-03-28', 225);
INSERT INTO public.games VALUES (201, 108, 951, '2023-03-28', 949);
INSERT INTO public.games VALUES (202, 108, 781, '2023-03-28', 780);
INSERT INTO public.games VALUES (203, 107, 11, '2023-03-28', 167);
INSERT INTO public.games VALUES (206, 111, 705, '2023-03-28', 704);
INSERT INTO public.games VALUES (208, 110, 738, '2023-03-28', 735);
INSERT INTO public.games VALUES (300, 136, 962, '2023-03-28', 959);
INSERT INTO public.games VALUES (209, 110, 538, '2023-03-28', 536);
INSERT INTO public.games VALUES (267, 126, 438, '2023-03-28', 437);
INSERT INTO public.games VALUES (210, 110, 339, '2023-03-28', 338);
INSERT INTO public.games VALUES (211, 112, NULL, '2023-03-28', 7);
INSERT INTO public.games VALUES (212, 112, NULL, '2023-03-28', 662);
INSERT INTO public.games VALUES (213, 113, NULL, '2023-03-28', 596);
INSERT INTO public.games VALUES (214, 113, 538, '2023-03-28', 537);
INSERT INTO public.games VALUES (268, 128, NULL, '2023-03-28', 11);
INSERT INTO public.games VALUES (215, 112, 962, '2023-03-28', 959);
INSERT INTO public.games VALUES (216, 112, 866, '2023-03-28', 864);
INSERT INTO public.games VALUES (269, 128, NULL, '2023-03-28', 966);
INSERT INTO public.games VALUES (217, 112, 962, '2023-03-28', 961);
INSERT INTO public.games VALUES (218, 1, 19, '2023-03-28', 785);
INSERT INTO public.games VALUES (219, 114, 358, '2023-03-28', 357);
INSERT INTO public.games VALUES (270, 129, 79, '2023-03-28', 78);
INSERT INTO public.games VALUES (220, 114, 921, '2023-03-28', 920);
INSERT INTO public.games VALUES (221, 115, 757, '2023-03-28', 756);
INSERT INTO public.games VALUES (271, 129, NULL, '2023-03-28', 880);
INSERT INTO public.games VALUES (222, 115, 487, '2023-03-28', 486);
INSERT INTO public.games VALUES (223, 114, NULL, '2023-03-28', 738);
INSERT INTO public.games VALUES (224, 114, 982, '2023-03-28', 980);
INSERT INTO public.games VALUES (272, 128, NULL, '2023-03-28', 227);
INSERT INTO public.games VALUES (225, 114, 260, '2023-03-28', 259);
INSERT INTO public.games VALUES (226, 116, NULL, '2023-03-28', 692);
INSERT INTO public.games VALUES (227, 116, 914, '2023-03-28', 913);
INSERT INTO public.games VALUES (228, 117, 484, '2023-03-28', 483);
INSERT INTO public.games VALUES (273, 128, 414, '2023-03-28', 412);
INSERT INTO public.games VALUES (229, 117, 622, '2023-03-28', 621);
INSERT INTO public.games VALUES (230, 116, 882, '2023-03-28', 879);
INSERT INTO public.games VALUES (301, 136, 597, '2023-03-28', 595);
INSERT INTO public.games VALUES (231, 116, 591, '2023-03-28', 589);
INSERT INTO public.games VALUES (274, 128, 998, '2023-03-28', 997);
INSERT INTO public.games VALUES (232, 116, 639, '2023-03-28', 638);
INSERT INTO public.games VALUES (233, 118, 129, '2023-03-28', 128);
INSERT INTO public.games VALUES (234, 118, 875, '2023-03-28', 874);
INSERT INTO public.games VALUES (275, 130, 875, '2023-03-28', 874);
INSERT INTO public.games VALUES (235, 119, 187, '2023-03-28', 186);
INSERT INTO public.games VALUES (236, 119, 202, '2023-03-28', 201);
INSERT INTO public.games VALUES (237, 118, NULL, '2023-03-28', 309);
INSERT INTO public.games VALUES (238, 118, NULL, '2023-03-28', 225);
INSERT INTO public.games VALUES (318, 142, NULL, '2023-03-28', 351);
INSERT INTO public.games VALUES (239, 118, 609, '2023-03-28', 608);
INSERT INTO public.games VALUES (276, 130, 803, '2023-03-28', 802);
INSERT INTO public.games VALUES (240, 120, 762, '2023-03-28', 761);
INSERT INTO public.games VALUES (241, 120, 377, '2023-03-28', 376);
INSERT INTO public.games VALUES (302, 136, 562, '2023-03-28', 561);
INSERT INTO public.games VALUES (242, 121, 543, '2023-03-28', 542);
INSERT INTO public.games VALUES (277, 131, 432, '2023-03-28', 431);
INSERT INTO public.games VALUES (243, 121, 658, '2023-03-28', 657);
INSERT INTO public.games VALUES (244, 120, 976, '2023-03-28', 973);
INSERT INTO public.games VALUES (245, 120, 996, '2023-03-28', 994);
INSERT INTO public.games VALUES (278, 131, 654, '2023-03-28', 653);
INSERT INTO public.games VALUES (246, 120, 169, '2023-03-28', 168);
INSERT INTO public.games VALUES (247, 122, 441, '2023-03-28', 440);
INSERT INTO public.games VALUES (248, 122, 515, '2023-03-28', 514);
INSERT INTO public.games VALUES (279, 130, 713, '2023-03-28', 710);
INSERT INTO public.games VALUES (249, 123, 103, '2023-03-28', 102);
INSERT INTO public.games VALUES (250, 123, 751, '2023-03-28', 750);
INSERT INTO public.games VALUES (280, 130, NULL, '2023-03-28', 271);
INSERT INTO public.games VALUES (251, 122, 2, '2023-03-28', 1000);
INSERT INTO public.games VALUES (252, 122, NULL, '2023-03-28', 421);
INSERT INTO public.games VALUES (253, 122, NULL, '2023-03-28', 219);
INSERT INTO public.games VALUES (254, 124, NULL, '2023-03-28', 184);
INSERT INTO public.games VALUES (255, 124, 585, '2023-03-28', 584);
INSERT INTO public.games VALUES (256, 125, NULL, '2023-03-28', 379);
INSERT INTO public.games VALUES (303, 138, 960, '2023-03-28', 959);
INSERT INTO public.games VALUES (257, 125, 446, '2023-03-28', 445);
INSERT INTO public.games VALUES (281, 130, 703, '2023-03-28', 702);
INSERT INTO public.games VALUES (258, 124, 479, '2023-03-28', 476);
INSERT INTO public.games VALUES (259, 124, NULL, '2023-03-28', 943);
INSERT INTO public.games VALUES (260, 124, NULL, '2023-03-28', 989);
INSERT INTO public.games VALUES (261, 126, NULL, '2023-03-28', 923);
INSERT INTO public.games VALUES (262, 126, 711, '2023-03-28', 710);
INSERT INTO public.games VALUES (263, 127, NULL, '2023-03-28', 924);
INSERT INTO public.games VALUES (264, 127, NULL, '2023-03-28', 93);
INSERT INTO public.games VALUES (265, 126, 348, '2023-03-28', 345);
INSERT INTO public.games VALUES (282, 132, 564, '2023-03-28', 563);
INSERT INTO public.games VALUES (266, 126, 525, '2023-03-28', 523);
INSERT INTO public.games VALUES (304, 138, NULL, '2023-03-28', 64);
INSERT INTO public.games VALUES (283, 132, 503, '2023-03-28', 502);
INSERT INTO public.games VALUES (284, 133, NULL, '2023-03-28', 86);
INSERT INTO public.games VALUES (285, 133, NULL, '2023-03-28', 717);
INSERT INTO public.games VALUES (286, 132, 147, '2023-03-28', 144);
INSERT INTO public.games VALUES (328, 144, 427, '2023-03-28', 424);
INSERT INTO public.games VALUES (287, 132, 801, '2023-03-28', 799);
INSERT INTO public.games VALUES (305, 139, 404, '2023-03-28', 403);
INSERT INTO public.games VALUES (288, 132, 849, '2023-03-28', 848);
INSERT INTO public.games VALUES (289, 134, NULL, '2023-03-28', 236);
INSERT INTO public.games VALUES (290, 134, 320, '2023-03-28', 319);
INSERT INTO public.games VALUES (319, 143, 638, '2023-03-28', 637);
INSERT INTO public.games VALUES (291, 135, 233, '2023-03-28', 232);
INSERT INTO public.games VALUES (306, 139, 930, '2023-03-28', 929);
INSERT INTO public.games VALUES (292, 135, 665, '2023-03-28', 664);
INSERT INTO public.games VALUES (293, 134, 520, '2023-03-28', 517);
INSERT INTO public.games VALUES (294, 134, 372, '2023-03-28', 370);
INSERT INTO public.games VALUES (307, 138, 66, '2023-03-28', 63);
INSERT INTO public.games VALUES (295, 134, 91, '2023-03-28', 90);
INSERT INTO public.games VALUES (296, 136, NULL, '2023-03-28', 434);
INSERT INTO public.games VALUES (297, 136, NULL, '2023-03-28', 943);
INSERT INTO public.games VALUES (298, 137, 126, '2023-03-28', 125);
INSERT INTO public.games VALUES (299, 137, 855, '2023-03-28', 854);
INSERT INTO public.games VALUES (320, 143, 147, '2023-03-28', 146);
INSERT INTO public.games VALUES (308, 138, 602, '2023-03-28', 600);
INSERT INTO public.games VALUES (309, 138, 836, '2023-03-28', 835);
INSERT INTO public.games VALUES (329, 144, NULL, '2023-03-28', 905);
INSERT INTO public.games VALUES (310, 140, 377, '2023-03-28', 376);
INSERT INTO public.games VALUES (321, 142, 305, '2023-03-28', 302);
INSERT INTO public.games VALUES (311, 140, 943, '2023-03-28', 942);
INSERT INTO public.games VALUES (312, 141, 567, '2023-03-28', 566);
INSERT INTO public.games VALUES (313, 141, 634, '2023-03-28', 633);
INSERT INTO public.games VALUES (322, 142, 617, '2023-03-28', 615);
INSERT INTO public.games VALUES (314, 140, 558, '2023-03-28', 555);
INSERT INTO public.games VALUES (315, 140, 42, '2023-03-28', 40);
INSERT INTO public.games VALUES (330, 144, NULL, '2023-03-28', 481);
INSERT INTO public.games VALUES (316, 140, 933, '2023-03-28', 932);
INSERT INTO public.games VALUES (323, 142, 842, '2023-03-28', 841);
INSERT INTO public.games VALUES (317, 142, 300, '2023-03-28', 299);
INSERT INTO public.games VALUES (324, 144, 898, '2023-03-28', 897);
INSERT INTO public.games VALUES (331, 146, NULL, '2023-03-28', 391);
INSERT INTO public.games VALUES (325, 144, 194, '2023-03-28', 193);
INSERT INTO public.games VALUES (326, 145, 948, '2023-03-28', 947);
INSERT INTO public.games VALUES (332, 146, NULL, '2023-03-28', 195);
INSERT INTO public.games VALUES (327, 145, 946, '2023-03-28', 945);
INSERT INTO public.games VALUES (339, 149, 695, '2023-03-28', 694);
INSERT INTO public.games VALUES (336, 146, 479, '2023-03-28', 477);
INSERT INTO public.games VALUES (333, 147, 955, '2023-03-28', 954);
INSERT INTO public.games VALUES (334, 147, NULL, '2023-03-28', 258);
INSERT INTO public.games VALUES (335, 146, 165, '2023-03-28', 162);
INSERT INTO public.games VALUES (337, 146, 111, '2023-03-28', 110);
INSERT INTO public.games VALUES (338, 148, NULL, '2023-03-28', 319);
INSERT INTO public.games VALUES (340, 149, NULL, '2023-03-28', 648);
INSERT INTO public.games VALUES (341, 148, NULL, '2023-03-28', 439);
INSERT INTO public.games VALUES (342, 148, 66, '2023-03-28', 64);
INSERT INTO public.games VALUES (343, 148, 497, '2023-03-28', 496);
INSERT INTO public.games VALUES (344, 150, 344, '2023-03-28', 343);
INSERT INTO public.games VALUES (345, 150, 749, '2023-03-28', 748);
INSERT INTO public.games VALUES (346, 151, 392, '2023-03-28', 391);
INSERT INTO public.games VALUES (347, 151, 414, '2023-03-28', 413);
INSERT INTO public.games VALUES (348, 150, 271, '2023-03-28', 268);
INSERT INTO public.games VALUES (349, 150, 615, '2023-03-28', 613);
INSERT INTO public.games VALUES (351, 152, NULL, '2023-03-28', 593);
INSERT INTO public.games VALUES (350, 150, 27, '2023-03-28', 26);
INSERT INTO public.games VALUES (352, 152, 838, '2023-03-28', 837);
INSERT INTO public.games VALUES (353, 153, 907, '2023-03-28', 906);
INSERT INTO public.games VALUES (354, 153, 722, '2023-03-28', 721);
INSERT INTO public.games VALUES (355, 152, 1, '2023-03-28', 1);
INSERT INTO public.games VALUES (356, 152, 461, '2023-03-28', 459);
INSERT INTO public.games VALUES (357, 152, 351, '2023-03-28', 350);
INSERT INTO public.games VALUES (358, 154, 227, '2023-03-28', 226);
INSERT INTO public.games VALUES (359, 154, 36, '2023-03-28', 35);
INSERT INTO public.games VALUES (360, 155, 748, '2023-03-28', 747);
INSERT INTO public.games VALUES (361, 155, NULL, '2023-03-28', 39);
INSERT INTO public.games VALUES (362, 154, NULL, '2023-03-28', 481);
INSERT INTO public.games VALUES (363, 154, 464, '2023-03-28', 462);
INSERT INTO public.games VALUES (364, 154, 14, '2023-03-28', 13);
INSERT INTO public.games VALUES (365, 156, NULL, '2023-03-28', 497);
INSERT INTO public.games VALUES (366, 156, NULL, '2023-03-28', 7);
INSERT INTO public.games VALUES (367, 157, 592, '2023-03-28', 591);
INSERT INTO public.games VALUES (368, 157, 238, '2023-03-28', 237);
INSERT INTO public.games VALUES (369, 156, 745, '2023-03-28', 742);
INSERT INTO public.games VALUES (370, 156, NULL, '2023-03-28', 732);
INSERT INTO public.games VALUES (371, 156, NULL, '2023-03-28', 223);
INSERT INTO public.games VALUES (372, 158, NULL, '2023-03-28', 24);
INSERT INTO public.games VALUES (373, 158, 20, '2023-03-28', 19);
INSERT INTO public.games VALUES (374, 159, 503, '2023-03-28', 502);
INSERT INTO public.games VALUES (375, 159, NULL, '2023-03-28', 68);
INSERT INTO public.games VALUES (376, 158, 55, '2023-03-28', 52);
INSERT INTO public.games VALUES (377, 158, 737, '2023-03-28', 735);
INSERT INTO public.games VALUES (378, 158, 713, '2023-03-28', 712);
INSERT INTO public.games VALUES (379, 160, 265, '2023-03-28', 264);
INSERT INTO public.games VALUES (380, 160, 915, '2023-03-28', 914);
INSERT INTO public.games VALUES (381, 161, 559, '2023-03-28', 558);
INSERT INTO public.games VALUES (382, 161, 877, '2023-03-28', 876);
INSERT INTO public.games VALUES (383, 160, 113, '2023-03-28', 110);
INSERT INTO public.games VALUES (384, 160, 158, '2023-03-28', 156);
INSERT INTO public.games VALUES (385, 160, NULL, '2023-03-28', 610);
INSERT INTO public.games VALUES (386, 162, NULL, '2023-03-28', 886);
INSERT INTO public.games VALUES (387, 162, 300, '2023-03-28', 299);
INSERT INTO public.games VALUES (388, 163, 956, '2023-03-28', 955);
INSERT INTO public.games VALUES (389, 163, 765, '2023-03-28', 764);
INSERT INTO public.games VALUES (390, 162, 558, '2023-03-28', 555);
INSERT INTO public.games VALUES (391, 162, 583, '2023-03-28', 581);
INSERT INTO public.games VALUES (392, 162, 201, '2023-03-28', 200);
INSERT INTO public.games VALUES (393, 164, 990, '2023-03-28', 989);
INSERT INTO public.games VALUES (394, 164, 472, '2023-03-28', 471);
INSERT INTO public.games VALUES (395, 165, 589, '2023-03-28', 588);
INSERT INTO public.games VALUES (396, 165, 50, '2023-03-28', 49);
INSERT INTO public.games VALUES (397, 164, 819, '2023-03-28', 816);
INSERT INTO public.games VALUES (398, 164, 215, '2023-03-28', 213);
INSERT INTO public.games VALUES (399, 164, 396, '2023-03-28', 395);


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
INSERT INTO public.users VALUES (76, 'user_1680014347954');
INSERT INTO public.users VALUES (77, 'user_1680014347953');
INSERT INTO public.users VALUES (78, 'user_1680018108756');
INSERT INTO public.users VALUES (79, 'user_1680018108755');
INSERT INTO public.users VALUES (80, 'user_1680018777296');
INSERT INTO public.users VALUES (81, 'user_1680018777295');
INSERT INTO public.users VALUES (82, 'user_1680018867871');
INSERT INTO public.users VALUES (83, 'user_1680018867870');
INSERT INTO public.users VALUES (84, 'user_1680019271214');
INSERT INTO public.users VALUES (85, 'user_1680019271213');
INSERT INTO public.users VALUES (86, 'user_1680023127813');
INSERT INTO public.users VALUES (87, 'user_1680023127812');
INSERT INTO public.users VALUES (88, 'user_1680025923968');
INSERT INTO public.users VALUES (89, 'user_1680025923967');
INSERT INTO public.users VALUES (90, 'user_1680026319529');
INSERT INTO public.users VALUES (91, 'user_1680026319528');
INSERT INTO public.users VALUES (92, 'user_1680027631375');
INSERT INTO public.users VALUES (93, 'user_1680027631374');
INSERT INTO public.users VALUES (94, 'user_1680027855496');
INSERT INTO public.users VALUES (95, 'user_1680027855495');
INSERT INTO public.users VALUES (96, 'Greg');
INSERT INTO public.users VALUES (97, 'Ant');
INSERT INTO public.users VALUES (98, 'user_1680028043485');
INSERT INTO public.users VALUES (99, 'user_1680028043484');
INSERT INTO public.users VALUES (100, 'user_1680028079639');
INSERT INTO public.users VALUES (101, 'user_1680028079638');
INSERT INTO public.users VALUES (102, 'Anth');
INSERT INTO public.users VALUES (103, 'user_1680028384300');
INSERT INTO public.users VALUES (104, 'user_1680028384299');
INSERT INTO public.users VALUES (105, 'user_1680028583722');
INSERT INTO public.users VALUES (106, 'user_1680028583721');
INSERT INTO public.users VALUES (107, 'Grant');
INSERT INTO public.users VALUES (108, 'user_1680028663309');
INSERT INTO public.users VALUES (109, 'user_1680028663308');
INSERT INTO public.users VALUES (110, 'user_1680028775057');
INSERT INTO public.users VALUES (111, 'user_1680028775056');
INSERT INTO public.users VALUES (112, 'user_1680028828157');
INSERT INTO public.users VALUES (113, 'user_1680028828156');
INSERT INTO public.users VALUES (114, 'user_1680028920457');
INSERT INTO public.users VALUES (115, 'user_1680028920456');
INSERT INTO public.users VALUES (116, 'user_1680035902891');
INSERT INTO public.users VALUES (117, 'user_1680035902890');
INSERT INTO public.users VALUES (118, 'user_1680035972333');
INSERT INTO public.users VALUES (119, 'user_1680035972332');
INSERT INTO public.users VALUES (120, 'user_1680035993120');
INSERT INTO public.users VALUES (121, 'user_1680035993119');
INSERT INTO public.users VALUES (122, 'user_1680036037176');
INSERT INTO public.users VALUES (123, 'user_1680036037175');
INSERT INTO public.users VALUES (124, 'user_1680036047718');
INSERT INTO public.users VALUES (125, 'user_1680036047717');
INSERT INTO public.users VALUES (126, 'user_1680036073992');
INSERT INTO public.users VALUES (127, 'user_1680036073991');
INSERT INTO public.users VALUES (128, 'user_1680036114694');
INSERT INTO public.users VALUES (129, 'user_1680036114693');
INSERT INTO public.users VALUES (130, 'user_1680036174974');
INSERT INTO public.users VALUES (131, 'user_1680036174973');
INSERT INTO public.users VALUES (132, 'user_1680040941665');
INSERT INTO public.users VALUES (133, 'user_1680040941664');
INSERT INTO public.users VALUES (134, 'user_1680040954617');
INSERT INTO public.users VALUES (135, 'user_1680040954616');
INSERT INTO public.users VALUES (136, 'user_1680046765002');
INSERT INTO public.users VALUES (137, 'user_1680046765001');
INSERT INTO public.users VALUES (138, 'user_1680046825645');
INSERT INTO public.users VALUES (139, 'user_1680046825644');
INSERT INTO public.users VALUES (140, 'user_1680046840759');
INSERT INTO public.users VALUES (141, 'user_1680046840758');
INSERT INTO public.users VALUES (142, 'user_1680046875477');
INSERT INTO public.users VALUES (143, 'user_1680046875476');
INSERT INTO public.users VALUES (144, 'user_1680046890205');
INSERT INTO public.users VALUES (145, 'user_1680046890204');
INSERT INTO public.users VALUES (146, 'user_1680046907880');
INSERT INTO public.users VALUES (147, 'user_1680046907879');
INSERT INTO public.users VALUES (148, 'user_1680046942387');
INSERT INTO public.users VALUES (149, 'user_1680046942386');
INSERT INTO public.users VALUES (150, 'user_1680047022764');
INSERT INTO public.users VALUES (151, 'user_1680047022763');
INSERT INTO public.users VALUES (152, 'user_1680047031388');
INSERT INTO public.users VALUES (153, 'user_1680047031387');
INSERT INTO public.users VALUES (154, 'user_1680047067201');
INSERT INTO public.users VALUES (155, 'user_1680047067200');
INSERT INTO public.users VALUES (156, 'user_1680047077701');
INSERT INTO public.users VALUES (157, 'user_1680047077700');
INSERT INTO public.users VALUES (158, 'user_1680047118782');
INSERT INTO public.users VALUES (159, 'user_1680047118781');
INSERT INTO public.users VALUES (160, 'user_1680047173182');
INSERT INTO public.users VALUES (161, 'user_1680047173181');
INSERT INTO public.users VALUES (162, 'user_1680047193390');
INSERT INTO public.users VALUES (163, 'user_1680047193389');
INSERT INTO public.users VALUES (164, 'user_1680047235450');
INSERT INTO public.users VALUES (165, 'user_1680047235449');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 399, true);


--
-- Name: username_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.username_user_id_seq', 165, true);


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

