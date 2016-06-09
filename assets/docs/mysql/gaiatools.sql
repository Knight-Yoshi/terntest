-- phpMyAdmin SQL Dump
-- version 4.3.9
-- http://www.phpmyadmin.net
--
-- Host: 192.168.1.213
-- Generation Time: May 11, 2015 at 08:23 PM
-- Server version: 5.6.22
-- PHP Version: 5.5.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gaiatools`
--

--
-- Dumping data for table `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('022d7f1fa223a16e16208e4dddc7f6f7fa5d233f', '192.168.1.165', 1431297737, ''),
('100542df90ff1c499095f1d596618c88494d9037', '::1', 1431190823, ''),
('3bb4699ce21e6da4baafc49efa8d539a61fda6ba', '192.168.1.165', 1431275822, 0x72656469726563747c4e3b),
('47790f06d8ad538deb28fe8f162859b3b5af9f7e', '::1', 1431380221, 0x69647c733a323a223537223b757365726e616d657c733a363a2264617272696e223b656d61696c7c733a373a226440642e636f6d223b617574686c6576656c7c733a353a223332373638223b6176617461727c733a33393a222f696d616765732f676c6f62616c2f64656661756c745f6176617461725f34367834362e676966223b6c6f67676564696e7c623a313b),
('4f1253b05fd399d14e686e8525928f29ba8de7ee', '::1', 1431242252, ''),
('5de2f1c6685cb1f4a33963cc6015c975e64951f6', '::1', 1431228489, ''),
('8fc8da7a2d7e9c788b2725edddf6ffd80817ecb0', '192.168.1.213', 1431361551, ''),
('a74e721648c9f610e6f2060abe597fea2dfe7b7c', '::1', 1431371888, ''),
('d7e78a8b5c5b53bf23b8749c98cae193d5f0810a', '::1', 1431306405, 0x69647c733a323a223534223b757365726e616d657c733a31323a224b6e6967687420596f736869223b656d61696c7c733a32323a226b696e6766726f677339393040676d61696c2e636f6d223b617574686c6576656c7c733a353a223332373638223b6176617461727c733a39393a22687474703a2f2f61322e63646e2e676169616f6e6c696e652e636f6d2f64726573732d75702f6176617461722f6176612f36392f33612f37353034363964333739336136395f666c69702e706e673f743d313432343636383939315f362e30305f3131223b6c6f67676564696e7c623a313b736176655f6d6573736167657c733a35303a225375636365737366756c6c7920616464656420636f6e66696775726174696f6e206974656d20746f2064617461626173652e223b5f5f63695f766172737c613a313a7b733a31323a22736176655f6d657373616765223b733a333a226f6c64223b7d),
('dac669536a7343aae7ade8993a1b6c0f0f067cc2', '::1', 1431278490, 0x69647c733a323a223534223b757365726e616d657c733a31323a224b6e6967687420596f736869223b656d61696c7c733a32323a226b696e6766726f677339393040676d61696c2e636f6d223b617574686c6576656c7c733a353a223332373638223b6176617461727c733a39393a22687474703a2f2f61322e63646e2e676169616f6e6c696e652e636f6d2f64726573732d75702f6176617461722f6176612f36392f33612f37353034363964333739336136395f666c69702e706e673f743d313432343636383939315f362e30305f3131223b6c6f67676564696e7c623a313b),
('e6b1eebf2fe5b8bd8da830eadb287a59420738fa', '::1', 1431110995, 0x69647c733a323a223534223b757365726e616d657c733a31323a224b6e6967687420596f736869223b656d61696c7c733a32323a226b696e6766726f677339393040676d61696c2e636f6d223b617574686c6576656c7c733a353a223332373638223b6176617461727c733a39393a22687474703a2f2f61322e63646e2e676169616f6e6c696e652e636f6d2f64726573732d75702f6176617461722f6176612f36392f33612f37353034363964333739336136395f666c69702e706e673f743d313432343636383939315f362e30305f3131223b6c6f67676564696e7c623a313b),
('f7f709c897363c4afc4bd2a7eecf10121a946acf', '::1', 1431103938, 0x72656469726563747c4e3b69647c733a323a223537223b757365726e616d657c733a363a2264617272696e223b656d61696c7c733a373a226440642e636f6d223b617574686c6576656c7c733a353a223332373638223b6176617461727c733a33393a222f696d616765732f676c6f62616c2f64656661756c745f6176617461725f34367834362e676966223b6c6f67676564696e7c623a313b);

