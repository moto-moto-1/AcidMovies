-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: pdb21.awardspace.net
-- Generation Time: Dec 19, 2018 at 09:05 PM
-- Server version: 5.7.20-log
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2559374_movies`
--

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `ID` int(11) NOT NULL,
  `imdbid` text,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `image` text NOT NULL,
  `rating` text NOT NULL,
  `genre` text NOT NULL,
  `releaseyear` text NOT NULL,
  `profit` text NOT NULL,
  `director` text NOT NULL,
  `actors` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`ID`, `imdbid`, `title`, `description`, `image`, `rating`, `genre`, `releaseyear`, `profit`, `director`, `actors`) VALUES
(3100, '0035575', 'Yankee Doodle Dandy', 'The life of the renowned musical composer, playwright, actor, dancer, and singer George M. Cohan.', 'https://m.media-amazon.com/images/M/MV5BNDQ2MWJjNjUtYmVlNS00YjUzLWFkMDEtYzE2MjkxOTljMmI1XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.7', 'Biography, Drama, Musical', '1942', 'N/A', 'Michael Curtiz', 'James Cagney, Joan Leslie, Walter Huston, Richard Whorf'),
(3099, '0053125', 'North by Northwest', 'A hapless New York City advertising executive is mistaken for a government agent by a group of foreign spies, and is pursued across the country while he looks for a way to survive.', 'https://m.media-amazon.com/images/M/MV5BZDA3NDExMTUtMDlhOC00MmQ5LWExZGUtYmI1NGVlZWI4OWNiXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.3', 'Adventure, Mystery, Thriller', '1959', 'N/A', 'Alfred Hitchcock', 'Cary Grant, Eva Marie Saint, James Mason, Jessie Royce Landis'),
(3098, '0048545', 'Rebel Without a Cause', 'A rebellious young man with a troubled past comes to a new town, finding friends and enemies.', 'https://m.media-amazon.com/images/M/MV5BMjMwNWIwYzAtMWVhZi00YzQ2LTlmNGYtOTg3NDdkNTRjOWI2XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.8', 'Drama', '1955', 'N/A', 'Nicholas Ray', 'James Dean, Natalie Wood, Sal Mineo, Jim Backus'),
(3097, '0041959', 'The Third Man', 'Pulp novelist Holly Martins travels to shadowy, postwar Vienna, only to find himself investigating the mysterious death of an old friend, Harry Lime.', 'https://m.media-amazon.com/images/M/MV5BYjE2OTdhMWUtOGJlMy00ZDViLWIzZjgtYjZkZGZmMDZjYmEyXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.2', 'Film-Noir, Mystery, Thriller', '1949', 'N/A', 'Carol Reed', 'Joseph Cotten, Alida Valli, Orson Welles, Trevor Howard'),
(3096, '0047396', 'Rear Window', 'A wheelchair-bound photographer spies on his neighbors from his apartment window and becomes convinced one of them has committed murder.', 'https://m.media-amazon.com/images/M/MV5BNGUxYWM3M2MtMGM3Mi00ZmRiLWE0NGQtZjE5ODI2OTJhNTU0XkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '8.5', 'Mystery, Thriller', '1954', 'N/A', 'Alfred Hitchcock', 'James Stewart, Grace Kelly, Wendell Corey, Thelma Ritter'),
(3095, '0075314', 'Taxi Driver', 'A mentally unstable veteran works as a nighttime taxi driver in New York City, where the perceived decadence and sleaze fuels his urge for violent action by attempting to liberate a presidential campaign worker and an underage prostitute.', 'https://m.media-amazon.com/images/M/MV5BM2M1MmVhNDgtNmI0YS00ZDNmLTkyNjctNTJiYTQ2N2NmYzc2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.3', 'Crime, Drama', '1976', 'N/A', 'Martin Scorsese', 'Diahnne Abbott, Frank Adu, Victor Argo, Gino Ardito'),
(3094, '0032145', 'Wuthering Heights', 'A servant in the house of Wuthering Heights tells a traveler the unfortunate tale of lovers Cathy and Heathcliff.', 'https://m.media-amazon.com/images/M/MV5BMDAxZDkzNTktYzQyMi00YmRlLWFmYWQtY2Q4ZTQyMGFlMzNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.7', 'Drama, Romance', '1939', 'N/A', 'William Wyler', 'Merle Oberon, Laurence Olivier, David Niven, Flora Robson'),
(3093, '0033870', 'The Maltese Falcon', 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.', 'https://m.media-amazon.com/images/M/MV5BZjIwNGM1ZTUtOThjYS00NDdiLTk2ZDYtNGY5YjJkNzliM2JjL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SX300.jpg', '8.1', 'Film-Noir, Mystery', '1941', 'N/A', 'John Huston', 'Humphrey Bogart, Mary Astor, Gladys George, Peter Lorre'),
(3092, '0036775', 'Double Indemnity', 'An insurance representative lets himself be talked into a murder/insurance fraud scheme that arouses the suspicion of an insurance investigator.', 'https://m.media-amazon.com/images/M/MV5BOGZiZjFiMWItN2NkZC00MjEwLTk4YzEtNTMwOTlmOGM3ZGJkXkEyXkFqcGdeQXVyMzAxNjg3MjQ@._V1_SX300.jpg', '8.3', 'Crime, Drama, Film-Noir, Mystery, Thriller', '1944', 'N/A', 'Billy Wilder', 'Fred MacMurray, Barbara Stanwyck, Edward G. Robinson, Porter Hall'),
(3091, '0026752', 'Mutiny on the Bounty', 'A tyrannical ship captain decides to exact revenge on his abused crew after they form a mutiny against him, but the sailor he targets had no hand in it.', 'https://m.media-amazon.com/images/M/MV5BNzJkM2ZiZjktYjA0MS00OGQxLWI5NWEtNzQ5M2U4MjZhMzc0XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.8', 'Adventure, Biography, Drama, History, Romance', '1935', 'N/A', 'Frank Lloyd', 'Charles Laughton, Clark Gable, Franchot Tone, Herbert Mundin'),
(3090, '0031971', 'Stagecoach', 'A group of people traveling on a stagecoach find their journey complicated by the threat of Geronimo and learn something about each other in the process.', 'https://m.media-amazon.com/images/M/MV5BOGQ4NDUyNWQtZTEyOC00OTMzLWFhYjAtNDNmYmQ2MWQyMTRmXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '7.9', 'Adventure, Western', '1939', 'N/A', 'John Ford', 'Claire Trevor, John Wayne, Andy Devine, John Carradine'),
(3089, '0043265', 'The African Queen', 'In Africa during World War I, a gin-swilling riverboat captain is persuaded by a strait-laced missionary to use his boat to attack an enemy warship.', 'https://m.media-amazon.com/images/M/MV5BOTg0NjY1NTEyMF5BMl5BanBnXkFtZTgwNjUwMTY3MjE@._V1_SX300.jpg', '7.9', 'Adventure, Drama, Romance, War', '1951', 'N/A', 'John Huston', 'Humphrey Bogart, Katharine Hepburn, Robert Morley, Peter Bull'),
(3088, '0119217', 'Good Will Hunting', 'Will Hunting, a janitor at M.I.T., has a gift for mathematics, but needs help from a psychologist to find direction in his life.', 'https://m.media-amazon.com/images/M/MV5BOTI0MzcxMTYtZDVkMy00NjY1LTgyMTYtZmUxN2M3NmQ2NWJhXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '8.3', 'Drama, Romance', '1997', 'N/A', 'Gus Van Sant', 'Matt Damon, Ben Affleck, Stellan Skarsg?�rd, John Mighton'),
(3087, '0069704', 'American Graffiti', 'A couple of high school grads spend one final night cruising the strip with their buddies before they go off to college.', 'https://m.media-amazon.com/images/M/MV5BMjI5NjM5MjIyNF5BMl5BanBnXkFtZTgwNjg2MTUxMDE@._V1_SX300.jpg', '7.5', 'Comedy, Drama', '1973', 'N/A', 'George Lucas', 'Richard Dreyfuss, Ron Howard, Paul Le Mat, Charles Martin Smith'),
(3086, '0061722', 'The Graduate', 'A disillusioned college graduate finds himself torn between his older lover and her daughter.', 'https://m.media-amazon.com/images/M/MV5BMTQ0ODc4MDk4Nl5BMl5BanBnXkFtZTcwMTEzNzgzNA@@._V1_SX300.jpg', '8.0', 'Comedy, Drama, Romance', '1967', 'N/A', 'Mike Nichols', 'Anne Bancroft, Dustin Hoffman, Katharine Ross, William Daniels'),
(3085, '0073440', 'Nashville', 'Over the course of a few hectic days, numerous interrelated people prepare for a political convention as secrets and lies are surfaced and revealed.', 'https://m.media-amazon.com/images/M/MV5BMDY0MzE3YWQtZTAzMS00ZmRlLWE3NzYtMjk0NDlkMmE4N2U2XkEyXkFqcGdeQXVyMTAwMzUyOTc@._V1_SX300.jpg', '7.8', 'Comedy, Drama, Music', '1975', 'N/A', 'Robert Altman', 'David Arkin, Barbara Baxley, Ned Beatty, Karen Black'),
(3084, '0075860', 'Close Encounters of the Third Kind', 'Roy Neary, an electric lineman, watches how his quiet and ordinary daily life turns upside down after a close encounter with a UFO.', 'https://m.media-amazon.com/images/M/MV5BMjM1NjE5NjQxN15BMl5BanBnXkFtZTgwMjYzMzQxMDE@._V1_SX300.jpg', '7.7', 'Drama, Sci-Fi', '1977', 'N/A', 'Steven Spielberg', 'Richard Dreyfuss, Fran?�ois Truffaut, Teri Garr, Melinda Dillon'),
(3083, '0120689', 'The Green Mile', 'The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.', 'https://m.media-amazon.com/images/M/MV5BMTUxMzQyNjA5MF5BMl5BanBnXkFtZTYwOTU2NTY3._V1_SX300.jpg', '8.5', 'Crime, Drama, Fantasy, Mystery', '1999', 'N/A', 'Frank Darabont', 'Tom Hanks, David Morse, Bonnie Hunt, Michael Clarke Duncan'),
(3082, '0032551', 'The Grapes of Wrath', 'A poor Midwest family is forced off their land. They travel to California, suffering the misfortunes of the homeless in the Great Depression.', 'https://m.media-amazon.com/images/M/MV5BNzJiOGI2MjctYjUyMS00ZjkzLWE2ZmUtOTg4NTZkOTNhZDc1L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.1', 'Drama, History', '1940', 'N/A', 'John Ford', 'Henry Fonda, Jane Darwell, John Carradine, Charley Grapewin'),
(3081, '0046303', 'Shane', 'A weary gunfighter attempts to settle down with a homestead family, but a smoldering settler/rancher conflict forces him to act.', 'https://m.media-amazon.com/images/M/MV5BYmZjM2RkZTAtMGIyMi00MTRlLTljY2ItOTRjOWQyODFiNjE3XkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.7', 'Drama, Western', '1953', 'N/A', 'George Stevens', 'Alan Ladd, Jean Arthur, Van Heflin, Brandon De Wilde'),
(3080, '0049261', 'Giant', 'Sprawling epic covering the life of a Texas cattle rancher and his family and associates.', 'https://m.media-amazon.com/images/M/MV5BYWQ3ZmZhMmQtODQyMS00Y2Q0LThlOTAtM2NiMDMyNDdlYmQ0L2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.7', 'Drama, Western', '1956', 'N/A', 'George Stevens', 'Elizabeth Taylor, Rock Hudson, James Dean, Carroll Baker'),
(3079, '0075686', 'Annie Hall', 'Neurotic New York comedian Alvy Singer falls in love with the ditzy Annie Hall.', 'https://m.media-amazon.com/images/M/MV5BZDg1OGQ4YzgtM2Y2NS00NjA3LWFjYTctMDRlMDI3NWE1OTUyXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg', '8.0', 'Comedy, Romance', '1977', 'N/A', 'Woody Allen', 'Woody Allen, Diane Keaton, Tony Roberts, Carol Kane'),
(3078, '0064665', 'Midnight Cowboy', 'A naive hustler travels from Texas to New York City to seek personal fortune, finding a new friend in the process.', 'https://m.media-amazon.com/images/M/MV5BNTgwZmIzMmYtZjE3Yy00NzgzLTgxNmUtNjlmZDlkMzlhOTJkXkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg', '7.9', 'Drama', '1969', 'N/A', 'John Schlesinger', 'Dustin Hoffman, Jon Voight, Sylvia Miles, John McGiver'),
(3077, '0043924', 'A Place in the Sun', 'A poor boy gets a job working for his rich uncle and ends up falling in love with two women.', 'https://m.media-amazon.com/images/M/MV5BMmNjMjE2ZDMtODQzYS00ZDc2LTk0ODgtNjI1NTNhZWI5MmE0XkEyXkFqcGdeQXVyNjUwNzk3NDc@._V1_SX300.jpg', '7.8', 'Drama, Romance', '1951', 'N/A', 'George Stevens', 'Montgomery Clift, Elizabeth Taylor, Shelley Winters, Anne Revere'),
(3076, '0025316', 'It Happened One Night', 'A spoiled heiress running away from her family is helped by a man who is actually a reporter in need of a story.', 'https://m.media-amazon.com/images/M/MV5BZmViYmM5OTYtNGQ4Ny00YjQyLThiNjEtYTE4MGZhZTNmZjcyL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.1', 'Comedy, Romance', '1934', 'N/A', 'Frank Capra', 'Clark Gable, Claudette Colbert, Walter Connolly, Roscoe Karns'),
(3075, '0021749', 'City Lights', 'With the aid of a wealthy erratic tippler, a dewy-eyed tramp who has fallen in love with a sightless flower girl accumulates money to be able to help her medically.', 'https://m.media-amazon.com/images/M/MV5BY2I4MmM1N2EtM2YzOS00OWUzLTkzYzctNDc5NDg2N2IyODJmXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.5', 'Comedy, Drama, Romance', '1931', 'N/A', 'Charles Chaplin', 'Virginia Cherrill, Florence Lee, Harry Myers, Al Ernest Garcia'),
(3074, '0067116', 'The French Connection', 'A pair of NYC cops in the Narcotics Bureau stumble onto a drug smuggling job with a French connection.', 'https://m.media-amazon.com/images/M/MV5BOTZhY2E3NmItMGIwNi00OTA2LThkYmEtODFiZTM0NGI0ZWU5XkEyXkFqcGdeQXVyNTc1NTQxODI@._V1_SX300.jpg', '7.8', 'Action, Crime, Drama, Thriller', '1971', 'N/A', 'William Friedkin', 'Gene Hackman, Fernando Rey, Roy Scheider, Tony Lo Bianco'),
(3073, '0061418', 'Bonnie and Clyde', 'Bonnie Parker, a bored waitress falls in love with an ex-con named Clyde Barrow and together they start a violent crime spree through the country, stealing cars and robbing banks.', 'https://m.media-amazon.com/images/M/MV5BOTViZmMwOGEtYzc4Yy00ZGQ1LWFkZDQtMDljNGZlMjAxMjhiXkEyXkFqcGdeQXVyNzM0MTUwNTY@._V1_SX300.jpg', '7.9', 'Action, Biography, Crime, Drama', '1967', 'N/A', 'Arthur Penn', 'Warren Beatty, Faye Dunaway, Michael J. Pollard, Gene Hackman'),
(3072, '0020629', 'All Quiet on the Western Front', 'A young soldier faces profound disillusionment in the soul-destroying horror of World War I.', 'https://m.media-amazon.com/images/M/MV5BMzg2MWQ4MDEtOGZlNi00MTg0LWIwMjQtYWY5NTQwYmUzMWNmXkEyXkFqcGdeQXVyMzg2MzE2OTE@._V1_SX300.jpg', '8.1', 'Drama, War', '1930', 'N/A', 'Lewis Milestone', 'Louis Wolheim, Lew Ayres, John Wray, Arnold Lucy'),
(3071, '0077416', 'The Deer Hunter', 'An in-depth examination of the ways in which the U.S. Vietnam War impacts and disrupts the lives of people in a small industrial town in Pennsylvania.', 'https://m.media-amazon.com/images/M/MV5BNDhmNTA0ZDMtYjhkNS00NzEzLWIzYTItOGNkMTVmYjE2YmI3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.1', 'Drama, War', '1978', 'N/A', 'Michael Cimino', 'Robert De Niro, John Cazale, John Savage, Christopher Walken'),
(3070, '0099685', 'Goodfellas', 'The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.', 'https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.7', 'Crime, Drama', '1990', 'N/A', 'Martin Scorsese', 'Robert De Niro, Ray Liotta, Joe Pesci, Lorraine Bracco'),
(3069, '0253474', 'The Pianist', 'A Polish Jewish musician struggles to survive the destruction of the Warsaw ghetto of World War II.', 'https://m.media-amazon.com/images/M/MV5BOWRiZDIxZjktMTA1NC00MDQ2LWEzMjUtMTliZmY3NjQ3ODJiXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.5', 'Biography, Drama, Music, War', '2002', '$32,519,322', 'Roman Polanski', 'Adrien Brody, Emilia Fox, Michal Zebrowski, Ed Stoppard'),
(3068, '0070047', 'The Exorcist', 'When a teenage girl is possessed by a mysterious entity, her mother seeks the help of two priests to save her daughter.', 'https://m.media-amazon.com/images/M/MV5BYjhmMGMxZDYtMTkyNy00YWVmLTgyYmUtYTU3ZjcwNTBjN2I1XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.0', 'Horror', '1973', 'N/A', 'William Friedkin', 'Ellen Burstyn, Max von Sydow, Lee J. Cobb, Kitty Winn'),
(3067, '0107290', 'Jurassic Park', 'During a preview tour, a theme park suffers a major power breakdown that allows its cloned dinosaur exhibits to run amok.', 'https://m.media-amazon.com/images/M/MV5BMjM2MDgxMDg0Nl5BMl5BanBnXkFtZTgwNTM2OTM5NDE@._V1_SX300.jpg', '8.1', 'Adventure, Sci-Fi, Thriller', '1993', '$45,299,680', 'Steven Spielberg', 'Sam Neill, Laura Dern, Jeff Goldblum, Richard Attenborough'),
(3066, '0099348', 'Dances with Wolves', 'Lieutenant John Dunbar, assigned to a remote western Civil War outpost, befriends wolves and Indians, making him an intolerable aberration in the military.', 'https://m.media-amazon.com/images/M/MV5BMTY3OTI5NDczN15BMl5BanBnXkFtZTcwNDA0NDY3Mw@@._V1_SX300.jpg', '8.0', 'Adventure, Drama, Western', '1990', 'N/A', 'Kevin Costner', 'Kevin Costner, Mary McDonnell, Graham Greene, Rodney A. Grant'),
(3065, '0112573', 'Braveheart', 'When his secret bride is executed for assaulting an English soldier who tried to rape her, Sir William Wallace begins a revolt against King Edward I of England.', 'https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.4', 'Biography, Drama, History, War', '1995', 'N/A', 'Mel Gibson', 'James Robinson, Sean Lawlor, Sandy Nelson, James Cosmo'),
(3064, '0044706', 'High Noon', 'A town Marshal, despite the disagreements of his newlywed bride and the townspeople around him, must face a gang of deadly killers alone at high noon when the gang leader, an outlaw he sent up years ago, arrives on the noon train.', 'https://m.media-amazon.com/images/M/MV5BOWIzZGUxZmItOThkMS00Y2QxLTg0MTYtMDdhMjRlNTNlYTI3L2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.0', 'Action, Drama, Thriller, Western', '1952', 'N/A', 'Fred Zinnemann', 'Gary Cooper, Thomas Mitchell, Lloyd Bridges, Katy Jurado'),
(3063, '0091763', 'Platoon', 'A young soldier in Vietnam faces a moral crisis when confronted with the horrors of war and the duality of man.', 'https://m.media-amazon.com/images/M/MV5BM2Y1NTQyNWYtNDViNy00ZWRhLTk3MTMtOTI3ZGQ5MDFiNWM4XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.1', 'Drama, War', '1986', 'N/A', 'Oliver Stone', 'Tom Berenger, Keith David, Willem Dafoe, Forest Whitaker'),
(3062, '0053604', 'The Apartment', 'A man tries to rise in his company by letting its executives use his apartment for trysts, but complications and a romance of his own ensue.', 'https://m.media-amazon.com/images/M/MV5BNzkwODFjNzItMmMwNi00MTU5LWE2MzktM2M4ZDczZGM1MmViXkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_SX300.jpg', '8.3', 'Comedy, Drama, Romance', '1960', 'N/A', 'Billy Wilder', 'Jack Lemmon, Shirley MacLaine, Fred MacMurray, Ray Walston'),
(3061, '0060196', 'The Good, the Bad and the Ugly', 'A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.', 'https://m.media-amazon.com/images/M/MV5BOTQ5NDI3MTI4MF5BMl5BanBnXkFtZTgwNDQ4ODE5MDE@._V1_SX300.jpg', '8.9', 'Western', '1966', 'N/A', 'Sergio Leone', 'Eli Wallach, Clint Eastwood, Lee Van Cleef, Aldo Giuffr?�'),
(3060, '0040897', 'The Treasure of the Sierra Madre', 'Fred Dobbs and Bob Curtin, two Americans searching for work in Mexico, convince an old prospector to help them mine for gold in the Sierra Madre Mountains.', 'https://m.media-amazon.com/images/M/MV5BOTJlZWMxYzEtMjlkMS00ODE0LThlM2ItMDI3NGQ2YjhmMzkxXkEyXkFqcGdeQXVyMDI2NDg0NQ@@._V1_SX300.jpg', '8.3', 'Adventure, Drama, Western', '1948', 'N/A', 'John Huston', 'Humphrey Bogart, Walter Huston, Tim Holt, Bruce Bennett'),
(3059, '0064115', 'Butch Cassidy and the Sundance Kid', 'Wyoming, early 1900s. Butch Cassidy and The Sundance Kid are the leaders of a band of outlaws. After a train robbery goes wrong they find themselves on the run with a posse hard on their heels. Their solution - escape to Bolivia.', 'https://m.media-amazon.com/images/M/MV5BMTkyMTM2NDk5Nl5BMl5BanBnXkFtZTgwNzY1NzEyMDE@._V1_SX300.jpg', '8.1', 'Biography, Crime, Drama, Western', '1969', 'N/A', 'George Roy Hill', 'Paul Newman, Robert Redford, Katharine Ross, Strother Martin'),
(3058, '0066206', 'Patton', 'The World War II phase of the career of the controversial American general, George S. Patton.', 'https://m.media-amazon.com/images/M/MV5BMmNhZmJhMmYtNjlkMC00MjhjLTk1NzMtMTNlMzYzNjZlMjNiXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '8.0', 'Biography, Drama, War', '1970', 'N/A', 'Franklin J. Schaffner', 'George C. Scott, Karl Malden, Stephen Young, Michael Strong'),
(3057, '0049730', 'The Searchers', 'An American Civil War veteran embarks on a journey to rescue his niece from the Comanches.', 'https://m.media-amazon.com/images/M/MV5BYWQ3YWJiMDEtMDBhNS00YjY1LTkzNmEtY2U4Njg4MjQ3YWE3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.0', 'Adventure, Drama, Western', '1956', 'N/A', 'John Ford', 'John Wayne, Jeffrey Hunter, Vera Miles, Ward Bond'),
(3056, '0058385', 'My Fair Lady', 'A snobbish phonetics professor agrees to a wager that he can take a flower girl and make her presentable in high society.', 'https://m.media-amazon.com/images/M/MV5BNGM0ZTU3NmItZmRmMy00YWNjLWEzMWItYzg3MzcwZmM5NjdiXkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg', '7.9', 'Drama, Family, Musical, Romance', '1964', 'N/A', 'George Cukor', 'Audrey Hepburn, Rex Harrison, Stanley Holloway, Wilfrid Hyde-White'),
(3055, '0036868', 'The Best Years of Our Lives', 'Three World War II veterans return home to small-town America to discover that they and their families have been irreparably changed.', 'https://m.media-amazon.com/images/M/MV5BY2RmNTRjYzctODI4Ni00MzQyLWEyNTAtNjU0N2JkMTNhNjJkXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.1', 'Drama, Romance, War', '1946', 'N/A', 'William Wyler', 'Myrna Loy, Fredric March, Dana Andrews, Teresa Wright'),
(3054, '0043278', 'An American in Paris', 'Three friends struggle to find work in Paris. Things become more complicated when two of them fall in love with the same woman.', 'https://m.media-amazon.com/images/M/MV5BMzFkNGM0YTUtZjY5Ny00NzBkLWE1NTAtYzUxNjUyZmJlODMwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '7.2', 'Drama, Musical, Romance', '1951', 'N/A', 'Vincente Minnelli', 'Gene Kelly, Leslie Caron, Oscar Levant, Georges Gu?�tary'),
(3053, '0056592', 'To Kill a Mockingbird', 'Atticus Finch, a lawyer in the Depression-era South, defends a black man against an undeserved rape charge, and his children against prejudice.', 'https://m.media-amazon.com/images/M/MV5BNmVmYzcwNzMtMWM1NS00MWIyLThlMDEtYzUwZDgzODE1NmE2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.3', 'Crime, Drama', '1962', 'N/A', 'Robert Mulligan', 'Gregory Peck, John Megna, Frank Overton, Rosemary Murphy'),
(3052, '0044081', 'A Streetcar Named Desire', 'Disturbed Blanche DuBois moves in with her sister in New Orleans and is tormented by her brutish brother-in-law while her reality crumbles around her.', 'https://m.media-amazon.com/images/M/MV5BNzk2M2Y3MzYtNGMzMi00Y2FjLTkwODQtNmExYWU3ZWY3NzExXkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '8.0', 'Drama', '1951', 'N/A', 'Elia Kazan', 'Vivien Leigh, Marlon Brando, Kim Hunter, Karl Malden'),
(3051, '0075148', 'Rocky', 'A small-time boxer gets a supremely rare chance to fight a heavy-weight champion in a bout in which he strives to go the distance for his self-respect.', 'https://m.media-amazon.com/images/M/MV5BMTY5MDMzODUyOF5BMl5BanBnXkFtZTcwMTQ3NTMyNA@@._V1_SX300.jpg', '8.1', 'Drama, Sport', '1976', 'N/A', 'John G. Avildsen', 'Sylvester Stallone, Talia Shire, Burt Young, Carl Weathers'),
(3050, '0105695', 'Unforgiven', 'Retired Old West gunslinger William Munny reluctantly takes on one last job, with the help of his old partner and a young man.', 'https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.2', 'Drama, Western', '1992', 'N/A', 'Clint Eastwood', 'Clint Eastwood, Gene Hackman, Morgan Freeman, Richard Harris'),
(3049, '0120815', 'Saving Private Ryan', 'Following the Normandy Landings, a group of U.S. soldiers go behind enemy lines to retrieve a paratrooper whose brothers have been killed in action.', 'https://m.media-amazon.com/images/M/MV5BZjhkMDM4MWItZTVjOC00ZDRhLThmYTAtM2I5NzBmNmNlMzI1XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg', '8.6', 'Drama, War', '1998', 'N/A', 'Steven Spielberg', 'Tom Hanks, Tom Sizemore, Edward Burns, Barry Pepper'),
(3048, '0120338', 'Titanic', 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.', 'https://m.media-amazon.com/images/M/MV5BMDdmZGU3NDQtY2E5My00ZTliLWIzOTUtMTY4ZGI1YjdiNjk3XkEyXkFqcGdeQXVyNTA4NzY1MzY@._V1_SX300.jpg', '7.8', 'Drama, Romance', '1997', 'N/A', 'James Cameron', 'Leonardo DiCaprio, Kate Winslet, Billy Zane, Kathy Bates'),
(3047, '0172495', 'Gladiator', 'A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.', 'https://m.media-amazon.com/images/M/MV5BMDliMmNhNDEtODUyOS00MjNlLTgxODEtN2U3NzIxMGVkZTA1L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.5', 'Action, Adventure, Drama', '2000', 'N/A', 'Ridley Scott', 'Russell Crowe, Joaquin Phoenix, Connie Nielsen, Oliver Reed'),
(3046, '0078788', 'Apocalypse Now', 'During the Vietnam War, Captain Willard is sent on a dangerous mission into Cambodia to assassinate a renegade Colonel who has set himself up as a god among a local tribe.', 'https://m.media-amazon.com/images/M/MV5BZTNkZmU0ZWQtZjQzMy00YTNmLWFmN2MtZGNkMmU1OThmMGYwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.5', 'Drama, War', '1979', 'N/A', 'Francis Ford Coppola', 'Marlon Brando, Martin Sheen, Robert Duvall, Frederic Forrest'),
(3045, '0052618', 'Ben-Hur', 'When a Jewish prince is betrayed and sent into slavery by a Roman friend, he regains his freedom and comes back for revenge.', 'https://m.media-amazon.com/images/M/MV5BNjgxY2JiZDYtZmMwOC00ZmJjLWJmODUtMTNmNWNmYWI5ODkwL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.1', 'Adventure, Drama, History', '1959', 'N/A', 'William Wyler', 'Charlton Heston, Jack Hawkins, Haya Harareet, Stephen Boyd'),
(3044, '0053291', 'Some Like It Hot', 'When two male musicians witness a mob hit, they flee the state in an all-female band disguised as women, but further complications set in.', 'https://m.media-amazon.com/images/M/MV5BNzAyOGIxYjAtMGY2NC00ZTgyLWIwMWEtYzY0OWQ4NDFjOTc5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.2', 'Comedy, Romance', '1959', 'N/A', 'Billy Wilder', 'Marilyn Monroe, Tony Curtis, Jack Lemmon, George Raft'),
(3043, '0057012', 'Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb', 'An insane general triggers a path to nuclear holocaust that a War Room full of politicians and generals frantically tries to stop.', 'https://m.media-amazon.com/images/M/MV5BZWI3ZTMxNjctMjdlNS00NmUwLWFiM2YtZDUyY2I3N2MxYTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.4', 'Comedy', '1964', 'N/A', 'Stanley Kubrick', 'Peter Sellers, George C. Scott, Sterling Hayden, Keenan Wynn'),
(3042, '0071315', 'Chinatown', 'A private detective hired to expose an adulterer finds himself caught up in a web of deceit, corruption, and murder.', 'https://m.media-amazon.com/images/M/MV5BOGMwYmY5ZmEtMzY1Yi00OWJiLTk1Y2MtMzI2MjBhYmZkNTQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.2', 'Drama, Mystery, Thriller', '1974', 'N/A', 'Roman Polanski', 'Jack Nicholson, Faye Dunaway, John Huston, Perry Lopez'),
(3041, '0102926', 'The Silence of the Lambs', 'A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.', 'https://m.media-amazon.com/images/M/MV5BNjNhZTk0ZmEtNjJhMi00YzFlLWE1MmEtYzM1M2ZmMGMwMTU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', '8.6', 'Crime, Drama, Thriller', '1991', 'N/A', 'Jonathan Demme', 'Jodie Foster, Lawrence A. Bonney, Kasi Lemmons, Lawrence T. Wrentz'),
(3040, '0083866', 'E.T. the Extra-Terrestrial', 'A troubled child summons the courage to help a friendly alien escape Earth and return to his home world.', 'https://m.media-amazon.com/images/M/MV5BMTQ2ODFlMDAtNzdhOC00ZDYzLWE3YTMtNDU4ZGFmZmJmYTczXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '7.9', 'Family, Sci-Fi', '1982', 'N/A', 'Steven Spielberg', 'Dee Wallace, Henry Thomas, Peter Coyote, Robert MacNaughton'),
(3039, '0055614', 'West Side Story', 'Two youngsters from rival New York City gangs fall in love, but tensions between their respective friends build toward tragedy.', 'https://m.media-amazon.com/images/M/MV5BMTM0NDAxOTI5MF5BMl5BanBnXkFtZTcwNjI4Mjg3NA@@._V1_SX300.jpg', '7.6', 'Crime, Drama, Musical, Romance', '1961', 'N/A', 'Jerome Robbins, Robert Wise', 'Natalie Wood, Richard Beymer, Russ Tamblyn, Rita Moreno'),
(3038, '0050083', '12 Angry Men', 'A jury holdout attempts to prevent a miscarriage of justice by forcing his colleagues to reconsider the evidence.', 'https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.9', 'Crime, Drama', '1957', 'N/A', 'Sidney Lumet', 'Martin Balsam, John Fiedler, Lee J. Cobb, E.G. Marshall'),
(3037, '0059742', 'The Sound of Music', 'A woman leaves an Austrian convent to become a governess to the children of a Naval officer widower.', 'https://m.media-amazon.com/images/M/MV5BODIxNjhkYjEtYzUyMi00YTNjLWE1YjktNjAyY2I2MWNkNmNmL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '8.0', 'Biography, Drama, Family, Musical, Romance', '1965', 'N/A', 'Robert Wise', 'Julie Andrews, Christopher Plummer, Eleanor Parker, Richard Haydn'),
(3036, '0109830', 'Forrest Gump', 'The presidencies of Kennedy and Johnson, Vietnam, Watergate, and other history unfold through the perspective of an Alabama man with an IQ of 75.', 'https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', '8.8', 'Drama, Romance', '1994', '$330,000,000', 'Robert Zemeckis', 'Tom Hanks, Rebecca Williams, Sally Field, Michael Conner Humphreys'),
(3035, '0047296', 'On the Waterfront', 'An ex-prize fighter turned longshoreman struggles to stand up to his corrupt union bosses.', 'https://m.media-amazon.com/images/M/MV5BY2I0MWFiZDMtNWQyYy00Njk5LTk3MDktZjZjNTNmZmVkYjkxXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.2', 'Crime, Drama, Thriller', '1954', 'N/A', 'Elia Kazan', 'Marlon Brando, Karl Malden, Lee J. Cobb, Rod Steiger'),
(3034, '0071562', 'The Godfather: Part II', 'The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.', 'https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '9.0', 'Crime, Drama', '1974', 'N/A', 'Francis Ford Coppola', 'Al Pacino, Robert Duvall, Diane Keaton, Robert De Niro'),
(3033, '0052357', 'Vertigo', 'A former police detective juggles wrestling with his personal demons and becoming obsessed with a hauntingly beautiful woman.', 'https://m.media-amazon.com/images/M/MV5BYTE4ODEwZDUtNDFjOC00NjAxLWEzYTQtYTI1NGVmZmFlNjdiL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_SX300.jpg', '8.3', 'Mystery, Romance, Thriller', '1958', 'N/A', 'Alfred Hitchcock', 'James Stewart, Kim Novak, Barbara Bel Geddes, Tom Helmore'),
(3031, '0033467', 'Citizen Kane', 'Following the death of a publishing tycoon, news reporters scramble to discover the meaning of his final utterance.', 'https://m.media-amazon.com/images/M/MV5BYjBiOTYxZWItMzdiZi00NjlkLWIzZTYtYmFhZjhiMTljOTdkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '8.4', 'Drama, Mystery', '1941', 'N/A', 'Orson Welles', 'Joseph Cotten, Dorothy Comingore, Agnes Moorehead, Ruth Warrick'),
(3032, '0032138', 'The Wizard of Oz', 'Dorothy Gale is swept away from a farm in Kansas to a magical land of Oz in a tornado and embarks on a quest with her new friends to see the Wizard who can help her return home to Kansas and help her friends as well.', 'https://m.media-amazon.com/images/M/MV5BNjUyMTc4MDExMV5BMl5BanBnXkFtZTgwNDg0NDIwMjE@._V1_SX300.jpg', '8.0', 'Adventure, Family, Fantasy, Musical', '1939', '$3,840,702', 'Victor Fleming, George Cukor, Mervyn LeRoy, Norman Taurog, King Vidor', 'Judy Garland, Frank Morgan, Ray Bolger, Bert Lahr'),
(3030, '0034583', 'Casablanca', 'A cynical nightclub owner protects an old flame and her husband from Nazis in Morocco.', 'https://m.media-amazon.com/images/M/MV5BY2IzZGY2YmEtYzljNS00NTM5LTgwMzUtMzM1NjQ4NGI0OTk0XkEyXkFqcGdeQXVyNDYyMDk5MTU@._V1_SX300.jpg', '8.5', 'Drama, Romance, War', '1942', 'N/A', 'Michael Curtiz', 'Humphrey Bogart, Ingrid Bergman, Paul Henreid, Claude Rains'),
(3029, '0081398', 'Raging Bull', 'The life of boxer Jake LaMotta, as the violence and temper that leads him to the top in the ring destroys his life outside of it.', 'https://m.media-amazon.com/images/M/MV5BYjRmODkzNDItMTNhNi00YjJlLTg0ZjAtODlhZTM0YzgzYThlXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_SX300.jpg', '8.2', 'Biography, Drama, Sport', '1980', 'N/A', 'Martin Scorsese', 'Robert De Niro, Cathy Moriarty, Joe Pesci, Frank Vincent'),
(3027, '0068646', 'The Godfather', 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.', 'https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', '9.2', 'Crime, Drama', '1972', 'N/A', 'Francis Ford Coppola', 'Marlon Brando, Al Pacino, James Caan, Richard S. Castellano'),
(3028, '0111161', 'The Shawshank Redemption', 'Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.', 'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg', '9.3', 'Drama', '1994', 'N/A', 'Frank Darabont', 'Tim Robbins, Morgan Freeman, Bob Gunton, William Sadler'),
(3026, '1853728', 'Django Unchained', 'With the help of a German bounty hunter, a freed slave sets out to rescue his wife from a brutal Mississippi plantation owner.', 'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_SX300.jpg', '8.4', 'Drama, Western', '2012', '$162,804,648', 'Quentin Tarantino', 'Jamie Foxx, Christoph Waltz, Leonardo DiCaprio, Kerry Washington');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;