--
-- Dumping data for table `config`
--

INSERT INTO `Config` (`id`, `config_setting`, `config_value`, `lu_timestamp`, `insert_timestamp`, `user_defined`, `default_value`) VALUES
(6, 'gtools.config.default.avatar', '/images/global/default_avatar_46x46.gif', '2015-03-07 16:47:24', '2015-02-22 21:59:53', 0, NULL),
(7, 'default_role_id', '1', '2015-02-25 01:58:59', '2015-02-24 20:31:15', 0, NULL),
(15, 'users.pagination.rows_per_page', '3', '2015-03-07 16:56:04', '2015-02-25 19:58:20', 0, NULL),
(17, 'news.pagination.rows_per_page', '5', '2015-03-07 16:56:04', '2015-02-26 15:56:00', 0, NULL),
(21, 'authentication.role.default.id', '1', '2015-03-07 17:49:54', '2015-03-07 16:55:39', 0, NULL),
(22, 'upload.user.profile_snapshot.directory', './uploads/user/profile_snapshots', '2015-04-07 16:49:14', '2015-04-07 04:08:15', 1, NULL),
(23, 'upload.user.profile_snapshot.allowed_types', 'png', '2015-04-07 04:10:10', '2015-04-07 04:10:10', 1, NULL),
(24, 'upload.user.profile_snapshot.max_size', '1024', '2015-04-07 04:12:53', '2015-04-07 04:12:53', 1, NULL),
(25, 'upload.user.profile_snapshot.max_width', '800', '2015-04-07 05:06:57', '2015-04-07 05:06:57', 1, NULL),
(26, 'upload.user.profile_snapshot.max_height', '600', '2015-04-07 05:07:10', '2015-04-07 05:07:10', 1, NULL),
(27, 'themes.pagination.rows_per_page', '3', '2015-05-11 19:35:17', '2015-05-11 01:06:44', 1, NULL);

--
-- Dumping data for table `News`
--

INSERT INTO `News` (`ID`, `slug`, `locale`, `title`, `byline`, `shortTitle`, `teaser`, `body`, `release_timestamp`, `lu_timestamp`, `insert_timestamp`) VALUES
(2, 'walt-disney-corporation-to-acquire-mit-for-6.9-billion', 'en_US', 'Walt Disney Corporation to Acquire MIT for $6.9 Billion', 'K. Yoshi, Youtube News', '', '', '<p>CAMBRIDGE, MA, Apr. 1, 1998 -- The Massachusetts Institute of Technology and the Walt Disney Company (NYSE: DIS) today announced the signing of an agreement whereby Disney will acquire MIT, a coeducational university located in Cambridge, Massachusetts. This unprecedented acquisition of a non-profit educational institution by a Fortune 500 company will be accomplished by Disney setting up a $6.9 billion cash scholarship trust fund. The fund will be used to reimburse past students for tuition, and provide scholarships for students for the next 20 years. "The acquisition of MIT represents a new phase for the Walt Disney Company. In recent years, the increased power of computers has made it possible to create dramatic new forms of entertainment ranging from a film like Toy Story to an attraction such as Indiana Jones Adventure at Disneyland to Internet sites like Disney.com. The addition of some of the nation&#39;s finest minds and most original thinkers will help us wisely plot our course into the next century. The talents of MIT faculty and students will uniquely position us to seize the possibilities that technology will be offering", said Michael Eisner, Chairman and CEO of the Walt Disney Company. The idea of the acquisition grew out of talks between Disney and the MIT Media Lab regarding the next generation of television. "We were very impressed by the technology that MIT had", said Thomas James, a Disney spokesperson. "As we became acquainted with the other assets of MIT, the negotiations expanded to include the whole university. The biggest challenge were the legal hurdles. The non-profit nature of the school dictated that the payment has to be given to charity. The fact that MIT is a land-grant university means that the land has to be given back to the Federal government." As part of the acquisition, the entire MIT campus will be moved brick by brick down to the Walt Disney resort complex in Orlando, Florida, so that the 153 acres that MIT currently occupies can be returned. "Moving the Institute is a giant undertaking, but I feel that the MIT Civil Engineering department is up for the challenge", said Joel Moses, MIT provost. "The high Florida water table means that the Institute basements and subbasements cannot be underground. We plan to dig out a new Charles river down in Florida, and use the landfill to place the Institute two stories above sea-level, much like the vaunted utilidor system under the Magic Kingdom. MIT sees many benefits from the acquisition. "The recent tuition riot pointed out that something had to be done about the skyrocketing cost of tuition", Charles Vest, MIT President said. "Besides the large scholarships that the trust fund will provide, the new location in Florida will help us attract students that would ordinarily go to warmer climates such as Palo Alto and Pasadena. The ability to offer Disney stock options will make it easier to recruit and retain world-class professors and staff." MIT students will see some immediate effects of the Disney acquisition. The various MIT departments and schools will be named after Disney characters. For example, the school of Engineering will become the school of Imagineering, and the Sloan School will be renamed the Scrooge McDuck School of Management. According to Samuel "Jay" Keyser, Professor in the Donald Duck Department of Linguistics, who was on the MIT negotiating team, the first noticeable change will be Disney characters appearing in lectures. "The presence of these characters in class will keep students awake and enhance the learning process," Keyser said, "In time, student morale will be improved by nightly parades down the Infinite corridor, followed by firework displays over the Great Dome." Once the move to Florida is complete by 2010, the campus will finally have a monorail system and access to the entire Walt Disney World resort complex. Disney says that it intends to immediately benefit from the acquisition by redirecting the resources of the "Land of Computer Science" and the "Artificial Imagination Laboratory" to its internal Information Systems needs, ranging from Year 2000 projects to ride control to improving web security. The biology department will begin to genetically engineer new attractions for Disney&#39;s Animal Kingdom, slated to open this Spring. Disney is also planning on an animated cartoon adventure of "Nick the Nerd", slated for release in the summer of 1999. Disney is also considering adding "Noun Poetry" to its Disney Afternoon lineup. As part of the acquisition, MIT President Charles Vest will receive a pay increase and become Disney Vice President for Nerd Education. Once the move is completed, the school will merge with the Disney Institute and will be renamed the Disney Institute of Technology. When asked what he planned on doing now that he had just finished selling the Institute to Disney, Charles Vest had no comment.</p>\r\n', '2015-02-22 22:52:37', '2015-02-24 04:58:32', '2015-02-19 10:10:29'),
(3, 'gaia-interactive-to-buy-gaiatools', 'en_US', 'Gaia Interactive to Buy Gaiatools', 'James Wood, CNNMoney', 'Gaia to buy Gaiatools', NULL, 'SAN JOSE, CA, Apr. 1, 2015 -- Gaia Interactive&trade; has just announced it plans to purchase Gaiatools for an undisclosed sum.  Knight Yoshi, a lead developer on a redesign of the Gaiatools Website was quick to add that, "this is exciting for all of us here at Gaiatools and is a reflection of our excellent work bringing the Gaia Online community together."<br/>\r\n<br/>\r\n“All of us here at Gaia are extremely happy to be able to provide the experience and dedication that GaiaTools brings to our loyal and loving fans on Gaia Online.” said Christopher Castagnetto, Senior Marketing Product Manager at Gaia Interactive.<br/>\r\n<br/>\r\nVisit GaiaTools and begin your adventure at http://www.gaiatools.com\r\n<br/>\r\n<br/>\r\n<u>About Gaia Interactive</u><br/>\r\n<br/>\r\nFounded in 2003, Gaia Interactive makes games that capture the imagination. As a pioneer in virtual goods, our profitable titles have given us a solid foundation in the social and mobile space, and pointed us toward bigger successes ahead. With beautiful artwork and compelling game design, our games have delighted millions of players -- and we''re just getting started. Here’s your opportunity to put your passion to work with our world-class engineers and the awesome creative team that put Gaia Online on the map: help us take Gaia Online from the world’s largest forum community to a multi-platform social and mobile gaming powerhouse! For more information, visit http://www.gaiaonline.com.?', '2015-02-22 22:52:37', '2015-02-19 16:42:41', '2015-04-01 04:00:00'),
(4, 'tarpon-springs-police-bald-eagle-injured-after-crashing-into-truck', 'en_US', 'Tarpon Springs police: Bald eagle injured after crashing into truck', 'Bay News 9, http://www.baynews9.com/content/news/baynews9/news/article.html/cont', '', '', '<p><strong>TARPON SPRINGS -- </strong>A bald eagle is recovering after Tarpon Springs police said it crashed into the side of a truck.</p>\r\n\r\n<p>Police said they responded to a call about the injured bald eagle Monday at about 11:45 a.m. near the Bradley Plaza Shopping Center on U.S. 19.</p>\r\n\r\n<p>Witnesses told them the eagle swooped down as if it were going after food and hit the side of a truck.</p>\r\n\r\n<p>Drivers who saw the incident called the police, then tended to the eagle while waiting for officers to arrive.</p>\r\n\r\n<p>Police then took the eagle to Dr. Murphy at the Animal and Bird Hospital on U.S. 19, where it was diagnosed with a broken wing.</p>\r\n\r\n<p>Officials said the eagle is expected to recover.</p>\r\n', '2015-02-24 04:54:52', '2015-02-24 04:54:52', '2015-02-24 04:54:52'),
(6, 'fog-and-rain-will-move-through-overnight-storms-possible-to-north', 'en_US', ' Fog and rain will move through overnight, storms possible to north', 'Bay News 9', '', '', '<p><strong>ST. PETERSBURG -- </strong>The weather is about to change again.</p>\r\n\r\n<p>Showers will push through the area late tonight and early tomorrow, and a colder wind from the northwest will follow.</p>\r\n\r\n<p>There is a Marine Dense Fog Advisory issued for the coast until 4 a.m. Satellite pictures are showing a large area of dense fog near the coast so mariners and drivers are urged to use caution.</p>\r\n\r\n<p>"After a warm front lifted north through the area today, southerly winds have increased," Bay News 9 meteorologist Josh Linker said. "This is leading to some more sea fog along the coast this evening."</p>\r\n\r\n<p>Severe thunderstorms are possible late Wednesday night into the early morning hours of Thursday.</p>\r\n\r\n<p>"Later tonight, as low pressure in the Gulf of Mexico moves toward northern Florida, an area of rain and a few thunderstorms will develop. The best chance for strong storms will be north of Tampa Bay."</p>\r\n\r\n<p>Temperatures will stay in the low to miid 60s tomorrow. A warming trend will bring afternoon temperatures back to 70 on Friday, around 73 on Saturday and close to 80 on Sunday.</p>\r\n', '2015-02-26 02:37:24', '2015-02-26 02:37:24', '2015-02-26 02:37:24'),
(7, 'authorities-newborn-kill-sleeping-mother', 'en_US', 'Authorities: Newborn kill sleeping mother', 'Bay News 9', '', 'Authorities: Newborn smothered by sleeping mother in Seminole\r\n', '<p><strong>SEMINOLE -- </strong>Detectives say a one-month-old baby was accidentally smothered by her mother at their home on Passage Way in Seminole.</p>\r\n\r\n<p>According to the Pinellas County Sheriff&#39;s Office, Nafisa Doctor Gibbons, 35, said she fell asleep at 6:30 a.m. Thursday after bringing her crying daughter Chloe to bed with her.</p>\r\n\r\n<p>But when she woke up two hours later, the child was unresponsive. The mother and grandmother administered CPR before paramedics transported the child to Largo Medical Center. The baby was later transferred by air to All Children&#39;s Hospital.</p>\r\n\r\n<p>The infant died Sunday at All Children&#39;s Hospital after being taken off life support. The Medical Examiner&#39;s Office will make a final determination of cause and manner of death, although initial indication is accidental asphyxiation.</p>\r\n\r\n<p>Deputies found no evidence of child abuse and said drugs didn&#39;t appear to play a role in the death even though the mother has a history of abusing drugs.</p>\r\n', '2015-02-26 02:39:03', '2015-02-26 02:39:03', '2015-02-26 02:39:03'),
(17, '20150306234214-Judge-tosses-out-Applebees-face-burning-fajitas-lawsuit', 'en_US', 'Judge tosses out Applebee''s face-burning fajitas lawsuit', 'CNN', '', '', '<p>A diner who sued Applebee&#39;s after burning his face on a platter of fajitas got his lawsuit tossed out by an appellate court in New Jersey.</p>\r\n\r\n<p>Hiram Jimenez filed a lawsuit in 2010 after bowing his head in prayer only to burn his face on the sizzling meat at Applebee&#39;s Neighborhood Grill and Bar in Westhampton, N.J., near Philadelphia.</p>\r\n\r\n<p>He sought damages against the Apple American Group, the franchisee that owns and operates the restaurant, according to Applebee&#39;s.</p>\r\n\r\n<p>But an appellate court <a href="http://www.courierpostonline.com/story/news/local/south-jersey/2015/03/04/man-burned-fajitas-sue-applebees/24384837/" target="_blank">judge wasn&#39;t buying Jimenez&#39; claim</a> that restaurant workers failed to adequately warn him of the hazards of the sizzling fajitas, on the basis that the dangers were "self-evident."</p>\r\n\r\n<p>A lawyer for Jimenez, Richard Weiner of Conshohocken, did not return messages from CNNMoney.</p>\r\n\r\n<p>The suit brings to mind various high profile lawsuits versus restaurants. An Albuquerque woman successfully sued McDonald&#39;s in 1992 after getting severely burned by coffee. A Las Vegas woman was less successful in her 2005 lawsuit versus Wendy&#39;s after<a href="http://www.cnn.com/2005/LAW/04/22/Wendys.hoax/?iid=EL"> finding a severed finger in her chili</a>, because police <a href="http://money.cnn.com/2005/05/10/news/midcaps/wendys_frosty/?iid=EL">determined it was a hoax</a>.</p>\r\n', '2015-03-07 04:42:14', '2015-03-07 05:33:01', '2015-03-07 04:42:14'),
(18, '20150307003143-At-long-last-Dow-gets-a-taste-for-Apple', 'en_US', 'At long last, Dow gets a taste for Apple', 'David Gaffen', '', '', '<p><strong>NEW YORK </strong>(Reuters) - Apple Inc (<a href="http://www.reuters.com/finance/stocks/overview?symbol=AAPL.O">AAPL.O</a>), the largest U.S. company by market value, will join the Dow Jones industrial average <a href="http://www.reuters.com/finance/markets/index?symbol=us!dji">.DJI</a>, replacing AT&T Inc (<a href="http://www.reuters.com/finance/stocks/overview?symbol=T.N">T.N</a>), in a change that reflects the dominant position of the iPhone maker in the U.S. consumer economy.</p>\r\n\r\n<p>The decision to nudge aside AT&T, which has been part of the Dow for the better part of a century, is a recognition of how communications and technology have evolved. It&#39;s also a marker of Apple&#39;s transformation, from a struggling company with a small, fervent following two decades ago, into the nation&#39;s predominant consumer tech company.</p>\r\n\r\n<p>"This is a sign of the times, and it might get everyone to look at the Dow more than they have been," said Richard Sichel, who oversees $2 billion as chief investment officer at Philadelphia Trust Co. "It would be difficult to pick any 30 companies that would cover the entire economy, especially compared with the S&P 500, but it does give the Dow more credibility."</p>\r\n\r\n<p>The action, by S&P Dow Jones Indices, had been widely expected since Apple split its shares seven-for-one in June of last year.</p>\r\n\r\n<p>AT&T declined to comment on its removal from the average, of which it has been a member for most of the last 100 years. The stock was added to the Dow in 1916, the year after the first-ever transcontinental telephone call. It was removed in 2004, but after SBC Communications renamed itself AT&T following a 2005 merger, it was reinstated.</p>\r\n\r\n<p>"It was a new way of life: telephones, back then 100 years ago, these talking machines," said Howard Silverblatt, index analyst at S&P Dow Jones Indices. "Back then, AT&T was it, end of story."</p>\r\n\r\n<p> </p>\r\n\r\n<p>TWIST OF FATE</p>\r\n\r\n<p>After Apple&#39;s stock split, many investors felt it was only a matter of time before the company, whose high stock price had previously made it unsuitable for the price-weighted index, would join it.</p>\r\n\r\n<p>The Dow industrials is the oldest U.S. stock average, first published in 1896. Its compact size - just 30 names - and its mission to reflect the U.S. economy means that many retail investors are more familiar with it than other indexes covering a broader cross-section of the market.</p>\r\n\r\n<p>Even though professional managers generally benchmark against the S&P 500, additions and removals from the Dow are still a big event on Wall Street. It was last altered in September 2013 when Goldman Sachs Group Inc (<a href="http://www.reuters.com/finance/stocks/overview?symbol=GS.N">GS.N</a>), Visa Inc (<a href="http://www.reuters.com/finance/stocks/overview?symbol=V.N">V.N</a>) and Nike Inc (<a href="http://www.reuters.com/finance/stocks/overview?symbol=NKE.N">NKE.N</a>) were added.</p>\r\n\r\n<p>Apple did not respond to requests for comment. The company has a market capitalization of $737 billion, making it twice the size of the second-largest Dow component, Exxon Mobil Corp (<a href="http://www.reuters.com/finance/stocks/overview?symbol=XOM.N">XOM.N</a>).</p>\r\n\r\n<p>Shares of Apple rose 0.15 percent to $126.60 on Friday, while those of AT&T fell 1.5 percent to $33.48.</p>\r\n\r\n<p>In a twist of fate, Apple owes some of its success to its partnership with AT&T over the iPhone, the device that propelled Apple&#39;s dominance. The iPhone first hit the market in 2007 with AT&T as its exclusive carrier, a deal that continued for more than three years.</p>\r\n\r\n<p>Since the iPhone&#39;s introduction, Apple&#39;s annual revenue has risen more than sevenfold, from $24.6 billion in 2007 to $182.8 billion most recently. AT&T saw 11 percent revenue growth over the same period to $132.4 billion in 2014.</p>\r\n\r\n<p>"There’s irony in that they are replacing AT&T, which helped them lift off to begin with,” said Neil Azous, founder of Stamford, Connecticut-based advisory firm Rareview Macro.</p>\r\n\r\n<p>Despite Apple&#39;s size, as of Thursday&#39;s close it would only have a 4.66 percent weighting in the Dow because of its price, the index company said. Apple will join the average after the close of trading on March 18.</p>\r\n\r\n<p>Most of the assets indexed to the Dow industrials do so through the S&P Dow Jones Industrials exchange-traded fund (<a href="http://www.reuters.com/finance/stocks/overview?symbol=DIA.P">DIA.P</a>), commonly known as the "Dow Diamonds." It had about $12.5 billion in assets as of Thursday. By comparison, more than $1.9 trillion in assets track the S&P, including mutual funds and ETFs.</p>\r\n\r\n<p>Kevin Landis, chief investment officer of Firsthand Capital Management, a Silicon Valley-based technology-investing specialist with $300 million in assets under management, said he hopes that this is not a sign that Apple is past its prime.</p>\r\n\r\n<p>“The Dow Jones is such a backwards-looking list, I cringed when Intel (<a href="http://www.reuters.com/finance/stocks/overview?symbol=INTC.O">INTC.O</a>) and Microsoft (<a href="http://www.reuters.com/finance/stocks/overview?symbol=MSFT.O">MSFT.O</a>) were added," Landis said. "I&#39;m cringing today. Let&#39;s hope Apple can defy the forces of history."</p>\r\n\r\n<p>Intel and Microsoft joined the average in November 1999, and their performance was weak for years following.</p>\r\n\r\n<p> </p>\r\n\r\n<p>(Reporting by David Gaffen; additional reporting by Jonathan Spicer, Jessica Toonkel and Ryan Vlastelica; Editing by Dan Burns, <a href="http://blogs.reuters.com/search/journalist.php?edition=us&n=bernadette.baum&">Bernadette Baum</a>, Steve Orlofsky and <a href="http://blogs.reuters.com/search/journalist.php?edition=us&n=christian.plumb&">Christian Plumb</a>)</p>\r\n', '2015-03-07 05:31:43', '2015-03-07 05:31:43', '2015-03-07 05:31:43');

--
-- Dumping data for table `Roles`
--

INSERT INTO `Role` (`role_id`, `role_name`, `role_description`, `role_level`, `lu_timestamp`, `lu_user`, `insert_timestamp`, `user_defined`) VALUES
(1, 'Basic User', 'Basic User Accounts', 1, '2015-02-22 23:25:42', 'darrin', '2015-02-22 23:25:42', 0),
(2, 'Beta Tester', 'Beta Tester Account (also has Basic User)', 3, '2015-02-22 23:33:54', 'darrin', '2015-02-22 23:33:54', 0),
(3, 'News Editor', 'News Editor Accounts (also has Basic User)', 9, '2015-02-22 23:49:55', 'darrin', '2015-02-22 23:49:55', 0),
(4, 'Super User', 'Super User Accounts (has everything below superuser)', 283, '2015-02-22 22:15:45', 'darrin', '2015-02-22 22:15:45', 0),
(5, 'Site Administrator', 'Site Administator Accounts (has everything below Administrator)', 16667, '2015-02-23 00:49:16', 'darrin', '2015-02-23 00:49:16', 0),
(9, 'Site Owner', 'Site Owner All Privileges', 32768, '2015-02-25 04:26:59', 'darrin', '2015-02-25 04:26:59', 0);

--
-- Dumping data for table `users`
--

INSERT INTO `User` (`id`, `username`, `email`, `registered`, `role_id`, `dob`, `salt`, `password`, `lu_password`, `banned`, `last_login_timestamp`, `login_failed_attempts`, `last_login_ip`, `account_locked`, `timezone`) VALUES
(54, 'Knight Yoshi', 'kingfrogs990@gmail.com', '2015-02-23 15:46:21', 9, '1991-07-09', 'º}ªé²Øíh', '$6$rounds=5000$º}ªé²Øíh$o1hZCxZa8N2d.op2xXO5Mu07Me/YFpRq2J5.79GL9SJICg4rQ057mWbwR.c0SxHcklBOUn7BpoARk4o5Tdb/i.', '2015-05-08 04:05:38', 0, NULL, 0, '', 0, 'America/New_York'),
(57, 'darrin', 'd@d.com', '2015-02-24 02:01:09', 9, '1973-01-10', 'ßÃ\nê¨Xä2XfQ', '$6$rounds=5000$ßÃ\nê¨Xä2XfQ$Fi1jtQ9Nb8dPA5dWT2HKgUzXEapWxFT3sCOR0CDVYFZIdbiPK5gJIVkRHnYsyowT2wbVHJUcURlYYFaCvCcgD.', '0000-00-00 00:00:00', 0, NULL, 0, '', 0, NULL),
(111, 'CreatedUser1', 'cu1@m.com', '2015-02-28 10:13:36', 1, '1991-07-09', 'nÂ¡ÍaÔ<0b¾ô\ZuU', '$6$rounds=5000$nÂ¡ÍaÔ<0b¾ô\ZuU$SXtArLD9.C3YNiXdDVIyDyVBgZhF1ZARNPJb2477l//nKpi6yDqXHJxQbKR80SYrlRx4Ig2fGY2Mroy9UFWGi/', '0000-00-00 00:00:00', 0, NULL, 0, '', 0, NULL),
(112, 'CreatedUser2', 'cu2@m.com', '2015-02-28 10:56:08', 1, '1994-07-06', 'ø(ÜëOÒÁ;y±', '$6$rounds=5000$ø(ÜëOÒÁ;y±$uRw8C3IRhltN1aiWICSfmqRf/Q5d5fqkLhQL2CUg8gmOkxkBnW6mcNZmVb.ocAlsDz7k5J8zrcbkl9cF2qy.i1', '0000-00-00 00:00:00', 0, NULL, 0, '', 0, NULL),
(113, 'RegUser1', 'ru1@m.com', '2015-02-28 10:58:32', 1, '1995-07-04', 'òÏ´Ì:''''÷º°¬HõKò', '$6$rounds=5000$òÏ´Ì:''''÷º°¬HõKò$u6vSYMgjsCPOJn3fsCEYy7JyFFjLFftPdA4DqM4HNydnWLaq0P.KZHOuSUs8ebjJPSN/BHJSZQf8PqAEU3mnY.', '0000-00-00 00:00:00', 0, NULL, 0, '', 0, NULL),
(114, 'RegUser2', 'ru2@m.com', '2015-02-28 11:14:07', 1, '1997-01-02', 'äùÖ×%ÅGn[ò[¼', '$6$rounds=5000$äùÖ×%ÅGn[ò[¼$AZ.jx0kaRQg1JW5aHfzDVY46Tb4BVjjo/5QlWxxkIxjPc76foF28d4UQ5jcdt/qaJw79TCss.PMMT8eSSnMVK0', '0000-00-00 00:00:00', 0, NULL, 0, '', 0, NULL);


--
-- Dumping data for table `User_Ip_Logins`
--

INSERT INTO `User_Ip_Login` (`id`, `ip`, `timestamp`, `User_id`) VALUES
(2, '::1', '2015-05-08 17:44:32', 54),
(3, '::1', '2015-05-08 17:45:51', 54),
(4, '192.168.1.165', '2015-05-10 16:35:47', 57),
(5, '::1', '2015-05-10 17:21:30', 54),
(6, '::1', '2015-05-11 00:18:41', 54),
(7, '::1', '2015-05-11 19:04:02', 57);

--
-- Dumping data for table `Gaia_Accounts`
--

INSERT INTO `Gaia_Account` (`gaia_id`, `username`, `avatar`, `user_level`, `filter_level`, `avatar_url`, `account_age`, `gender`, `last_updated`, `User_id`) VALUES
(7944809, 'Knight Yoshi', 'ava/69/3a/750469d3793a69_M_6.00_11_1424668991', 8, 0, 'http://a2.cdn.gaiaonline.com/dress-up/avatar/ava/69/3a/750469d3793a69_flip.png?t=1424668991_6.00_11', 2816, 'Male', '2015-02-23 15:46:22', 54);

--
-- Dumping data for table `Themes`
--

INSERT INTO `Theme` (`id`, `title`, `add_timestamp`, `description`, `category`, `shopurl`, `published`, `is_private`, `sharecode`, `template`, `basetheme`, `friendstyle`, `commentstyle`, `code`, `snapshot`, `ip_address`, `lu_ip`, `lu_timestamp`, `User_id`) VALUES
(22, 'My Title 1', '2015-05-05 03:04:36', 'Some Description About it', NULL, NULL, 1, 0, NULL, 'classic', 'classic', NULL, NULL, 0x1f8b0800000000000003d3d75208c948cd4d553054d0d20700c07b56e70d000000, NULL, '::1', '::1', '2015-05-05 07:04:36', 54),
(23, 'My Title 2', '2015-05-05 03:06:37', 'Second theme', NULL, NULL, 1, 0, NULL, 'classic', 'classic', NULL, NULL, 0x1f8b0800000000000003d3d75208c948cd4d553054d0d20700c07b56e70d000000, NULL, '::1', '::1', '2015-05-05 07:06:37', 54),
(24, 'My Title 3', '2015-05-05 03:07:35', 'Theme 3', NULL, NULL, 1, 0, NULL, 'classic', 'classic', NULL, NULL, 0x1f8b0800000000000003d3d75208c948cd4d553056d0d207004bb35f4d0d000000, NULL,'::1', '::1', '2015-05-05 07:07:35', 54),
(25, 'My Title 4', '2015-05-05 03:08:36', NULL, NULL, NULL, 1, 0, NULL, 'classic', 'classic', NULL, NULL, 0x1f8b0800000000000003d3d75208c948cd4d553051d0d20700f28b88d00d000000, NULL, '::1', '::1', '2015-05-05 07:08:36', 54);


--
-- Dumping data for table `Theme_Tags`
--

INSERT INTO `Tag` (`id`, `title`) VALUES
(30, ' Boat'),
(29, ' Truck'),
(25, 'Birds'),
(28, 'Cars'),
(26, 'cats'),
(27, 'Dogs');

--
-- Dumping data for table `themes_has_theme_tags`
--

INSERT INTO `Theme_has_Tag` (`Theme_id`, `Tag_id`) VALUES
(22, 25),
(23, 26),
(24, 27),
(25, 28),
(25, 29),
(25, 30);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
