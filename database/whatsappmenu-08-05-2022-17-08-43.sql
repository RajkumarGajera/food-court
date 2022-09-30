#
# TABLE STRUCTURE FOR: about
#

DROP TABLE IF EXISTS `about`;

CREATE TABLE `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `nationality` varchar(200) DEFAULT NULL,
  `dob` varchar(255) DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `about_me` text DEFAULT NULL,
  `video_link` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: about_content
#

DROP TABLE IF EXISTS `about_content`;

CREATE TABLE `about_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `about_id` int(11) DEFAULT NULL,
  `label` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: allergens
#

DROP TABLE IF EXISTS `allergens`;

CREATE TABLE `allergens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `images` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: call_waiter_list
#

DROP TABLE IF EXISTS `call_waiter_list`;

CREATE TABLE `call_waiter_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `table_no` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `is_ring` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: country
#

DROP TABLE IF EXISTS `country`;

CREATE TABLE `country` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `code` varchar(2) NOT NULL,
  `dial_code` varchar(5) NOT NULL,
  `currency_name` varchar(20) NOT NULL,
  `currency_symbol` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=latin1;

INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (1, 'Andorra', 'AD', '+376', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (2, 'United Arab Emirates', 'AE', '+971', 'United Arab Emirates', 'د.إ', 'AED');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (3, 'Afghanistan', 'AF', '+93', 'Afghan afghani', '؋', 'AFN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (4, 'Antigua and Barbuda', 'AG', '+1268', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (5, 'Anguilla', 'AI', '+1264', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (6, 'Albania', 'AL', '+355', 'Albanian lek', 'L', 'ALL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (7, 'Armenia', 'AM', '+374', 'Armenian dram', '', 'AMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (8, 'Angola', 'AO', '+244', 'Angolan kwanza', 'Kz', 'AOA');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (9, 'Argentina', 'AR', '+54', 'Argentine peso', '$', 'ARS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (10, 'Austria', 'AT', '+43', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (11, 'Australia', 'AU', '+61', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (12, 'Aruba', 'AW', '+297', 'Aruban florin', 'ƒ', 'AWG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (13, 'Azerbaijan', 'AZ', '+994', 'Azerbaijani manat', '', 'AZN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (14, 'Barbados', 'BB', '+1246', 'Barbadian dollar', '$', 'BBD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (15, 'Bangladesh', 'BD', '+880', 'Bangladeshi taka', '৳', 'BDT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (16, 'Belgium', 'BE', '+32', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (17, 'Burkina Faso', 'BF', '+226', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (18, 'Bulgaria', 'BG', '+359', 'Bulgarian lev', 'лв', 'BGN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (19, 'Bahrain', 'BH', '+973', 'Bahraini dinar', '.د.ب', 'BHD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (20, 'Burundi', 'BI', '+257', 'Burundian franc', 'Fr', 'BIF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (21, 'Benin', 'BJ', '+229', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (22, 'Bermuda', 'BM', '+1441', 'Bermudian dollar', '$', 'BMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (23, 'Brazil', 'BR', '+55', 'Brazilian real', 'R$', 'BRL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (24, 'Bhutan', 'BT', '+975', 'Bhutanese ngultrum', 'Nu.', 'BTN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (25, 'Botswana', 'BW', '+267', 'Botswana pula', 'P', 'BWP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (26, 'Belarus', 'BY', '+375', 'Belarusian ruble', 'Br', 'BYR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (27, 'Belize', 'BZ', '+501', 'Belize dollar', '$', 'BZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (28, 'Canada', 'CA', '+1', 'Canadian dollar', '$', 'CAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (29, 'Switzerland', 'CH', '+41', 'Swiss franc', 'Fr', 'CHF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (30, 'Cote d\'Ivoire', 'CI', '+225', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (31, 'Cook Islands', 'CK', '+682', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (32, 'Chile', 'CL', '+56', 'Chilean peso', '$', 'CLP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (33, 'Cameroon', 'CM', '+237', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (34, 'China', 'CN', '+86', 'Chinese yuan', '¥ or 元', 'CNY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (35, 'Colombia', 'CO', '+57', 'Colombian peso', '$', 'COP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (36, 'Costa Rica', 'CR', '+506', 'Costa Rican colón', '₡', 'CRC');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (37, 'Cuba', 'CU', '+53', 'Cuban convertible pe', '$', 'CUC');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (38, 'Cape Verde', 'CV', '+238', 'Cape Verdean escudo', 'Esc or $', 'CVE');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (39, 'Cyprus', 'CY', '+357', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (40, 'Czech Republic', 'CZ', '+420', 'Czech koruna', 'Kč', 'CZK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (41, 'Germany', 'DE', '+49', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (42, 'Djibouti', 'DJ', '+253', 'Djiboutian franc', 'Fr', 'DJF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (43, 'Denmark', 'DK', '+45', 'Danish krone', 'kr', 'DKK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (44, 'Dominica', 'DM', '+1767', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (45, 'Dominican Republic', 'DO', '+1849', 'Dominican peso', '$', 'DOP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (46, 'Algeria', 'DZ', '+213', 'Algerian dinar', 'د.ج', 'DZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (47, 'Ecuador', 'EC', '+593', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (48, 'Estonia', 'EE', '+372', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (49, 'Egypt', 'EG', '+20', 'Egyptian pound', '£ or ج.م', 'EGP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (50, 'Eritrea', 'ER', '+291', 'Eritrean nakfa', 'Nfk', 'ERN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (51, 'Spain', 'ES', '+34', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (52, 'Ethiopia', 'ET', '+251', 'Ethiopian birr', 'Br', 'ETB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (53, 'Finland', 'FI', '+358', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (54, 'Fiji', 'FJ', '+679', 'Fijian dollar', '$', 'FJD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (55, 'Faroe Islands', 'FO', '+298', 'Danish krone', 'kr', 'DKK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (56, 'France', 'FR', '+33', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (57, 'Gabon', 'GA', '+241', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (58, 'United Kingdom', 'GB', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (59, 'Grenada', 'GD', '+1473', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (60, 'Georgia', 'GE', '+995', 'Georgian lari', 'ლ', 'GEL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (61, 'Guernsey', 'GG', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (62, 'Ghana', 'GH', '+233', 'Ghana cedi', '₵', 'GHS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (63, 'Gibraltar', 'GI', '+350', 'Gibraltar pound', '£', 'GIP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (64, 'Guinea', 'GN', '+224', 'Guinean franc', 'Fr', 'GNF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (65, 'Equatorial Guinea', 'GQ', '+240', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (66, 'Greece', 'GR', '+30', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (67, 'Guatemala', 'GT', '+502', 'Guatemalan quetzal', 'Q', 'GTQ');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (68, 'Guinea-Bissau', 'GW', '+245', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (69, 'Guyana', 'GY', '+595', 'Guyanese dollar', '$', 'GYD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (70, 'Hong Kong', 'HK', '+852', 'Hong Kong dollar', '$', 'HKD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (71, 'Honduras', 'HN', '+504', 'Honduran lempira', 'L', 'HNL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (72, 'Croatia', 'HR', '+385', 'Croatian kuna', 'kn', 'HRK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (73, 'Haiti', 'HT', '+509', 'Haitian gourde', 'G', 'HTG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (74, 'Hungary', 'HU', '+36', 'Hungarian forint', 'Ft', 'HUF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (75, 'Indonesia', 'ID', '+62', 'Indonesian rupiah', 'Rp', 'IDR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (76, 'Ireland', 'IE', '+353', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (77, 'Israel', 'IL', '+972', 'Israeli new shekel', '₪', 'ILS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (78, 'Isle of Man', 'IM', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (79, 'India', 'IN', '+91', 'Indian rupee', '₹', 'INR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (80, 'Iraq', 'IQ', '+964', 'Iraqi dinar', 'ع.د', 'IQD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (81, 'Iceland', 'IS', '+354', 'Icelandic króna', 'kr', 'ISK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (82, 'Italy', 'IT', '+39', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (83, 'Jersey', 'JE', '+44', 'British pound', '£', 'GBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (84, 'Jamaica', 'JM', '+1876', 'Jamaican dollar', '$', 'JMD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (85, 'Jordan', 'JO', '+962', 'Jordanian dinar', 'د.ا', 'JOD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (86, 'Japan', 'JP', '+81', 'Japanese yen', '¥', 'JPY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (87, 'Kenya', 'KE', '+254', 'Kenyan shilling', 'Sh', 'KES');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (88, 'Kyrgyzstan', 'KG', '+996', 'Kyrgyzstani som', 'лв', 'KGS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (89, 'Cambodia', 'KH', '+855', 'Cambodian riel', '៛', 'KHR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (90, 'Kiribati', 'KI', '+686', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (91, 'Comoros', 'KM', '+269', 'Comorian franc', 'Fr', 'KMF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (92, 'Kuwait', 'KW', '+965', 'Kuwaiti dinar', 'د.ك', 'KWD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (93, 'Cayman Islands', 'KY', '+ 345', 'Cayman Islands dolla', '$', 'KYD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (94, 'Kazakhstan', 'KZ', '+7 7', 'Kazakhstani tenge', '₸', 'KZT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (95, 'Laos', 'LA', '+856', 'Lao kip', '₭', 'LAK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (96, 'Lebanon', 'LB', '+961', 'Lebanese pound', 'ل.ل', 'LBP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (97, 'Saint Lucia', 'LC', '+1758', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (98, 'Liechtenstein', 'LI', '+423', 'Swiss franc', 'Fr', 'CHF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (99, 'Sri Lanka', 'LK', '+94', 'Sri Lankan rupee', 'Rs or රු', 'LKR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (100, 'Liberia', 'LR', '+231', 'Liberian dollar', '$', 'LRD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (101, 'Lesotho', 'LS', '+266', 'Lesotho loti', 'L', 'LSL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (102, 'Lithuania', 'LT', '+370', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (103, 'Luxembourg', 'LU', '+352', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (104, 'Latvia', 'LV', '+371', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (105, 'Morocco', 'MA', '+212', 'Moroccan dirham', 'د.م.', 'MAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (106, 'Monaco', 'MC', '+377', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (107, 'Moldova', 'MD', '+373', 'Moldovan leu', 'L', 'MDL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (108, 'Montenegro', 'ME', '+382', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (109, 'Madagascar', 'MG', '+261', 'Malagasy ariary', 'Ar', 'MGA');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (110, 'Marshall Islands', 'MH', '+692', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (111, 'Mali', 'ML', '+223', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (112, 'Myanmar', 'MM', '+95', 'Burmese kyat', 'Ks', 'MMK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (113, 'Mongolia', 'MN', '+976', 'Mongolian tögrög', '₮', 'MNT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (114, 'Mauritania', 'MR', '+222', 'Mauritanian ouguiya', 'UM', 'MRO');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (115, 'Montserrat', 'MS', '+1664', 'East Caribbean dolla', '$', 'XCD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (116, 'Malta', 'MT', '+356', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (117, 'Mauritius', 'MU', '+230', 'Mauritian rupee', '₨', 'MUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (118, 'Maldives', 'MV', '+960', 'Maldivian rufiyaa', '.ރ', 'MVR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (119, 'Malawi', 'MW', '+265', 'Malawian kwacha', 'MK', 'MWK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (120, 'Mexico', 'MX', '+52', 'Mexican peso', '$', 'MXN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (121, 'Malaysia', 'MY', '+60', 'Malaysian ringgit', 'RM', 'MYR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (122, 'Mozambique', 'MZ', '+258', 'Mozambican metical', 'MT', 'MZN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (123, 'Namibia', 'NA', '+264', 'Namibian dollar', '$', 'NAD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (124, 'New Caledonia', 'NC', '+687', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (125, 'Niger', 'NE', '+227', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (126, 'Nigeria', 'NG', '+234', 'Nigerian naira', '₦', 'NGN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (127, 'Nicaragua', 'NI', '+505', 'Nicaraguan córdoba', 'C$', 'NIO');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (128, 'Netherlands', 'NL', '+31', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (129, 'Norway', 'NO', '+47', 'Norwegian krone', 'kr', 'NOK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (130, 'Nepal', 'NP', '+977', 'Nepalese rupee', '₨', 'NPR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (131, 'Nauru', 'NR', '+674', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (132, 'Niue', 'NU', '+683', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (133, 'New Zealand', 'NZ', '+64', 'New Zealand dollar', '$', 'NZD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (134, 'Oman', 'OM', '+968', 'Omani rial', 'ر.ع.', 'OMR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (135, 'Panama', 'PA', '+507', 'Panamanian balboa', 'B/.', 'PAB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (136, 'Peru', 'PE', '+51', 'Peruvian nuevo sol', 'S/.', 'PEN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (137, 'French Polynesia', 'PF', '+689', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (138, 'Papua New Guinea', 'PG', '+675', 'Papua New Guinean ki', 'K', 'PGK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (139, 'Philippines', 'PH', '+63', 'Philippine peso', '₱', 'PHP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (140, 'Pakistan', 'PK', '+92', 'Pakistani rupee', '₨', 'PKR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (141, 'Poland', 'PL', '+48', 'Polish z?oty', 'zł', 'PLN');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (142, 'Portugal', 'PT', '+351', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (143, 'Palau', 'PW', '+680', 'Palauan dollar', '$', '');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (144, 'Paraguay', 'PY', '+595', 'Paraguayan guaraní', '₲', 'PYG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (145, 'Qatar', 'QA', '+974', 'Qatari riyal', 'ر.ق', 'QAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (146, 'Romania', 'RO', '+40', 'Romanian leu', 'lei', 'RON');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (147, 'Serbia', 'RS', '+381', 'Serbian dinar', 'дин. or din.', 'RSD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (148, 'Russia', 'RU', '+7', 'Russian ruble', '', 'RUB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (149, 'Rwanda', 'RW', '+250', 'Rwandan franc', 'Fr', 'RWF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (150, 'Saudi Arabia', 'SA', '+966', 'Saudi riyal', 'ر.س', 'SAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (151, 'Solomon Islands', 'SB', '+677', 'Solomon Islands doll', '$', 'SBD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (152, 'Seychelles', 'SC', '+248', 'Seychellois rupee', '₨', 'SCR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (153, 'Sudan', 'SD', '+249', 'Sudanese pound', 'ج.س.', 'SDG');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (154, 'Sweden', 'SE', '+46', 'Swedish krona', 'kr', 'SEK');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (155, 'Singapore', 'SG', '+65', 'Brunei dollar', '$', 'BND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (156, 'Slovenia', 'SI', '+386', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (157, 'Slovakia', 'SK', '+421', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (158, 'Sierra Leone', 'SL', '+232', 'Sierra Leonean leone', 'Le', 'SLL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (159, 'San Marino', 'SM', '+378', 'Euro', '€', 'EUR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (160, 'Senegal', 'SN', '+221', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (161, 'Somalia', 'SO', '+252', 'Somali shilling', 'Sh', 'SOS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (162, 'Suriname', 'SR', '+597', 'Surinamese dollar', '$', 'SRD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (163, 'El Salvador', 'SV', '+503', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (164, 'Swaziland', 'SZ', '+268', 'Swazi lilangeni', 'L', 'SZL');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (165, 'Chad', 'TD', '+235', 'Central African CFA ', 'Fr', 'XAF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (166, 'Togo', 'TG', '+228', 'West African CFA fra', 'Fr', 'XOF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (167, 'Thailand', 'TH', '+66', 'Thai baht', '฿', 'THB');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (168, 'Tajikistan', 'TJ', '+992', 'Tajikistani somoni', '₸', 'TJS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (169, 'Turkmenistan', 'TM', '+993', 'Turkmenistan manat', 'm', 'TMT');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (170, 'Tunisia', 'TN', '+216', 'Tunisian dinar', 'د.ت', 'TND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (171, 'Tonga', 'TO', '+676', 'Tongan pa?anga', 'T$', 'TOP');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (172, 'Turkey', 'TR', '+90', 'Turkish lira', '', 'TRY');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (173, 'Trinidad and Tobago', 'TT', '+1868', 'Trinidad and Tobago ', '$', 'TTD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (174, 'Tuvalu', 'TV', '+688', 'Australian dollar', '$', 'AUD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (175, 'Taiwan', 'TW', '+886', 'New Taiwan dollar', '$', 'TWD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (176, 'Ukraine', 'UA', '+380', 'Ukrainian hryvnia', '₴', 'UAH');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (177, 'Uganda', 'UG', '+256', 'Ugandan shilling', 'Sh', 'UGX');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (178, 'United States', 'US', '+1', 'United States dollar', '$', 'USD');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (179, 'Uruguay', 'UY', '+598', 'Uruguayan peso', '$', 'UYU');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (180, 'Uzbekistan', 'UZ', '+998', 'Uzbekistani som', '', 'UZS');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (181, 'Vietnam', 'VN', '+84', 'Vietnamese ??ng', '₫', 'VND');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (182, 'Vanuatu', 'VU', '+678', 'Vanuatu vatu', 'Vt', 'VUV');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (183, 'Wallis and Futuna', 'WF', '+681', 'CFP franc', 'Fr', 'XPF');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (184, 'Samoa', 'WS', '+685', 'Samoan t?l?', 'T', 'WST');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (185, 'Yemen', 'YE', '+967', 'Yemeni rial', '﷼', 'YER');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (186, 'South Africa', 'ZA', '+27', 'South African rand', 'R', 'ZAR');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (187, 'Zambia', 'ZM', '+260', 'Zambian kwacha', 'ZK', 'ZMW');
INSERT INTO `country` (`id`, `name`, `code`, `dial_code`, `currency_name`, `currency_symbol`, `currency_code`) VALUES (188, 'Zimbabwe', 'ZW', '+263', 'Botswana pula', 'P', 'BWP');


#
# TABLE STRUCTURE FOR: coupon_list
#

DROP TABLE IF EXISTS `coupon_list`;

CREATE TABLE `coupon_list` (
  `id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `discount` double NOT NULL,
  `total_limit` int(11) NOT NULL,
  `total_used` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: currencies
#

DROP TABLE IF EXISTS `currencies`;

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_name` varchar(255) NOT NULL,
  `currency_code` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `time_zone` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (1, 'Argentinian Peso', 'ARS', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (2, 'Australian Dollar', 'AUD', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (3, 'Brazilian Real', 'BRL', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (4, 'Canadian Dollar', 'CAD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (5, 'Swiss Franc', 'CHF', '&#67', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (6, 'Czech Koruna', 'CZK', '&#75;&#269;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (7, 'Danish Krone', 'DKK', '&#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (8, 'Euro ', 'EUR', '&#8364;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (9, 'British Pound', 'GBP', ' &#163;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (10, 'Hong Kong Dollar', 'HKD', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (11, 'Hungarian Forint', 'HUF', '&#70;&#116;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (12, 'Indian Rupee', 'INR', '&#8377;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (13, 'Israeli New Shekel', 'ILS', ' &#8362;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (14, 'Japanese Yen', 'JPY', ' &#165;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (15, 'Mexican Peso', 'MXN', '&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (16, 'Malaysian Ringgit ', 'MYR', '&#82;&#77;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (17, 'Norwegian Krone', 'NOK', '  &#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (18, 'New Zealand Dollar', 'NZD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (19, 'Philippine Peso', 'PHP', '&#8369;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (20, 'Polish Zloty', 'PLN', '&#122;&#322;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (21, 'Russian Ruble', 'RUB', '&#1088;&#1091;&#1073;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (22, 'Swedish Krona ', 'SEK', ' &#107;&#114;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (23, 'Singapore Dollar', 'SGD', ' &#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (24, 'Thai Baht', 'THB', '&#3647;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (25, 'Taiwan New Dollar', 'TWD', '&#78;&#84;&#36;', '');
INSERT INTO `currencies` (`id`, `country_name`, `currency_code`, `icon`, `time_zone`) VALUES (26, 'United States Dollar', 'USD', ' &#36;', '');


#
# TABLE STRUCTURE FOR: delivery_area_list
#

DROP TABLE IF EXISTS `delivery_area_list`;

CREATE TABLE `delivery_area_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `area` varchar(255) NOT NULL,
  `cost` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: dine_in
#

DROP TABLE IF EXISTS `dine_in`;

CREATE TABLE `dine_in` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `table_no` int(11) NOT NULL,
  `item_id` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: email_template
#

DROP TABLE IF EXISTS `email_template`;

CREATE TABLE `email_template` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `msg` longtext NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `email_template` (`id`, `type`, `msg`, `status`, `created_at`) VALUES (1, 'password_recovery', '\"<p><b><span xss=\\\"removed\\\">Password Recovery Mail from form<\\/span><\\/b> {SITE_NAME}<br> Hello {USERNAME} Use this {PASSWORD} password to login {SITE_NAME} Don\\\\\'t share this password anyone\\u00a0<\\/p>\"', 1, '2020-11-22 10:54:51');


#
# TABLE STRUCTURE FOR: faq
#

DROP TABLE IF EXISTS `faq`;

CREATE TABLE `faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `heading` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (1, '', 'How to create  Restaurant', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:16:51');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (2, '', 'How to make payments', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:17:01');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (3, '', 'How to subscribe', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta officiis voluptates quas et enim facilis voluptatum esse cumque amet beatae assumenda, in, consequatur eos eius, eveniet temporibus asperiores?</p>', 1, '2021-02-25 16:17:21');
INSERT INTO `faq` (`id`, `heading`, `title`, `details`, `status`, `created_at`) VALUES (4, NULL, 'How to create menu', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Labore repellat dicta<br></p>', 1, '2021-02-25 16:17:36');


#
# TABLE STRUCTURE FOR: features
#

DROP TABLE IF EXISTS `features`;

CREATE TABLE `features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `features` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_features` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (1, 'Welcome Page', 'welcome', 1, 1, '2020-09-27 11:21:49');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (2, 'Menu ', 'menu', 1, 1, '2020-09-27 11:24:28');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (3, 'Packages', 'packages', 1, 1, '2020-09-28 10:51:50');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (4, 'specialities', 'specialities', 1, 1, '2020-09-27 17:17:21');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (5, 'Qr code', 'qr-code', 1, 1, '2020-09-27 11:26:03');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (6, 'Whatsapp Order', 'whatsapp', 1, 1, '2020-09-27 11:26:19');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (7, 'Online Order', 'order', 1, 1, '2020-09-27 13:31:06');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (8, 'Reservation', 'reservation', 1, 1, '2020-09-27 13:31:06');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (9, 'Contacts', 'contacts', 1, 0, '2020-09-27 13:31:06');
INSERT INTO `features` (`id`, `features`, `slug`, `status`, `is_features`, `created_at`) VALUES (10, 'Digital Payment', 'online-payment', 1, 1, '2021-06-05 12:39:21');


#
# TABLE STRUCTURE FOR: how_it_works
#

DROP TABLE IF EXISTS `how_it_works`;

CREATE TABLE `how_it_works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `is_icon` int(11) NOT NULL DEFAULT 1,
  `images` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (1, 'Create Your Restaurant', 'Create a new restaurant with scanning QR code or With a package', '<i class=\"fa fa-bath\" aria-hidden=\"true\"></i>', 0, 'uploads/big/d6a67c8dc3f91184f4c2461ac554d5ef.png', 'uploads/thumb/d6a67c8dc3f91184f4c2461ac554d5ef.png', 1, '2021-02-25 13:41:14');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (2, 'Make Payment', 'After create your restaurant make a payment with PayPal, Stripe, Razorpay or Offline payment method', '<i class=\"fab fa-autoprefixer\"></i>', 1, 'uploads/big/112e1f4de3e7f5a7d39c9682b21b9913.png', 'uploads/thumb/112e1f4de3e7f5a7d39c9682b21b9913.png', 1, '2021-02-25 13:47:14');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (3, 'Create  a menu', 'Select menus from our restaurant and make order easily with booking or home delivery', '', 0, 'uploads/big/359cf0722719344d9721ed0d5f605a82.png', 'uploads/thumb/359cf0722719344d9721ed0d5f605a82.png', 1, '2021-02-25 15:36:48');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (4, 'Ordering via chat', 'After finalize create menu you can order via WhatsApp or can continue chat and confirm order', '<i class=\"fa fa-qrcode\" aria-hidden=\"true\"></i>', 1, 'uploads/big/73b481e4c9ee15d0e392d961600f36bf.png', 'uploads/thumb/73b481e4c9ee15d0e392d961600f36bf.png', 1, '2021-02-25 15:34:53');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (5, 'Track order', 'Track your order by scanning QR code or send order with WhatsApp or quick response', '<i class=\"fa fa-credit-card-alt\" aria-hidden=\"true\"></i>', 1, 'uploads/big/e9a406638047f4c604b613735e05be27.png', 'uploads/thumb/e9a406638047f4c604b613735e05be27.png', 1, '2021-02-25 15:32:38');
INSERT INTO `how_it_works` (`id`, `title`, `details`, `icon`, `is_icon`, `images`, `thumb`, `status`, `created_at`) VALUES (6, 'Orders analytics', 'Get detailed report about your orders and earning with sales graph. Track your business grows', NULL, 1, 'uploads/big/00b9ebef97fe4be5f7a810d7197f01ca.png', 'uploads/thumb/00b9ebef97fe4be5f7a810d7197f01ca.png', 1, '2021-02-25 15:36:11');


#
# TABLE STRUCTURE FOR: item_content
#

DROP TABLE IF EXISTS `item_content`;

CREATE TABLE `item_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `label` varchar(250) DEFAULT NULL,
  `value` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_extras
#

DROP TABLE IF EXISTS `item_extras`;

CREATE TABLE `item_extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ex_name` varchar(255) NOT NULL,
  `ex_price` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: item_packages
#

DROP TABLE IF EXISTS `item_packages`;

CREATE TABLE `item_packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `is_price` int(11) NOT NULL DEFAULT 0,
  `item_id` varchar(255) NOT NULL,
  `is_discount` int(11) NOT NULL,
  `discount` int(11) NOT NULL,
  `duration` int(11) NOT NULL,
  `price` double NOT NULL,
  `final_price` double NOT NULL,
  `details` text NOT NULL,
  `overview` text NOT NULL,
  `images` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `is_upcoming` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `live_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `is_special` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL,
  `is_home` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `remaining` int(11) NOT NULL,
  `table_no` int(11) NOT NULL DEFAULT 0,
  `qr_link` varchar(255) DEFAULT NULL,
  `img_type` int(11) NOT NULL DEFAULT 1,
  `img_url` varchar(255) DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_sizes
#

DROP TABLE IF EXISTS `item_sizes`;

CREATE TABLE `item_sizes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: items
#

DROP TABLE IF EXISTS `items`;

CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `allergen_id` varchar(255) DEFAULT NULL,
  `title` varchar(250) NOT NULL,
  `images` varchar(200) NOT NULL,
  `thumb` varchar(200) NOT NULL,
  `veg_type` int(11) NOT NULL DEFAULT 0,
  `price` varchar(255) NOT NULL,
  `is_size` int(11) DEFAULT 0,
  `details` text NOT NULL,
  `overview` text NOT NULL,
  `is_features` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `remaining` int(11) NOT NULL,
  `in_stock` int(11) NOT NULL,
  `img_type` int(11) NOT NULL DEFAULT 1,
  `img_url` varchar(255) DEFAULT NULL,
  `extra_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `orders` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (1, 2, 1, 1, '', 'McSaver Cheese Lava American Chicken Meal', '', '', 2, '399', 0, '', 'Enjoy a deliciously filling meal of Cheese Lava American Chicken Burger + Fries (M) + Beverage of your choice in a new, delivery friendly, reusable bottle.', 1, 1, '2022-04-07 14:33:34', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/43c/567f7202e0020984f1f6fad3b56aa43c.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (2, 2, 1, 1, '', 'McSaver Cheese Lava American Veg Meal', '', '', 1, '299', 0, '', 'Enjoy a deliciously filling meal of Cheese Lava American Veg Burger + Fries (M) + Beverage of your choice in a new, delivery friendly, reusable bottle.', 1, 1, '2022-04-07 14:34:17', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/8f8/7b3474908c1f14a580d06eaf2aa258f8.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (3, 2, 1, 1, '', 'McSaver McSpicy Premium Chicken Meal', '', '', 2, '249', 0, '', 'Enjoy a deliciously filling meal of McSpicy Premium Chicken Burger + Fries (M) + Beverage of your choice in a new, delivery friendly, reusable bottle.', 1, 1, '2022-04-07 14:35:24', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/7b3/2b064ff99939cad4f002b1c463e737b3.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (4, 2, 1, 1, '', 'McSaver McSpicy Premium Veg Meal', '', '', 1, '309', 0, '', 'Enjoy a deliciously filling meal of McSpicy Premium Veg Burger + Fries (M) + Beverage of your choice in a new, delivery friendly, reusable bottle.', 1, 1, '2022-04-07 14:36:17', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/eb1/d2f6c88a0d082582bc91e8e62751deb1.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (5, 2, 1, 2, '', 'McEgg Happy Meal now with Happy Readers', '', '', 2, '199', 0, '', 'Enjoy a combo of Egg Burger + Sweet Corn + B Natural Mixed Fruit Beverage + Book', 1, 1, '2022-04-07 14:36:59', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/0de/a90d4d38c0e6c5a3f39eb348851690de.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (6, 2, 1, 2, '', 'McAloo Tikki Happy Meal now with Happy Readers', '', '', 2, '199', 0, '', 'Enjoy a combo of McAloo Tikki Burger + Sweet Corn + B Natural Mixed Fruit Beverage + Book', 1, 1, '2022-04-07 14:37:37', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/50c/c4b98f4923bfab54256fc0e465d5d50c.png?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (7, 2, 1, 2, '', 'Birthday Party Package- McChicken now with Happy Readers', '', '', 2, '999', 0, '', '5 McChicken Burger + 5 Sweet Corn + 5 Mixed Fruit Beverage + 5 Soft Serve (M) + Book', 1, 1, '2022-04-07 14:38:10', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/bef/74d9073621113bba74fb652382d59bef.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (8, 2, 1, 3, '', 'Soft Serve Hot Fudge', '', '', 0, '85', 0, '', 'A sinful delight, soft serve topped with delicious, gooey hot chocolate fudge. Always grab an extra spoon.', 1, 1, '2022-04-07 14:39:03', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/349/fb0f4ed2af2091436df4cfaea08fc349.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (9, 2, 1, 3, '', 'Soft Serve Strawberry', '', '', 0, '85', 0, '', 'The cool vanilla soft serve ice cream with twirls of strawberry syrup.', 1, 1, '2022-04-07 14:39:35', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/7d0/edc189224ba6546a29b81204e66317d0.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);
INSERT INTO `items` (`id`, `user_id`, `shop_id`, `cat_id`, `allergen_id`, `title`, `images`, `thumb`, `veg_type`, `price`, `is_size`, `details`, `overview`, `is_features`, `status`, `created_at`, `remaining`, `in_stock`, `img_type`, `img_url`, `extra_images`, `orders`) VALUES (10, 2, 1, 3, '', 'Black Forest Mcflurry (M) BOGO', '', '', 0, '150', 0, '', 'A delicious blend of strawberry with chocolate bits in your favourite vanilla soft serve', 1, 1, '2022-04-07 14:40:04', 0, 0, 2, 'https://b.zmtcdn.com/data/dish_photos/8b4/4efa8fee67dbbfb1d5754690149938b4.jpg?output-format=webp&fit=around|130:130&crop=130:130;*,*', NULL, 0);


#
# TABLE STRUCTURE FOR: language_data
#

DROP TABLE IF EXISTS `language_data`;

CREATE TABLE `language_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) NOT NULL,
  `type` varchar(20) NOT NULL,
  `details` text NOT NULL,
  `english` text NOT NULL,
  `ar` varchar(255) NOT NULL,
  `es` varchar(255) NOT NULL,
  `ru` text DEFAULT NULL,
  `cn` text DEFAULT NULL,
  `fr` text DEFAULT NULL,
  `pt` text DEFAULT NULL,
  `hindi` text DEFAULT NULL,
  `bn` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=883 DEFAULT CHARSET=utf8;

INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (1, 'alert', 'admin', '', 'Alert!', 'تنبيه!', '¡Alerta!', 'Внимание!', '警报！', 'Alert!', 'Alerta!', 'अलर्ट!', 'আমার ');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (2, 'net_income', 'admin', '', 'Net income', 'صافي الدخل', 'Ingresos netos', 'Чистая прибыль', '净收入', 'Net income', 'Lucro líquido', 'शुद्ध आय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (3, 'package_by_user', 'admin', '', 'Package by user', 'الحزمة من قبل المستخدم', 'Paquete por usuario', 'Пакет пользователем', '用户打包', 'Package by user', 'Pacote por usuário', 'उपयोगकर्ता द्वारा पैकेज', 'বাংলা ');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (4, 'total_user', 'admin', '', 'Total Users', 'إجمالي المستخدمين', 'Usuarios totales', 'Всего пользователей', '总用户数', 'Total Users', 'Total de usuários', 'कुल उपयोगकर्ता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (5, 'total_package', 'admin', '', 'Total Packages', 'إجمالي الحزم', 'Paquetes totales', 'Всего пакетов', '总包数', 'Total Packages', 'Total de pacotes', 'कुल पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (6, 'total_pages', 'admin', '', 'Total Pages', 'إجمالي الصفحات', 'Total de páginas', 'Всего страниц', '总页数', 'Total Pages', 'Total de páginas', 'कुल पृष्ठ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (7, 'new_payment_request', 'admin', '', 'New payment request', 'طلب دفع جديد', 'Nueva solicitud de pago', 'Новый платежный запрос', '新的付款请求', 'New payment request', 'Novo pedido de pagamento', 'नया भुगतान अनुरोध', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (8, 'not_verified', 'admin', '', 'Not Verified', 'لم يتم التحقق منه', 'No verificado', 'Не проверено', '未验证', 'Not Verified', 'Não verificado', 'सत्यापित नहीं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (9, 'expired_account', 'admin', '', 'Expired account', 'حساب منتهي الصلاحية', 'Cuenta caducada', 'Срок действия учетной записи истек', '过期账户', 'Expired account', 'Conta expirada', 'खाता समाप्त हो गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (10, 'expired_date', 'admin', '', 'Expired Date', 'تاريخ انتهاء الصلاحية', 'Fecha de vencimiento', 'Срок действия истек', '过期日期', 'Expired Date', 'Data de expiração', 'समाप्ति तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (11, 'toatl_revenue', 'admin', '', 'Total revenue', 'إجمالي الإيرادات', 'Ingresos totales', 'Общий доход', '总收入', 'Total revenue', 'Receita total', 'कुल राजस्व', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (12, 'revenue', 'admin', '', 'Revenue', 'الإيرادات', 'Ingresos', 'Доход', '收入', 'Revenue', 'Receita', 'राजस्व', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (13, 'profile', 'admin', '', 'Profile', 'الملف الشخصي', 'Perfil', 'Профиль', '个人资料', 'Profile', 'Perfil', 'प्रोफाइल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (14, 'profile_link', 'admin', '', 'Profile link', 'رابط الملف الشخصي', 'Enlace de perfil', 'Ссылка на профиль', '个人资料链接', 'Profile link', 'Link do perfil', 'प्रोफाइल लिंक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (15, 'copy', 'admin', '', 'Copy', 'نسخ', 'Copiar', 'Копировать', '复制', 'Copy', 'Copiar', 'कॉपी करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (16, 'coppied', 'admin', '', 'Coppied', 'Coppied', 'Coppied', 'Скопировано', '复制', 'Coppied', 'Copiado', 'कॉपी किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (17, 'free', 'user', '', 'Free', 'مجاني', 'Gratis', 'Бесплатно', '免费', 'Free', 'Livre', 'फ्री', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (18, 'trial', 'admin', '', 'Trial', 'تجربة', 'Prueba', 'Проба', '试用', 'Trial', 'Teste', 'परीक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (19, 'package_type', 'user', '', 'Package type', 'نوع الحزمة', 'Tipo de paquete', 'Тип упаковки', '包类型', 'Package type', 'Tipo de pacote', 'पैकेज प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (20, 'features', 'admin', '', 'Features', 'الميزات', 'Funciones', 'Возможности', '功能', 'Features', 'Recursos', 'फीचर्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (21, 'duration', 'admin', '', 'Duration', 'المدة', 'Duración', 'Продолжительность', '持续时间', 'Duration', 'Duração', 'अवधि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (22, 'package_name', 'admin', '', 'Package name', 'اسم الحزمة', 'Nombre del paquete', 'Название пакета', '包名', 'Package name', 'Nome do pacote', 'पैकेज का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (23, 'using_trail_package', 'admin', '', 'You are using trail package', 'أنت تستخدم trail packge', 'Estás usando el paquete de ruta', 'Вы используете трейл-пакет', '您正在使用跟踪包', 'You are using trail package', 'Você está usando o pacote de trilha', 'आप ट्रेल पैकेज का उपयोग कर रहे हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (24, 'trail_package_expired', 'admin', '', 'Your account will expire soon', 'ستنتهي صلاحية حسابك بعد شهر واحد', 'Tu cuenta caducará pronto', 'Срок действия вашей учетной записи скоро истечет', '您的帐户即将到期', 'Your account will expire soon', 'Sua conta irá expirar em breve', 'आपका खाता शीघ्र ही समाप्त हो जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (25, 'change_package', 'admin', '', 'Change Package', 'تغيير الحزمة', 'Cambiar paquete', 'Изменить пакет', '更改包', 'Change Package', 'Alterar Pacote', 'पैकेज बदलें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (26, 'account_not_active', 'admin', '', 'Your Account is not active', 'حسابك غير نشط', 'Su cuenta no está activa', 'Ваша учетная запись неактивна', '您的帐户无效', 'Your Account is not active', 'Sua conta não está ativa', 'आपका खाता सक्रिय नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (27, 'active_now', 'admin', '', 'Active Now', 'نشط الآن', 'Activo ahora', 'Активно сейчас', '现在活动', 'Active Now', 'Ativo agora', 'अभी सक्रिय करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (28, 're_subscription_msg', 'admin', '', 'You have to re-new your subscription to continue', 'يجب إعادة اشتراكك من جديد للمتابعة', 'Tienes que renovar tu suscripción para continuar', 'Чтобы продолжить, необходимо обновить подписку', '您必须重新订阅才能继续', 'You have to re-new your subscription to continue', 'Você deve renovar sua assinatura para continuar', 'जारी रखने के लिए आपको अपनी सदस्यता को फिर से नया करना होगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (29, 'active_account', 'admin', '', 'Active Account', 'حساب نشط', 'Cuenta activa', 'Активная учетная запись', '活跃账户', 'Active Account', 'Conta ativa', 'सक्रिय खाता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (30, 'expired_account_msg', 'admin', '', 'Sorry your account is expired', 'معذرةً , انتهت صلاحية حسابك', 'Lo sentimos, su cuenta ha caducado', 'Извините, срок действия вашей учетной записи истек', '抱歉，您的帐户已过期', 'Sorry your account is expired', 'Desculpe, sua conta expirou', 'क्षमा करें, आपका खाता समाप्त हो गया है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (31, 'payment_pending_msg', 'admin', '', 'Your payment is pending', 'دفعتك معلقة', 'Su pago está pendiente', 'Ваш платеж ожидает обработки', '您的付款待处理', 'Your payment is pending', 'Seu pagamento está pendente', 'आपका भुगतान लंबित है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (32, 'can_pay_subscription', 'admin', '', 'You can pay from subscription', 'يمكنك الدفع من الاشتراك', 'Puede pagar desde la suscripción', 'Оплата по подписке', '您可以通过订阅付款', 'You can pay from subscription', 'Você pode pagar com assinatura', 'आप सदस्यता से भुगतान कर सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (33, 'pay_now', 'admin', '', 'Pay now', 'ادفع الآن', 'Paga ahora', 'Оплатить сейчас', '立即付款', 'Pay now', 'Pague agora', 'अभी भुगतान करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (34, 'pending_request_msg', 'admin', '', 'Your payment request is pending', 'طلب الدفع معلق', 'Su solicitud de pago está pendiente', 'Ваш платежный запрос находится на рассмотрении', '您的付款请求正在处理中', 'Your payment request is pending', 'Sua solicitação de pagamento está pendente', 'आपका भुगतान अनुरोध लंबित है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (35, 'wait_for_confirmation', 'admin', '', 'Please Wait for the confirmation', 'انتظر التأكيد', 'Espere la confirmación', 'Дождитесь подтверждения', '请等待确认', 'Please Wait for the confirmation', 'Aguarde a confirmação', 'कृपया पुष्टि के लिए प्रतीक्षा करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (36, 'try_another_method', 'admin', '', 'Try Another Method', 'جرب طريقة أخرى', 'Prueba con otro método', 'Попробуйте другой метод', '尝试另一种方法', 'Try Another Method', 'Tente outro método', 'एक और तरीका आजमाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (37, 'account_not_verified', 'admin', '', 'Your Account is not Verified', 'لم يتم التحقق من حسابك', 'Su cuenta no está verificada', 'Ваша учетная запись не проверена', '您的帐户未经过验证', 'Your Account is not Verified', 'Sua conta não foi verificada', 'आपका खाता सत्यापित नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (38, 'resend_send_mail_link', 'admin', '', 'Already send a verification link on your email. if not found', 'أرسل بالفعل رابط التحقق على بريدك الإلكتروني. إذا لم يتم العثور عليه', 'Ya envié un enlace de verificación en su correo electrónico. Si no lo encuentra', 'Уже отправил ссылку для подтверждения на вашу электронную почту. Если не найден', '已在您的电子邮件中发送验证链接。如果未找到', 'Already send a verification link on your email. if not found', 'Já envie um link de verificação em seu e-mail. Se não for encontrado', 'पहले से ही अपने ईमेल पर एक सत्यापन लिंक भेजें। यदि नहीं मिला है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (39, 'resend', 'admin', '', 'Resend', 'إعادة الإرسال', 'Reenviar', 'Отправить повторно', '重新发送', 'Resend', 'Reenviar', 'फिर से भेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (40, 'if_mail_not_correct_msg', 'admin', '', 'If your email is not correct then change from profile option', 'إذا كان بريدك الإلكتروني غير صحيح , فغيّر من خيار الملف الشخصي', 'Si su correo electrónico no es correcto, cambie de la opción de perfil', 'Если ваш адрес электронной почты неверен, измените параметр профиля', '如果您的电子邮件不正确，请更改个人资料选项', 'If your email is not correct then change from profile option', 'Se o seu e-mail não estiver correto, mude a opção de perfil', 'यदि आपका ईमेल सही नहीं है तो प्रोफ़ाइल विकल्प से बदलें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (41, 'email', 'label', '', 'Email', 'بريد إلكتروني', 'Correo electrónico', 'Электронная почта', '电子邮件', 'Email', 'Email', 'ईमेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (42, 'settings', 'label', '', 'Settings', 'إعدادات', 'Configuración', 'Настройки', '设置', 'Settings', 'Configurações', 'सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (43, 'email_sub', 'label', '', 'Email subjects', 'إعدادات', 'Asuntos de correo electrónico', 'Тема письма', '电子邮件主题', 'Email subjects', 'Assuntos de e-mail', 'विषयों को ईमेल करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (44, 'registration', 'label', '', 'Registration', 'تسجيل', 'Registro', 'Регистрация', '注册', 'Registration', 'Registro', 'पंजीकरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (45, 'payment_gateway', 'label', '', 'Payment Gateway', 'بوابة الدفع', 'Pasarela de pago', 'Платежный шлюз', '支付网关', 'Payment Gateway', 'Portal de pagamento', 'पेमेंट गेटवे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (46, 'recovery_password', 'label', '', 'Recovery password', 'استعادة كلمة المرور', 'Contraseña de recuperación', 'Пароль восстановления', '找回密码', 'Recovery password', 'Senha de recuperação', 'रिकवरी पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (47, 'admin_email', 'label', '', 'Admin email', 'البريد الإلكتروني للمسؤول', 'Correo electrónico del administrador', 'Адрес электронной почты администратора', '管理员邮箱', 'Admin email', 'Email do administrador', 'व्यवस्थापक ईमेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (48, 'php_mail', 'label', '', 'PHP Mail', 'PHP Mail', 'Correo PHP', 'Почта PHP', 'PHP 邮件', 'PHP Mail', 'PHP Mail', 'PHP मेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (49, 'smtp', 'label', '', 'SMTP', 'SMTP', 'SMTP', 'SMTP', 'SMTP', 'SMTP', 'SMTP', 'एसएमटीपी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (50, 'smtp_host', 'label', '', 'SMTP HOST', 'SMTP HOST', 'SMTP HOST', 'SMTP-ХОСТ', 'SMTP 主机', 'SMTP HOST', 'HOST SMTP', 'एसएमटीपी होस्ट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (51, 'smtp_port', 'label', '', 'SMTP PORT', 'منفذ SMTP', 'PUERTO SMTP', 'ПОРТ SMTP', 'SMTP 端口', 'SMTP PORT', 'PORTA SMTP', 'एसएमटीपी पोर्ट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (52, 'smtp_password', 'label', '', 'SMTP PASSWORD', 'كلمة مرور SMTP', 'CONTRASEÑA SMTP', 'ПАРОЛЬ SMTP', 'SMTP 密码', 'SMTP PASSWORD', 'SENHA SMTP', 'एसएमटीपी पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (53, 'save_change', 'label', '', 'Save Change', 'حفظ التغيير', 'Guardar cambio', 'Сохранить изменение', '保存更改', 'Save Change', 'Salvar alteração', 'परिवर्तन सहेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (54, 'paypal', 'label', '', 'Paypal', 'paypal', 'Paypal', 'Paypal', '贝宝', 'Paypal', 'Paypal', 'पेपैल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (55, 'new_users', 'label', '', 'New Users', 'المستخدمون الجدد', 'Nuevos usuarios', 'Новые пользователи', '新用户', 'New Users', 'Novos usuários', 'नए उपयोगकर्ता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (56, 'add_user', 'label', '', 'Add User', 'إضافة مستخدم', 'Agregar usuario', 'Добавить пользователя', '添加用户', 'Add User', 'Adicionar usuário', 'उपयोगकर्ता जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (57, 'sl', 'label', '', 'Sl', 'Sl', 'Sl', 'Sl', 'Sl', 'Sl', 'Sl', 'क्रम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (58, 'username', 'label', '', 'Username', 'اسم المستخدم', 'Nombre de usuario', 'Имя пользователя', '用户名', 'Username', 'Nome de usuário', 'उपयोगकर्ता नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (59, 'active_date', 'label', '', 'Active Date', 'تاريخ نشط', 'Fecha activa', 'Дата активности', '活动日期', 'Active Date', 'Data ativa', 'सक्रिय तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (60, 'account_type', 'label', '', 'Account type', 'نوع الحساب', 'Tipo de cuenta', 'Тип счета', '账户类型', 'Account type', 'Tipo de conta', 'खाता प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (61, 'action', 'label', '', 'Action', 'إجراء', 'Acción', 'Действие', '动作', 'Action', 'Ação', 'एक्शन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (62, 'users', 'label', '', 'Users', 'المستخدمون', 'Usuarios', 'Пользователи', '用户', 'Users', 'Usuários', 'उपयोगकर्ता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (63, 'status', 'label', '', 'Status', 'الحالة', 'Estado', 'Статус', '状态', 'Status', 'Status', 'स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (64, 'view_profile', 'label', '', 'View Profile', 'عرض الملف الشخصي', 'Ver perfil', 'Просмотреть профиль', '查看个人资料', 'View Profile', 'Ver Perfil', 'प्रोफ़ाइल देखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (65, 'start_date', 'label', '', 'Start Date', 'تاريخ البدء', 'Fecha de inicio', 'Дата начала', '开始日期', 'Start Date', 'Data de início', 'आरंभ तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (66, 'free_account', 'label', '', 'Free account', 'حساب مجاني', 'Cuenta gratuita', 'Бесплатная учетная запись', '免费账户', 'Free account', 'Conta gratuita', 'मुफ़्त खाता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (67, 'trial_package', 'label', '', 'Trial Package', 'الحزمة التجريبية', 'Paquete de prueba', 'Пробный пакет', '试用包', 'Trial Package', 'Pacote de teste', 'परीक्षण पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (68, 'not_active', 'admin', '', 'Not active yet', 'غير نشط بعد', 'Aún no activo', 'Еще не активен', '尚未激活', 'Not active yet', 'Ainda não ativo', 'अभी तक सक्रिय नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (69, 'expired', 'label', '', 'Expired', 'منتهية الصلاحية', 'Caducado', 'Срок действия истек', '已过期', 'Expired', 'Expirado', 'समाप्त हो गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (70, 'active', 'label', '', 'Active', 'نشط', 'Activo', 'Активный', '活动', 'Active', 'Ativo', 'सक्रिय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (71, 'deactive', 'label', '', 'Deactive', 'غير نشط', 'Desactivado', 'Деактивировано', '停用', 'Deactive', 'Desativado', 'निष्क्रिय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (72, 'verified', 'label', '', 'Verified', 'متحقق منه', 'Verificado', 'Подтверждено', '已验证', 'Verified', 'Verificado', 'सत्यापित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (73, 'want_to_verify_this_account', 'admin', '', 'Do you want to verified this account?', 'هل تريد التحقق من هذا الحساب؟', '¿Quieres verificar esta cuenta?', 'Вы хотите подтвердить эту учетную запись?', '您要验证此帐户吗？', 'Do you want to verified this account?', 'Deseja verificar esta conta?', 'क्या आप इस खाते को सत्यापित करना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (74, 'want_to_active_this_account', 'admin', '', 'Do you want to active this account?', 'هل تريد تنشيط هذا الحساب؟', '¿Quieres activar esta cuenta?', 'Вы хотите активировать эту учетную запись?', '您要激活此帐户吗？', 'Do you want to active this account?', 'Deseja ativar esta conta?', 'क्या आप इस खाते को सक्रिय करना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (75, 'payment_is_verified', 'admin', '', 'You payment is verified', 'تم التحقق من دفعتك', 'Su pago está verificado', 'Ваш платеж подтвержден', '您的付款已通过验证', 'You payment is verified', 'Seu pagamento foi verificado', 'आपका भुगतान सत्यापित है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (76, 'paid', 'admin', '', 'Paid', 'مدفوع', 'Pagado', 'Платный', '付费', 'Paid', 'Pago', 'भुगतान किया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (77, 'verified_offline_payment_msg', 'admin', '', ' Do You want to verify this payment? Payment will count as an offline payment', 'هل تريد التحقق من هذه الدفعة؟ سيتم احتساب الدفع كدفعة غير متصلة بالإنترنت', '¿Desea verificar este pago? El pago contará como un pago fuera de línea', 'Подтвердить этот платеж? Платеж будет считаться офлайн-платежом', '您要验证此付款吗？付款将算作离线付款', ' Do You want to verify this payment? Payment will count as an offline payment', 'Deseja verificar este pagamento? O pagamento contará como um pagamento offline', ' क्या आप इस भुगतान को सत्यापित करना चाहते हैं? भुगतान को ऑफ़लाइन भुगतान के रूप में गिना जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (78, 'pending', 'admin', '', 'Pending', 'معلق', 'Pendiente', 'Ожидание', '待定', 'Pending', 'Pendente', 'लंबित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (79, 'delete_user_msg', 'admin', '', ' Want to delete this user? Be careful This user will remove permanently.', 'هل تريد حذف هذا المستخدم؟ انتبه , سيقوم هذا المستخدم بالإزالة نهائيًا.', '¿Quiere eliminar este usuario? Tenga cuidado. Este usuario eliminará permanentemente.', 'Хотите удалить этого пользователя? Будьте осторожны. Этот пользователь удалит навсегда.', '要删除此用户？小心此用户将永久删除。', ' Want to delete this user? Be careful This user will remove permanently.', 'Deseja deletar este usuário? Cuidado, este usuário o removerá permanentemente.', ' इस उपयोगकर्ता को हटाना चाहते हैं? सावधान रहें यह उपयोगकर्ता स्थायी रूप से हटा देगा।', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (80, 'current_package', 'label', '', 'Current package', 'الحزمة الحالية', 'Paquete actual', 'Текущий пакет', '当前包', 'Current package', 'Pacote atual', 'वर्तमान पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (81, 'submit', 'label', '', 'Submit', 'إرسال', 'Enviar', 'Отправить', '提交', 'Submit', 'Enviar', 'सबमिट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (82, 'click_here', 'label', '', 'Click here!', 'انقر هنا!', '¡Haga clic aquí!', 'Щелкните здесь!', '点击这里！', 'Click here!', 'Clique aqui!', 'यहां क्लिक करें!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (83, 'add_new_user', 'label', '', 'Add New User', 'إضافة مستخدم جديد', 'Agregar nuevo usuario', 'Добавить нового пользователя', '添加新用户', 'Add New User', 'Adicionar novo usuário', 'नया उपयोगकर्ता जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (84, 'restaurant_user_name', 'admin', '', 'Restaurant Username', 'اسم مستخدم المطعم', 'Nombre de usuario del restaurante', 'Имя пользователя ресторана', '餐厅用户名', 'Restaurant Username', 'Nome de usuário do restaurante', 'रेस्तरां उपयोगकर्ता नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (85, 'select_package', 'label', '', 'Select Package', 'حدد الحزمة', 'Seleccionar paquete', 'Выбрать пакет', '选择包', 'Select Package', 'Selecionar pacote', 'पैकेज चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (86, 'add_password', 'label', '', 'Add password', 'أضف كلمة مرور', 'Agregar contraseña', 'Добавить пароль', '添加密码', 'Add password', 'Adicionar senha', 'पासवर्ड जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (87, 'password', 'label', '', 'Password', 'كلمة المرور', 'Contraseña', 'Пароль', '密码', 'Password', 'Senha', 'पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (88, 'password_msg_add_user', 'label', '', ' If you do not select add password, Password will create randomly and send user by email', 'إذا لم تحدد إضافة كلمة مرور , فسيتم إنشاء كلمة المرور بشكل عشوائي وإرسال المستخدم بالبريد الإلكتروني', 'Si no selecciona agregar contraseña, la contraseña se creará aleatoriamente y enviará al usuario por correo electrónico', 'Если вы не выберете добавить пароль, пароль будет создан случайным образом и отправлен пользователю по электронной почте', '如果您不选择添加密码，密码将随机创建并通过电子邮件发送给用户', ' If you do not select add password, Password will create randomly and send user by email', 'Se você não selecionar adicionar senha, a senha será criada aleatoriamente e enviará o usuário por e-mail', 'यदि आप पासवर्ड जोड़ें का चयन नहीं करते हैं, तो पासवर्ड बेतरतीब ढंग से बनाएगा और उपयोगकर्ता को ईमेल द्वारा भेजेगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (89, 'create_page', 'label', '', 'Create Page', 'إنشاء صفحة', 'Crear página', 'Создать страницу', '创建页面', 'Create Page', 'Criar página', 'पेज बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (90, 'title', 'label', '', 'Title', 'العنوان', 'Título', 'Заголовок', '标题', 'Title', 'Título', 'शीर्षक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (91, 'slug', 'label', '', 'Slug', 'slug', 'Babosa', 'Слизень', '蛞蝓', 'Slug', 'Slug', 'स्लग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (92, 'details', 'label', '', 'Details', 'تفاصيل', 'Detalles', 'Подробнее', '详情', 'Details', 'Detalhes', 'विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (93, 'live', 'label', '', 'Live', 'مباشر', 'En vivo', 'Живой', '直播', 'Live', 'Ao vivo', 'लाइव', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (94, 'hide', 'label', '', 'Hide', 'إخفاء', 'Ocultar', 'Скрыть', '隐藏', 'Hide', 'Ocultar', 'छिपाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (95, 'cancel', 'label', '', 'Cancel', 'إلغاء', 'Cancelar', 'Отменить', '取消', 'Cancel', 'Cancelar', 'रद्द करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (96, 'all_pages', 'admin', '', 'All Pages', 'كل الصفحات', 'Todas las páginas', 'Все страницы', '所有页面', 'All Pages', 'Todas as páginas', 'सभी पृष्ठ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (97, 'edit', 'label', '', 'Edit', 'تحرير', 'Editar', 'Редактировать', '编辑', 'Edit', 'Editar', 'संपादित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (98, 'delete', 'label', '', 'Delete', 'حذف', 'Eliminar', 'Удалить', '删除', 'Delete', 'Excluir', 'हटाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (99, 'faq', 'label', '', 'Faq', 'التعليمات', 'Preguntas frecuentes', 'Часто задаваемые вопросы', '常见问题', 'Faq', 'Faq', 'फ़ाक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (100, 'faq_list', 'label', '', 'FAQ List', 'قائمة الأسئلة الشائعة', 'Lista de preguntas frecuentes', 'Список часто задаваемых вопросов', '常见问题列表', 'Liste de FAQ', 'Lista Faq', 'अक्सर पूछे जाने वाले प्रश्न सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (101, 'want_to_delete', 'label', '', 'Want to delete?', 'هل تريد الحذف؟', '¿Quieres eliminar?', 'Хотите удалить?', '要删除吗？', 'Voulez-vous supprimer ?', 'Deseja excluir?', 'हटाना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (102, 'how_it_works', 'label', '', 'How it works', 'كيف يعمل', 'Cómo funciona', 'Как это работает', '它是如何工作的', 'Comment ça marche', 'Como funciona', 'यह कैसे काम करता है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (103, 'upload_image', 'label', '', 'Upload Image', 'تحميل الصورة', 'Subir imagen', 'Загрузить изображение', '上传图片', 'Télécharger l\'image', 'Carregar imagem', 'छवि अपलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (104, 'max', 'label', '', 'Max', 'ماكس', 'Máx', 'Макс', '最大', 'Max', 'Máx', 'अधिकतम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (105, 'image', 'label', '', 'Image', 'صورة', 'Imagen', 'Изображение', '图片', 'Image', 'Imagem', 'छवि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (106, 'team', 'label', '', 'Team', 'فريق', 'Equipo', 'Команда', '团队', 'Équipe', 'Equipe', 'टीम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (107, 'designation', 'label', '', 'Designation', 'التعيين', 'Designación', 'Обозначение', '指定', 'Désignation', 'Designação', 'पदनाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (108, 'offline_payments', 'admin', '', 'Offline Payment', 'الدفع دون اتصال بالإنترنت', 'Pago sin conexión', 'Автономный платеж', '离线支付', 'Paiement hors ligne', 'Pagamento offline', 'ऑफ़लाइन भुगतान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (109, 'package', 'admin', '', 'Package', 'حزمة', 'Paquete', 'Пакет', '包', 'Paquet', 'Pacote', 'पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (110, 'txn_id', 'admin', '', 'Txn id', 'معرف Txn', 'ID de Txn', 'Идентификатор передачи', 'Txn id', 'Identifiant Txn', 'Txn id', 'टीएक्सएन आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (111, 'request_date', 'label', '', 'Request Date', 'تاريخ الطلب', 'Fecha de solicitud', 'Дата запроса', '请求日期', 'Date de la demande', 'Data de solicitação', 'अनुरोध दिनांक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (112, 'approve', 'label', '', 'Approve', 'موافقة', 'Aprobar', 'Утвердить', '批准', 'Approuver', 'Aprovar', 'स्वीकृत करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (113, 'approved', 'label', '', 'Approved', 'موافق عليه', 'Aprobado', 'Одобрено', '已批准', 'Approuvé', 'Aprovado', 'स्वीकृत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (114, 'cookie_privacy', 'label', '', 'Cookies & Privacy', 'ملفات تعريف الارتباط والخصوصية', 'Cookies y privacidad', 'Файлы cookie и конфиденциальность', 'Cookie 和隐私', 'Cookies & Confidentialité', 'Cookies e privacidade', 'कुकीज़ और गोपनीयता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (115, 'services', 'label', '', 'Services', 'خدمات', 'Servicios', 'Услуги', '服务', 'Services', 'Serviços', 'सेवाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (116, 'home_features', 'label', '', 'Home Features', 'الميزات الرئيسية', 'Funciones de la casa', 'Домашние функции', '家庭功能', 'Fonctionnalités d\'accueil', 'Recursos da casa', 'होम फीचर्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (117, 'add_new', 'label', '', 'Add New', 'إضافة جديد', 'Agregar nuevo', 'Добавить', '添加新', 'Ajouter un nouveau', 'Adicionar novo', 'नया जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (118, 'upload', 'admin', '', 'Upload', 'تحميل', 'Subir', 'Загрузить', '上传', 'Télécharger', 'Upload', 'अपलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (119, 'select_direction', 'admin', '', 'Select Direction', 'حدد الأوساخ', 'Seleccionar dirección', 'Выбрать направление', '选择方向', 'Sélectionner la direction', 'Selecionar Sujeira', 'दिशा चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (120, 'left_side', 'label', '', 'Left Side', 'الجانب الأيسر', 'Lado izquierdo', 'Левая сторона', '左侧', 'Côté Gauche', 'Lado esquerdo', 'बाईं ओर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (121, 'right_side', 'label', '', 'Right Side', 'الجانب الأيمن', 'Lado derecho', 'Правая сторона', '右侧', 'Côté Droit', 'Lado direito', 'राइट साइड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (122, 'max_character', 'label', '', 'Max character', 'أقصى حرف', 'Carácter máximo', 'Максимальное количество символов', '最大字符数', 'Max caractère', 'Caráter máximo', 'अधिकतम वर्ण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (123, 'icon', 'label', '', 'Icon', 'رمز', 'Icono', 'Значок', '图标', 'Icône', 'Ícone', 'आइकन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (124, 'close', 'label', '', 'Close', 'إغلاق', 'Cerrar', 'Закрыть', '关闭', 'Fermer', 'Fechar', 'बंद करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (125, 'terms_condition', 'label', '', 'Terms & Conditions', 'الشروط والأحكام', 'Términos y condiciones', 'Положения и условия', '条款和条件', 'Termes & Conditions', 'Termos e Condições', 'नियम और शर्तें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (126, 'payment_transaction', 'label', '', 'Payment Transaction', 'معاملة الدفع', 'Transacción de pago', 'Платежная операция', '付款交易', 'Opération de paiement', 'Transação de pagamento', 'भुगतान लेनदेन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (127, 'payment_by', 'label', '', 'Payment by', 'الدفع بواسطة', 'Pago por', 'Оплата через', '付款方式', 'Paiement par', 'Pagamento por', 'द्वारा भुगतान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (128, 'restaurant_details', 'home', '', 'Restaurant Details', 'تفاصيل المطعم', 'Detalles del restaurante', 'Подробнее о ресторане', '餐厅详情', 'Détails du restaurant', 'Detalhes do restaurante', 'रेस्तरां विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (129, 'restaurant_username', 'user', '', 'Restaurant username', 'اسم مستخدم المطعم', 'Nombre de usuario del restaurante', 'Имя пользователя ресторана', '餐厅用户名', 'Nom d\'utilisateur du restaurant', 'Nome de usuário do restaurante', 'रेस्तरां उपयोगकर्ता नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (130, 'must_unique_english', 'user', '', 'Must be in English & Unique', 'يجب أن يكون باللغة الإنجليزية وفريدة من نوعها', 'Debe estar en inglés y ser único', 'Должен быть на английском и уникальном', '必须是英文且独一无二', 'Doit être en anglais et unique', 'Deve ser em inglês e exclusivo', 'अंग्रेज़ी और अद्वितीय में होना चाहिए', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (131, 'county', 'user', '', 'County', 'مقاطعة', 'Condado', 'Уезд', '县', 'Comté', 'Condado', 'काउंटी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (132, 'currency', 'user', '', 'Currency', 'العملة', 'Moneda', 'Валюта', '货币', 'Devise', 'Moeda', 'मुद्रा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (133, 'dial_code', 'user', '', 'Dial code', 'رمز الاتصال', 'Marcar código', 'Код набора', '拨号代码', 'Code de numérotation', 'Código de discagem', 'कोड डायल करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (134, 'phone', 'user', '', 'Phone', 'هاتف', 'Teléfono', 'Телефон', '电话', 'Téléphone', 'Telefone', 'फोन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (135, 'restaurant_full_name', 'user', '', 'Restaurant full name', 'اسم المطعم بالكامل', 'Nombre completo del restaurante', 'Полное название ресторана', '餐厅全名', 'Nom complet du restaurant', 'Nome completo do restaurante', 'रेस्तरां का पूरा नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (136, 'short_name', 'user', '', 'Short name', 'اسم قصير', 'Nombre corto', 'Краткое имя', '简称', 'Nom court', 'Nome abreviado', 'संक्षिप्त नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (137, 'location', 'user', '', 'Location', 'location', 'Ubicación', 'Местоположение', '位置', 'Emplacement', 'Localização', 'स्थान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (138, 'gmap_link', 'user', '', 'Google Map link', 'رابط خريطة Google', 'Enlace a Google Map', 'Ссылка на карту Google', '谷歌地图链接', 'lien Google Map', 'Link do Google Map', 'गूगल मैप लिंक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (139, 'address', 'user', '', 'Address', 'العنوان', 'Dirección', 'Адрес', '地址', 'Adresse', 'Endereço', 'पता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (140, 'logo', 'user', '', 'Logo', 'شعار', 'Logotipo', 'Логотип', '标志', 'Logo', 'Logotipo', 'लोगो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (141, 'cover_photo', 'user', '', 'Cover Photo', 'صورة الغلاف', 'Foto de portada', 'Фотография на обложке', '封面照片', 'Photo de couverture', 'Foto da capa', 'कवर फोटो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (142, 'upload_cover_photo', 'user', '', 'Upload Cover Image', 'تحميل صورة الغلاف', 'Subir imagen de portada', 'Загрузить изображение обложки', '上传封面图片', 'Télécharger l\'image de couverture', 'Carregar imagem de capa', 'कवर इमेज अपलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (143, 'change_pass', 'user', '', 'Change password', 'تغيير كلمة المرور', 'Cambiar contraseña', 'Изменить пароль', '更改密码', 'Changer le mot de passe', 'Alterar senha', 'पासवर्ड बदलें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (144, 'owner_name', 'user', '', 'Owner name', 'اسم المالك', 'Nombre del propietario', 'Имя владельца', '所有者名称', 'Nom du propriétaire', 'Nome do proprietário', 'मालिक का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (145, 'select_county', 'user', '', 'Select Country', 'حدد الدولة', 'Seleccionar país', 'Выбрать страну', '选择国家', 'Sélectionner le pays', 'Selecione o país', 'देश चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (146, 'gender', 'user', '', 'Gender', 'جنس', 'Sexo', 'Пол', '性别', 'Sexe', 'Sexo', 'लिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (147, 'website', 'user', '', 'Website', 'موقع الويب', 'Sitio web', 'Веб-сайт', '网站', 'Site Internet', 'Site', 'वेबसाइट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (148, 'old_pass', 'user', '', 'Old Password', 'كلمة المرور القديمة', 'Contraseña anterior', 'Старый пароль', '旧密码', 'Ancien mot de passe', 'Senha Antiga', 'पुराना पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (149, 'new_pass', 'user', '', 'New Password', 'كلمة مرور جديدة', 'Nueva contraseña', 'Новый пароль', '新密码', 'Nouveau mot de passe', 'Nova senha', 'नया पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (150, 'confirm_password', 'user', '', 'Confirm Password', 'تأكيد كلمة المرور', 'Confirmar contraseña', 'Подтвердить пароль', '确认密码', 'Confirmer le mot de passe', 'Confirmar senha', 'पासवर्ड की पुष्टि करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (151, 'profile_pic', 'user', '', 'Profile Picture', 'صورة الملف الشخصي', 'Imagen de perfil', 'Изображение профиля', '个人资料图片', 'Photo de profil', 'Foto do perfil', 'प्रोफाइल पिक्चर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (152, 'add_edit_info', 'label', '', 'Add / Edit Info', 'إضافة / تحرير المعلومات', 'Agregar / Editar información', 'Добавить / изменить информацию', '添加/编辑信息', 'Ajouter / Modifier des informations', 'Adicionar / editar informações', 'जानकारी जोड़ें / संपादित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (153, 'shop_name', 'user', '', 'Shop Name', 'اسم المتجر', 'Nombre de la tienda', 'Название магазина', '店铺名称', 'Nom de la boutique', 'Nome da loja', 'दुकान का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (154, 'create_your_restaurant', 'user', '', 'Create Your Restaurant', 'أنشئ مطعمك', 'Crea tu restaurante', 'Создай свой ресторан', '创建你的餐厅', 'Créez Votre Restaurant', 'Crie seu restaurante', 'अपना रेस्तरां बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (155, 'warning', 'user', '', 'Warning!', 'تحذير!', '¡Advertencia!', 'Предупреждение!', '警告！', 'Attention!', 'Aviso!', 'चेतावनी!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (156, 'upload_images', 'user', '', 'Upload Images', 'تحميل الصور', 'Subir imágenes', 'Загрузить изображения', '上传图片', 'Télécharger des images', 'Carregar imagens', 'छवियां अपलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (157, 'select', 'user', '', 'Select', 'حدد', 'Seleccionar', 'Выбрать', '选择', 'Sélectionner', 'Selecionar', 'चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (158, 'you_have', 'user', '', 'You have', 'لديك', 'Tienes', 'У вас есть', '你有', 'Vous avez', 'Você tem', 'आपके पास है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (159, 'notifications', 'user', '', 'Notifications', 'إخطارات', 'Notificaciones', 'Уведомления', '通知', 'Notifications', 'Notificações', 'सूचनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (160, 'new_orders_today', 'user', '', 'New Orders today', 'طلبات جديدة اليوم', 'Nuevos pedidos hoy', 'Новые заказы сегодня', '今天有新订单', 'Nouvelles commandes aujourd\'hui', 'Novos pedidos hoje', 'आज के नए आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (161, 'reservation_today', 'user', '', 'Reservation Today', 'الحجز اليوم', 'Reserva hoy', 'Забронировать сегодня', '今日预订', 'Réservation aujourd\'hui', 'Reserva hoje', 'आज आरक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (162, 'completed_orders', 'user', '', 'Completed orders', 'الطلبات المكتملة', 'Pedidos completados', 'Выполненные заказы', '已完成订单', 'Commandes terminées', 'Pedidos concluídos', 'आदेश पूरे हुए', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (163, 'error', 'user', '', 'Error', 'خطأ', 'Error', 'Ошибка', '错误', 'Erreur', 'Erro', 'त्रुटि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (164, 'copyright', 'admin', '', 'Copyright', 'حقوق النشر', 'Copyright', 'Авторские права', '版权', 'Droit d\'auteur', 'Direitos autorais', 'कॉपीराइट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (165, 'version', 'label', '', 'Version', 'الإصدار', 'Versión', 'Версия', '版本', 'Version', 'Versão', 'संस्करण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (166, 'member_since', 'user', '', 'Member since', 'عضو منذ', 'Miembro desde', 'Участник с', '会员自', 'Membre depuis', 'Membro desde', 'सदस्य तब से', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (167, 'last_login', 'admin', '', 'Last Login', 'آخر تسجيل دخول', 'Último inicio de sesión', 'Последний вход', '上次登录', 'Dernière connexion', 'Último login', 'अंतिम लॉगिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (168, 'logout', 'label', '', 'Logout', 'تسجيل الخروج', 'Cerrar sesión', 'Выйти', '退出', 'Déconnexion', 'Logout', 'लॉगआउट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (169, 'dashboard', 'admin', '', 'Dashboard', 'لوحة القيادة', 'Panel de control', 'Панель управления', '仪表板', 'Tableau de bord', 'Painel', 'डैशबोर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (170, 'account_management', 'admin', '', 'Account MANAGEMENT', 'إدارة الحساب', 'ADMINISTRACIÓN DE CUENTAS', 'УПРАВЛЕНИЕ СЧЕТАМИ', '账户管理', 'GESTION DE COMPTE', 'GESTÃO DE CONTA', 'खाता प्रबंधन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (171, 'packages_management', 'admin', '', 'PACKAGES Management', 'إدارة الحزم', 'Gestión de PAQUETES', 'Управление ПАКЕТАМИ', '包管理', 'Gestion des PAQUETS', 'Gerenciamento de PACOTES', 'पैकेज प्रबंधन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (172, 'package_list', 'admin', '', 'Package list', 'قائمة الحزم', 'Lista de paquetes', 'Список пакетов', '包裹清单', 'Liste des paquets', 'Lista de pacotes', 'पैकेज सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (173, 'order_types', 'admin', '', 'Order types', 'أنواع الطلبات', 'Tipos de pedido', 'Типы заказов', '订单类型', 'Types de commandes', 'Tipos de pedidos', 'आदेश प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (174, 'site_management', 'admin', '', 'Site management', 'إدارة الموقع', 'Gestión del sitio', 'Управление сайтом', '站点管理', 'Gestion du site', 'Gerenciamento do site', 'साइट प्रबंधन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (175, 'home', 'admin', '', 'Home', 'المنزل', 'Inicio', 'Дом', '家', 'Accueil', 'Casa', 'होम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (176, 'site_features', 'user', '', 'Site Features', 'ميزات الموقع', 'Características del sitio', 'Особенности сайта', '站点功能', 'Caractéristiques du site', 'Recursos do site', 'साइट की विशेषताएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (177, 'international', 'admin', '', 'INTERNATIONAL', 'دولي', 'INTERNACIONAL', 'МЕЖДУНАРОДНЫЙ', '国际', 'INTERNATIONAL', 'INTERNACIONAL', 'अंतर्राष्ट्रीय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (178, 'languages', 'admin', '', 'Languages', 'اللغات', 'Idiomas', 'Языки', '语言', 'Langues', 'Idiomas', 'भाषाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (179, 'add_languages', 'admin', '', 'Add Languages', 'إضافة لغات', 'Agregar idiomas', 'Добавить языки', '添加语言', 'Ajouter des langues', 'Adicionar idiomas', 'भाषाएँ जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (180, 'dashboard_language', 'admin', '', 'Dashboard Languages', 'لغات لوحة المعلومات', 'Idiomas del panel de control', 'Языки приборной панели', '仪表板语言', 'Langues du tableau de bord', 'Idiomas do painel', 'डैशबोर्ड भाषाएँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (181, 'fontend_language', 'admin', '', 'Frontend Languages', 'لغات Fontend', 'Idiomas Fontend', 'Языки интерфейса', '字体语言', 'Langues des polices', 'Idiomas Fontend', 'फ्रंटेंड लैंग्वेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (182, 'site_setting', 'admin', '', 'Site Settings', 'إعدادات الموقع', 'Configuración del sitio', 'Настройки сайта', '站点设置', 'Paramètres du site', 'Configurações do site', 'साइट सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (183, 'site_settings', 'admin', '', 'Site settings', 'إعدادات الموقع', 'Configuración del sitio', 'Настройки сайта', '站点设置', 'Paramètres du site', 'Configurações do site', 'साइट सेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (184, 'email_settings', 'admin', '', 'Email Settings', 'إعدادات البريد الإلكتروني', 'Configuración de correo electrónico', 'Настройки электронной почты', '电子邮件设置', 'Paramètres de messagerie', 'Configurações de e-mail', 'ईमेल सेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (185, 'payment_settings', 'admin', '', 'Payment settings', 'إعدادات الدفع', 'Configuración de pago', 'Настройки оплаты', '付款设置', 'Paramètres de paiement', 'Configurações de pagamento', 'भुगतान सेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (186, 'home_banner_setting', 'admin', '', 'Banner settings', 'إعدادات البانر', 'Configuración de banner', 'Настройки баннера', '横幅设置', 'Paramètres de la bannière', 'Configurações de banner', 'बैनर सेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (187, 'content', 'admin', '', 'Content', 'محتوى', 'Contenido', 'Контент', '内容', 'Contenu', 'Conteúdo', 'सामग्री', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (188, 'pages', 'admin', '', 'Pages', 'صفحات', 'Páginas', 'Страницы', '页面', 'Pages', 'Páginas', 'पेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (189, 'add_page', 'admin', '', 'Add page', 'إضافة صفحة', 'Agregar página', 'Добавить страницу', '添加页面', 'Ajouter une page', 'Adicionar página', 'पेज जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (190, 'cookies_privacy', 'admin', '', 'Cookie & Privacy', 'ملفات تعريف الارتباط والخصوصية', 'Cookies y privacidad', 'Файлы cookie и конфиденциальность', 'Cookie 和隐私', 'Cookie & Confidentialité', 'Cookie e privacidade', 'कुकी और गोपनीयता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (191, 'user_transaction', 'admin', '', 'User\'s Transactions', 'معاملات المستخدم', 'Transacciones del usuario', 'Операции пользователя', '用户的交易', 'Transactions de l\'utilisateur', 'Transações do usuário', 'उपयोगकर्ता के लेन-देन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (192, 'backup_database', 'admin', '', 'Backup Database', 'قاعدة بيانات النسخ الاحتياطي', 'Copia de seguridad de la base de datos', 'Резервная база данных', '备份数据库', 'Sauvegarder la base de données', 'Backup de banco de dados', 'बैकअप डेटाबेस', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (193, 'subscriptions', 'user', '', 'Subscriptions', 'اشتراكات', 'Suscripciones', 'Подписки', '订阅', 'Abonnements', 'Assinaturas', 'सदस्यता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (194, 'menu', 'user', '', 'Menu', 'قائمة', 'Menú', 'Меню', '菜单', 'Menu', 'Menu', 'मेनू', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (195, 'menu_categories', 'user', '', 'Menu Categories', 'فئات القائمة', 'Categorías de menú', 'Категории меню', '菜单类别', 'Catégories de menus', 'Categorias de menu', 'मेनू श्रेणियाँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (196, 'items', 'user', '', 'Items', 'عناصر', 'Elementos', 'Предметы', '项目', 'Articles', 'Itens', 'आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (197, 'specialties', 'user', '', 'Specialties', 'التخصصات', 'Especialidades', 'Специальности', '特色菜', 'Spécialités', 'Especialidades', 'विशेषताएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (198, 'allergens', 'user', '', 'Allergens', 'مسببات الحساسية', 'Alergenos', 'Аллергены', '过敏原', 'Allergènes', 'Alérgenos', 'एलर्जी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (199, 'live_order', 'user', '', 'Live order', 'طلب مباشر', 'Orden en vivo', 'Живой заказ', '实时订单', 'Commande en direct', 'Encomenda ativa', 'लाइव ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (200, 'reservation', 'user', '', 'Reservation', 'حجز', 'Reserva', 'Бронирование', '预订', 'Réservation', 'Reserva', 'आरक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (201, 'available_days', 'user', '', 'Available days', 'الأيام المتاحة', 'Días disponibles', 'Доступные дни', '可用天数', 'Jours disponibles', 'Dias disponíveis', 'उपलब्ध दिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (202, 'portfolio', 'user', '', 'Portfolio', 'محفظة', 'Portafolio', 'Портфолио', '投资组合', 'Portefeuille', 'Portfólio', 'पोर्टफोलियो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (203, 'social_sites', 'user', '', 'Social sites', 'مواقع اجتماعية', 'Sitios sociales', 'Социальные сайты', '社交网站', 'Sites sociaux', 'Sites sociais', 'सोशल साइट्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (204, 'add_cover_photo', 'user', '', 'Add Cover Photo', 'إضافة صورة الغلاف', 'Agregar foto de portada', 'Добавить обложку', '添加封面照片', 'Ajouter une photo de couverture', 'Adicionar foto de capa', 'कवर फोटो जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (205, 'manage_features', 'user', '', 'Manage Features', 'إدارة الميزات', 'Administrar funciones', 'Управление функциями', '管理功能', 'Gérer les fonctionnalités', 'Gerenciar recursos', 'सुविधाएँ प्रबंधित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (206, 'order_config', 'user', '', 'Order Configuration', 'تكوين الطلب', 'Configuración de pedidos', 'Конфигурация заказа', '订单配置', 'Configuration de la commande', 'Configuração do pedido', 'आदेश विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (207, 'layouts', 'user', '', 'Layouts', 'تخطيطات', 'Diseños', 'Макеты', '布局', 'Mise en page', 'Layouts', 'लेआउट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (208, 'deactive_account', 'user', '', 'Deactivate account', 'حساب غير نشط', 'Cuenta desactivada', 'Деактивированная учетная запись', '无效账户', 'Compte désactivé', 'Conta desativada', 'खाता निष्क्रिय करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (209, 'success', 'label', '', 'Success', 'نجاح', 'Éxito', 'Успех', '成功', 'Succès', 'Sucesso', 'सफलता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (210, 'show_details', 'label', '', 'Show Details', 'إظهار التفاصيل', 'Mostrar detalles', 'Показать подробности', '显示详细信息', 'Afficher les détails', 'Mostrar detalhes', 'विवरण दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (211, 'keyword', 'label', '', 'Keyword', 'Keyword', 'Palabra clave', 'Ключевое слово', '关键字', 'Mot clé', 'Palavra-chave', 'कीवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (212, 'values', 'label', '', 'Values', 'قيم', 'Valores', 'Значения', '值', 'Valeurs', 'Valores', 'मान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (213, 'types', 'label', '', 'Types', 'أنواع', 'Tipos', 'Типы', '类型', 'Types', 'Tipos', 'प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (214, 'admin_language', 'admin', '', 'Admin language', 'لغة المسؤول', 'Idioma del administrador', 'Админский язык', '管理语言', 'Langue d\'administration', 'Idioma do administrador', 'व्यवस्थापक भाषा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (215, 'user_dashboard', 'label', '', 'User dashboard', 'لوحة تحكم المستخدم', 'Panel de usuario', 'Панель управления пользователя', '用户仪表板', 'Tableau de bord utilisateur', 'Painel do usuário', 'उपयोगकर्ता डैशबोर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (216, 'fontend_languages', 'label', '', 'Frontend Language', 'لغة الخط', 'Idioma fuente', 'Язык шрифтов', '字体语言', 'Langue de police', 'Idioma da fonte', 'फ्रंटेंड लैंग्वेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (217, 'others', 'label', '', 'Others', 'آخرون', 'Otros', 'Другое', '其他', 'Autres', 'Outros', 'अन्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (218, 'lang_name', 'admin', '', 'Language name', 'اسم اللغة', 'Nombre del idioma', 'Название языка', '语言名称', 'Nom de la langue', 'Nome do idioma', 'भाषा का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (219, 'language_slug', 'admin', '', 'Language Slug', 'سبيكة اللغة', 'Lenguaje Slug', 'Слаг языка', '语言蛞蝓', 'Limace de langue', 'Idioma Slug', 'लैंग्वेज स्लग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (220, 'left_to_right', 'label', '', 'Left to right', 'من اليسار إلى اليمين', 'De izquierda a derecha', 'Слева направо', '从左到右', 'De gauche à droite', 'Da esquerda para a direita', 'बाएं से दाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (221, 'right_to_left', 'admin', '', 'Right to left', 'من اليمين إلى اليسار', 'De derecha a izquierda', 'Справа налево', '从右到左', 'De droite à gauche', 'Da direita para a esquerda', 'दाएं से बाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (222, 'price', 'admin', '', 'Price', 'السعر', 'Precio', 'Цена', '价格', 'Prix', 'Preço', 'कीमत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (223, 'name', 'label', '', 'Name', 'اسم', 'Nombre', 'Имя', '姓名', 'Nom', 'Nome', 'नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (224, 'create_category', 'user', '', 'Create Category', 'إنشاء فئة', 'Crear categoría', 'Создать категорию', '创建类别', 'Créer une catégorie', 'Criar categoria', 'श्रेणी बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (225, 'category_name', 'user', '', 'Category name', 'اسم الفئة', 'Nombre de categoría', 'Название категории', '类别名称', 'Nom de la catégorie', 'Nome da categoria', 'श्रेणी का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (226, 'select_type', 'label', '', 'Select Type', 'اختر النوع', 'Seleccionar tipo', 'Выбрать тип', '选择类型', 'Sélectionner le type', 'Selecionar tipo', 'प्रकार चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (227, 'pizza', 'user', '', 'Pizza', 'بيتزا', 'Pizza', 'Пицца', '披萨', 'Pizza', 'Pizza', 'पिज्जा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (228, 'burger', 'user', '', 'Burger', 'برجر', 'Hamburguesa', 'Бургер', '汉堡', 'Burger', 'Hambúrguer', 'बर्गर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (229, 'order', 'user', '', 'order', 'طلب', 'pedido', 'заказ', '订单', 'commande', 'pedido', 'आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (230, 'sizes', 'user', '', 'Sizes', 'مقاسات', 'Tamaños', 'Размеры', '尺寸', 'Tailles', 'Tamanhos', 'आकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (231, 'size_name', 'user', '', 'Size Name', 'اسم الحجم', 'Nombre del tamaño', 'Название размера', '尺寸名称', 'Nom de la taille', 'Nome do tamanho', 'आकार का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (232, 'insert_category', 'user', '', 'Please Insert Category', 'الرجاء إدخال فئة', 'Por favor, inserte una categoría', 'Пожалуйста, укажите категорию', '请插入类别', 'Veuillez insérer une catégorie', 'Insira a categoria', 'कृपया श्रेणी डालें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (233, 'insert_item_size', 'user', '', 'Please Insert Item Sizes', 'الرجاء إدخال مقاسات العناصر', 'Por favor, inserte los tamaños de los artículos', 'Пожалуйста, укажите размеры товара', '请输入商品尺寸', 'Veuillez insérer les tailles d\'article', 'Insira os tamanhos dos itens', 'कृपया आइटम का आकार डालें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (234, 'insert_item_size_msg', 'user', '', 'you can set price depends on size (size available for pizza & Burger)', 'يمكنك تعيين السعر بناءً على الحجم (الحجم المتاح للبيتزا والبرغر)', 'puede establecer el precio según el tamaño (el tamaño disponible para pizza y hamburguesa)', 'Вы можете установить цену в зависимости от размера (размер доступен для пиццы и бургера)', '您可以根据尺寸设置价格（披萨和汉堡的尺寸可用）', 'vous pouvez définir le prix en fonction de la taille (taille disponible pour la pizza et le hamburger)', 'você pode definir o preço depende do tamanho (tamanho disponível para pizza e hambúrguer)', 'आप कीमत निर्धारित कर सकते हैं आकार पर निर्भर करता है (पिज्जा और बर्गर के लिए उपलब्ध आकार)', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (235, 'info', 'label', '', 'Info!', 'معلومات!', '¡Información!', 'Информация!', '信息！', 'Info!', 'Informação!', 'जानकारी!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (236, 'you_can_add', 'user', '', 'You can add', 'يمكنك الإضافة', 'Puedes agregar', 'Можно добавить', '您可以添加', 'Vous pouvez ajouter', 'Você pode adicionar', 'आप जोड़ सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (237, 'unlimited', 'user', '', 'Unlimited', 'غير محدود', 'Ilimitado', 'Без ограничений', '无限', 'Illimité', 'Ilimitado', 'असीमित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (238, 'you_reached_max_limit', 'user', '', 'You reached the maximum limit', 'لقد وصلت إلى الحد الأقصى', 'Has alcanzado el límite máximo', 'Вы достигли максимального лимита', '您已达到最大限制', 'Vous avez atteint la limite maximale', 'Você atingiu o limite máximo', 'आप अधिकतम सीमा तक पहुँच गए हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (239, 'you_have_remaining', 'user', '', 'You have remaining', 'المتبقي لديك', 'Te queda', 'У вас осталось', '你还有剩余', 'Il vous reste', 'Você ainda tem', 'आप शेष हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (240, 'out_of', 'user', '', 'out of', 'خارج', 'fuera de', 'из', '出', 'sur', 'fora de', 'बाहर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (241, 'add_items', 'user', '', 'add items', 'إضافة عناصر', 'agregar elementos', 'добавить элементы', '添加项目', 'ajouter des éléments', 'adicionar itens', 'आइटम जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (242, 'is_size', 'user', '', 'Is Size', 'هو الحجم', 'Es el tamaño', 'Размер', '是尺寸', 'Est la taille', 'É tamanho', 'इज़ साइज़', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (243, 'veg_type', 'label', '', 'veg type', 'نوع نباتي', 'tipo vegetal', 'Тип овощей', '蔬菜类型', 'type de légumes', 'tipo vegetariano', 'शाकाहारी प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (244, 'non_veg', 'label', '', 'Non veg', 'غير نباتي', 'No vegetariano', 'Без овощей', '非蔬菜', 'Non végétarien', 'Não veg', 'मांसाहारी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (245, 'veg', 'label', '', 'veg', 'نباتي', 'verduras', 'овощи', '蔬菜', 'végétal', 'veg', 'शाकाहारी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (246, 'small_description', 'user', '', 'small description', 'وصف صغير', 'pequeña descripción', 'небольшое описание', '小说明', 'petite description', 'pequena descrição', 'छोटा विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (247, 'show_in_homepage', 'user', '', 'Show in home page', 'إظهار في الصفحة الرئيسية', 'Mostrar en la página de inicio', 'Показать на главной странице', '显示在首页', 'Afficher en page d\'accueil', 'Mostrar na página inicial', 'होम पेज में दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (248, 'add_packages', 'user', '', 'Add Package', 'إضافة حزمة', 'Agregar paquete', 'Добавить пакет', '添加包', 'Ajouter un package', 'Adicionar pacote', 'पैकेज जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (249, 'is_discount', 'user', '', 'Is Discount', 'خصم', 'Es un descuento', 'Скидка', '是折扣', 'Est une remise', 'É desconto', 'डिस्काउंट है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (250, 'custom_price', 'user', '', 'Custom Price', 'سعر مخصص', 'Precio personalizado', 'Специальная цена', '自定义价格', 'Prix personnalisé', 'Preço personalizado', 'कस्टम मूल्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (251, 'discount', 'user', '', 'discount', 'خصم', 'descuento', 'скидка', '折扣', 'remise', 'desconto', 'छूट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (252, 'is_upcoming', 'user', '', 'Is Upcoming', 'قادم', 'Próximamente', 'Скоро', '即将到来', 'Est à venir', 'Está em breve', 'इज़ अपकमिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (253, 'days', 'user', '', 'days', 'أيام', 'días', 'дней', '天', 'jours', 'dias', 'दिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (254, 'empty_item_package', 'user', '', 'Empty Item For Packages', 'إفراغ عنصر للحزم', 'Artículo vacío para paquetes', 'Пустой элемент для пакетов', '包裹的空物品', 'Élément vide pour les packages', 'Item vazio para pacotes', 'पैकेज के लिए खाली आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (255, 'empty_item_package_msg', 'user', '', 'You have to create item without size for package', 'عليك إنشاء عنصر بدون حجم للحزمة', 'Tienes que crear un artículo sin tamaño para el paquete', 'Вы должны создать элемент без размера для пакета', '您必须为包裹创建没有尺寸的项目', 'Vous devez créer un article sans taille pour le package', 'Você deve criar um item sem tamanho para o pacote', 'आपको पैकेज के लिए आकार के बिना आइटम बनाना होगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (256, 'is_price_msg_1', 'user', 'Is price is for custom price if you want to set custom price for package.', 'Is price is for custom price if you want to set custom price for package.', 'هو السعر لسعر مخصص إذا كنت تريد تعيين سعر مخصص للحزمة.', 'El precio es para el precio personalizado si desea establecer un precio personalizado para el paquete.', 'Цена указана по индивидуальной цене, если вы хотите установить индивидуальную цену для пакета.', '如果您想为包裹设置自定义价格，价格是否为自定义价格。', 'Le prix est-il pour un prix personnalisé si vous souhaitez définir un prix personnalisé pour le package.', 'O preço é para o preço personalizado se você deseja definir o preço personalizado para o pacote.', 'क्या कीमत कस्टम कीमत के लिए है यदि आप पैकेज के लिए कस्टम मूल्य निर्धारित करना चाहते हैं।', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (257, 'is_price_msg_2', 'user', 'Otherwise price will set  after calculation all items prices', 'Otherwise price will set after calculation all items prices', 'وإلا فسيتم تعيين السعر بعد حساب أسعار جميع العناصر', 'De lo contrario, el precio se establecerá después del cálculo de los precios de todos los artículos', 'В противном случае цена будет установлена ​​после расчета цен на все товары', '否则价格将在计算所有商品价格后设置', 'Sinon, le prix sera fixé après calcul des prix de tous les articles', 'Caso contrário, o preço será definido após o cálculo de preços de todos os itens', 'अन्यथा मूल्य सभी वस्तुओं की कीमतों की गणना के बाद निर्धारित किया जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (258, 'discount_msg', 'user', 'If you want to set discount for this package', 'If you want to set discount for this package', 'إذا كنت تريد تعيين خصم لهذه الحزمة', 'Si desea establecer un descuento para este paquete', 'Если вы хотите установить скидку на этот пакет', '如果您想为此套餐设置折扣', 'Si vous souhaitez définir une remise pour ce forfait', 'Se você deseja definir um desconto para este pacote', 'यदि आप इस पैकेज के लिए छूट निर्धारित करना चाहते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (259, 'featured', 'user', 'Featured', 'Featured', 'مميزة', 'Destacado', 'Рекомендуемое', '精选', 'En vedette', 'Apresentado', 'फीचर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (260, 'overview', 'user', 'Overview', 'overview', 'نظرة عامة', 'descripción general', 'обзор', '概述', 'aperçu', 'visão geral', 'अवलोकन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (261, 'order_id', 'user', 'Order ID', 'Order ID', 'معرف الطلب', 'ID de pedido', 'Идентификатор заказа', '订单编号', 'N° de commande', 'ID do pedido', 'आदेश आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (262, 'order_details', 'user', 'Order Details', 'Order Details', 'تفاصيل الطلب', 'Detalles del pedido', 'Детали заказа', '订单详情', 'Détails de la commande', 'Detalhes do pedido', 'आदेश विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (263, 'delivery_charge', 'user', 'Delivery charge', 'delivery charge', 'رسوم التوصيل', 'gastos de envío', 'стоимость доставки', '运费', 'frais de livraison', 'taxa de entrega', 'डिलीवरी चार्ज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (264, 'total_person', 'user', 'Total Person', 'Total Person', 'إجمالي عدد الأشخاص', 'Persona total', 'Всего человек', '总人数', 'Personne totale', 'Total Pessoa', 'कुल व्यक्ति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (265, 'pickup_time', 'user', 'Pickup time', 'Pickup time', 'وقت الاستلام', 'Hora de recogida', 'Время получения', '取件时间', 'Heure de prise en charge', 'Horário de coleta', 'पिकअप समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (266, 'accept', 'admin', 'accept', 'accept', 'قبول', 'aceptar', 'принять', '接受', 'accepter', 'aceitar', 'स्वीकार करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (267, 'completed', 'user', 'Completed', 'Completed', 'مكتمل', 'Completado', 'Завершено', '已完成', 'Terminé', 'Concluído', 'पूर्ण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (268, 'accepted', 'user', 'Accepted', 'accepted', 'مقبول', 'aceptado', 'принято', '接受', 'accepté', 'aceito', 'स्वीकृत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (269, 'cancled', 'user', 'Cancled', 'Cancled', 'ملغى', 'Cancelado', 'Прервано', '取消', 'Annulé', 'Cancelado', 'रद्द किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (270, 'order_list', 'user', 'Order list', 'order list', 'قائمة الطلبات', 'lista de pedidos', 'список заказов', '订单列表', 'liste de commandes', 'lista de pedidos', 'आदेश सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (271, 'item_name', 'user', 'Item name', 'item name', 'اسم العنصر', 'nombre del artículo', 'название предмета', '物品名称', 'nom de l\'élément', 'nome do item', 'आइटम का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (272, 'live_orders', 'user', 'Live orders', 'live orders', 'أوامر مباشرة', 'pedidos en vivo', 'живые заказы', '实时订单', 'commandes en direct', 'pedidos ativos', 'लाइव ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (273, 'all_orders', 'user', 'All orders', 'all orders', 'كل الطلبات', 'todos los pedidos', 'все заказы', '所有订单', 'toutes les commandes', 'todos os pedidos', 'सभी आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (274, 'order_number', 'user', 'Order number', 'order number', 'رقم الطلب', 'número de pedido', 'номер заказа', '订单号', 'numéro de commande', 'número do pedido', 'आदेश संख्या', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (275, 'order_type', 'user', 'Order type', 'order type', 'نوع الطلب', 'tipo de pedido', 'тип заказа', '订单类型', 'type de commande', 'tipo de pedido', 'आदेश प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (276, 'canceled', 'user', 'Canceled', 'canceled', 'ملغاة', 'cancelado', 'отменено', '取消', 'annulé', 'cancelado', 'रद्द किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (277, 'create_trail_package_msg', 'user', 'Please Create a Trail Package first', 'Please Create a Trail Package first', 'الرجاء إنشاء حزمة التتبع أولاً', 'Por favor, primero cree un paquete de senderos', 'Сначала создайте пакет для отслеживания', '请先创建一个跟踪包', 'Veuillez d\'abord créer un package de randonnée', 'Por favor, crie um pacote de trilha primeiro', 'कृपया पहले एक ट्रेल पैकेज बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (278, 'create_trail_package_msg_1', 'user', 'After create trial package you can able to create free/others packages', 'After creating trial package you can able to create free/others packages', 'بعد إنشاء حزمة تجريبية يمكنك إنشاء حزم مجانية / أخرى', 'Después de crear el paquete de prueba, puede crear paquetes gratuitos / otros', 'После создания пробного пакета вы сможете создавать бесплатные / другие пакеты', '创建试用包后，您可以创建免费/其他包', 'Après avoir créé un package d\'essai, vous pouvez créer des packages gratuits/autres', 'Depois de criar o pacote de teste, você pode criar pacotes grátis / outros', 'ट्रायल पैकेज बनाने के बाद आप मुफ्त/अन्य पैकेज बनाने में सक्षम हो सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (279, 'trial_for_month', 'admin', 'Trial for 1 Month', 'Trial for 1 Month', 'تجربة لمدة شهر واحد', 'Prueba de 1 mes', 'Пробная версия на 1 месяц', '试用 1 个月', 'Essai pendant 1 mois', 'Teste por 1 mês', '1 महीने के लिए परीक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (280, 'monthly', 'admin', 'monthly', 'monthly', 'شهريًا', 'mensual', 'ежемесячно', '每月', 'mensuel', 'mensal', 'मासिक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (281, 'yearly', 'admin', 'yearly', 'yearly', 'سنوي', 'anual', 'ежегодно', '每年', 'annuel', 'anual', 'वार्षिक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (282, 'set_free_for_month', 'admin', 'Account will set Free for 1 month', 'Account will set Free for 1 month', 'سيتم تعيين الحساب مجانًا لمدة شهر واحد', 'La cuenta se liberará durante 1 mes', 'Аккаунт будет бесплатно на 1 месяц', '帐户将免费设置 1 个月', 'Le compte sera gratuit pendant 1 mois', 'A conta será definida gratuitamente por 1 mês', 'खाता 1 महीने के लिए नि:शुल्क रहेगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (283, 'limit_text_msg_1', 'admin', 'Set limit for Order & Items. How many Order & items will available for this package', 'Set limit for Order & Items. How many Order & items will available for this package', 'تعيين حد للطلب والعناصر. كم عدد الطلبات والعناصر التي ستتوفر لهذه الحزمة', 'Establecer límite para pedidos y artículos. Cuántos pedidos y artículos estarán disponibles para este paquete', 'Установить лимит для заказа и товаров. Сколько заказов и товаров будет доступно для этого пакета', '为订单和商品设置限制。此包裹有多少订单和商品可用', 'Définir la limite pour la commande et les articles. Combien de commandes et d\'articles seront disponibles pour ce package', 'Definir limite para pedidos e itens. Quantos pedidos e itens estarão disponíveis para este pacote', 'आदेश और वस्तुओं के लिए सीमा निर्धारित करें। इस पैकेज के लिए कितने ऑर्डर और आइटम उपलब्ध होंगे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (284, 'limit_text_msg_2', 'admin', 'Select limit from drop down. if you not select any limit then it will set by default', 'Select limit from dropdown. if you do not select any limit then it will set by default', 'حدد حدًا من القائمة المنسدلة. إذا لم تحدد أي حد , فسيتم تعيينه افتراضيًا', 'Seleccione el límite del menú desplegable. Si no selecciona ningún límite, se establecerá de forma predeterminada', 'Выберите лимит из раскрывающегося списка. Если вы не выберете какой-либо лимит, он будет установлен по умолчанию', '从下拉列表中选择限制。如果你没有选择任何限制，那么它将默认设置', 'Sélectionnez la limite dans la liste déroulante. Si vous ne sélectionnez aucune limite, elle sera définie par défaut', 'Selecione o limite no menu suspenso. Se você não selecionar nenhum limite, ele será definido por padrão', 'ड्रॉपडाउन से सीमा चुनें। यदि आप कोई सीमा नहीं चुनते हैं तो यह डिफ़ॉल्ट रूप से सेट हो जाएगी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (285, 'add_change_feature', 'admin', 'Change/add Features', 'Change/add Features', 'تغيير / إضافة ميزات', 'Cambiar / agregar funciones', 'Изменить / добавить функции', '更改/添加功能', 'Modifier/ajouter des fonctionnalités', 'Alterar / adicionar recursos', 'सुविधाएँ बदलें/जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (286, 'stripe', 'admin', 'stripe', 'stripe', 'شريط', 'raya', 'полоса', '条纹', 'rayure', 'faixa', 'पट्टी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (287, 'razorpay', 'admin', 'razorpay', 'razorpay', 'رازورباي', 'razorpay', 'razorpay', 'razorpay', 'razorpay', 'razorpay', 'रेज़रपे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (288, 'offline', 'admin', 'offline', 'offline', 'غير متصل', 'sin conexión', 'офлайн', '离线', 'hors ligne', 'offline', 'ऑफ़लाइन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (289, 'payment_via', 'admin', 'payment via', 'payment via', 'الدفع عن طريق', 'pago mediante', 'оплата через', '付款方式', 'paiement via', 'pagamento via', 'के माध्यम से भुगतान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (290, 'send_payment_req', 'admin', 'Send a payment request', 'Send a payment request', 'إرسال طلب دفع', 'Enviar una solicitud de pago', 'Отправить запрос на оплату', '发送付款请求', 'Envoyer une demande de paiement', 'Enviar um pedido de pagamento', 'एक भुगतान अनुरोध भेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (291, 'payment_verified_successfully', 'admin', 'Your payment verified successfully', 'Your payment verified successfully', 'تم التحقق من دفعتك بنجاح', 'Su pago verificado correctamente', 'Ваш платеж успешно подтвержден', '您的付款已成功验证', 'Votre paiement vérifié avec succès', 'Seu pagamento verificado com sucesso', 'आपका भुगतान सफलतापूर्वक सत्यापित किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (292, 'ok', 'admin', 'ok', 'ok', 'موافق', 'ok', 'хорошо', '好的', 'd\'accord', 'ok', 'ठीक है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (293, 'stripe_payment_gateway', 'admin', 'Stripe Payment Gateway', 'Stripe Payment Gateway', 'بوابة الدفع الشريطية', 'Pasarela de pago de Stripe', 'Платежный шлюз Stripe', '条带支付网关', 'Passerelle de paiement Stripe', 'Gateway de pagamento de tarja', 'स्ट्राइप पेमेंट गेटवे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (294, 'name_on_card', 'label', 'name on card', 'name on card', 'الاسم على البطاقة', 'nombre en la tarjeta', 'имя на карточке', '卡片上的名字', 'nom sur la carte', 'nome no cartão', 'कार्ड पर नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (295, 'card_number', 'admin', 'Card number', 'Card number', 'رقم البطاقة', 'Número de tarjeta', 'Номер карты', '卡号', 'Numéro de carte', 'Número do cartão', 'कार्ड नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (296, 'month', 'admin', 'month', 'month', 'شهر', 'mes', 'месяц', '月', 'mois', 'mês', 'माह', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (297, 'year', 'admin', 'year', 'year', 'السنة', 'año', 'год', '年', 'année', 'ano', 'वर्ष', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (298, 'cvc', 'admin', 'cvc', 'cvc', 'cvc', 'cvc', 'cvc', 'cvc', 'cvc', 'cvc', 'सीवीसी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (299, 'whatsapp_number', 'label', 'whatsapp Number', 'whatsapp Number', 'رقم whatsapp', 'Número de WhatsApp', 'Номер WhatsApp', 'whatsapp 号码', 'Numéro WhatsApp', 'Número Whatsapp', 'व्हाट्सएप नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (300, 'youtube', 'home', 'youtube', 'youtube', 'youtube', 'youtube', 'youtube', 'youtube', 'youtube', 'youtube', 'यूट्यूब', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (301, 'facebook', 'home', 'facebook', 'facebook', 'facebook', 'facebook', 'facebook', '脸书', 'facebook', 'facebook', 'फेसबुक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (302, 'facebook_link', 'home', 'facebook link', 'facebook link', 'رابط فيسبوك', 'enlace de Facebook', 'ссылка на facebook', '脸书链接', 'lien facebook', 'link do Facebook', 'फेसबुक लिंक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (303, 'twitter', 'home', 'twitter', 'twitter', 'twitter', 'twitter', 'твиттер', '推特', 'twitter', 'twitter', 'ट्विटर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (304, 'instagram', 'home', 'instagram', 'instagram', 'instagram', 'instagram', 'instagram', 'instagram', 'instagram', 'instagram', 'इंस्टाग्राम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (305, 'about_short', 'home', 'about Short text', 'about Short text', 'حول نص قصير', 'sobre el texto corto', 'Краткий текст', '关于短文本', 'à propos du texte court', 'sobre texto curto', 'लघु पाठ के बारे में', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (306, 'profile_qr', 'home', 'Profile QR code', 'Profile QR code', 'رمز الاستجابة السريعة للملف الشخصي', 'Código QR de perfil', 'QR-код профиля', '个人资料二维码', 'Code QR du profil', 'Código QR do perfil', 'प्रोफाइल क्यूआर कोड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (307, 'download', 'home', 'Download', 'Download', 'تنزيل', 'Descargar', 'Скачать', '下载', 'Télécharger', 'Baixar', 'डाउनलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (308, 'start_time', 'home', 'start time', 'start time', 'وقت البدء', 'hora de inicio', 'время начала', '开始时间', 'heure de début', 'hora de início', 'प्रारंभ समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (309, 'end_time', 'home', 'end time', 'end time', 'وقت الانتهاء', 'hora de finalización', 'время окончания', '结束时间', 'heure de fin', 'hora de término', 'अंत समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (310, 'time_picker', 'home', 'Time picker', 'Time picker', 'منتقي الوقت', 'Selector de tiempo', 'Выбор времени', '时间选择器', 'Sélecteur de temps', 'Seletor de hora', 'समय चुनने वाला', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (311, 'reservation_types', 'home', 'reservation types', 'reservation types', 'أنواع الحجز', 'tipos de reserva', 'типы бронирования', '预订类型', 'types de réservation', 'tipos de reserva', 'आरक्षण प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (312, 'type_name', 'home', 'type name', 'type name', 'اسم النوع', 'nombre de tipo', 'название типа', '类型名称', 'type de nom', 'nome do tipo', 'नाम टाइप करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (313, 'reservation_type_list', 'home', 'reservation type list', 'reservation type list', 'قائمة نوع الحجز', 'lista de tipos de reserva', 'список типов бронирования', '预订类型列表', 'liste des types de réservation', 'lista de tipo de reserva', 'आरक्षण प्रकार सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (314, 'all_reservation_list', 'home', 'All Reservation list', 'All Reservation list', 'قائمة كافة الحجوزات', 'Lista de todas las reservas', 'Весь список бронирования', '所有预订列表', 'Toutes les listes de réservations', 'Lista de todas as reservas', 'सभी आरक्षण सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (315, 'todays_reservations', 'home', 'Todays Reservation', 'Todays Reservation', 'حجز اليوم', 'Reserva de hoy', 'Сегодняшнее бронирование', '今日预订', 'Réservation aujourd\'hui', 'Reserva de hoje', 'आज का आरक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (316, 'comments', 'home', 'comments', 'comments', 'تعليقات', 'comentarios', 'комментарии', '评论', 'commentaires', 'comentários', 'टिप्पणियां', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (317, 'table_reservation', 'home', 'Table Reservation', 'Table Reservation', 'حجز منضدة', 'Reserva de mesa', 'Бронирование столика', '餐桌预订', 'Réservation de table', 'Reserva de mesa', 'टेबल रिजर्वेशन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (318, 'if_use_smtp', 'label', 'if You use SMTP Mail', 'if You use SMTP Mail', 'إذا كنت تستخدم بريد SMTP', 'si usa correo SMTP', 'если вы используете почту SMTP', '如果您使用 SMTP 邮件', 'si vous utilisez la messagerie SMTP', 'se você usar correio SMTP', 'यदि आप एसएमटीपी मेल का उपयोग करते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (319, 'smtp_info_msg', 'label', 'Make sure SMTP MAIL, SMTP HOST, SMTP PORT and SMTP PASSWORD is correct', 'Make sure SMTP MAIL, SMTP HOST, SMTP PORT and SMTP PASSWORD is correct', 'تأكد من صحة بريد SMTP ومضيف SMTP ومنفذ SMTP وكلمة مرور SMTP', 'Asegúrese de que SMTP MAIL, SMTP HOST, SMTP PORT y SMTP PASSWORD sean correctos', 'Убедитесь, что SMTP MAIL, SMTP HOST, SMTP PORT и SMTP PASSWORD верны', '确保 SMTP MAIL, SMTP HOST, SMTP PORT 和 SMTP PASSWORD 正确', 'Assurez-vous que SMTP MAIL, SMTP HOST, SMTP PORT et SMTP PASSWORD sont corrects', 'Certifique-se de que SMTP MAIL, SMTP HOST, SMTP PORT e SMTP PASSWORD estão corretos', 'सुनिश्चित करें कि एसएमटीपी मेल, एसएमटीपी होस्ट, एसएमटीपी पोर्ट और एसएमटीपी पासवर्ड सही है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (320, 'registration_subject', 'admin', 'Registration Email subject', 'Registration Email subject', 'موضوع البريد الإلكتروني للتسجيل', 'Asunto del correo electrónico de registro', 'Тема электронного письма для регистрации', '注册邮件主题', 'Objet de l\'email d\'inscription', 'Assunto do e-mail de registro', 'पंजीकरण ईमेल विषय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (321, 'payment_mail_subject', 'label', 'Payment mail subject', 'Payment mail subject', 'موضوع بريد الدفع', 'Asunto del correo de pago', 'Тема платежного письма', '付款邮件主题', 'Objet du courrier de paiement', 'Assunto do correio de pagamento', 'भुगतान मेल विषय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (322, 'recovery_password_heading', 'user', 'Recovery Passowrd', 'Recovery Passowrd', 'كلمة مرور الاسترداد', 'Contraseña de recuperación', 'Пароль восстановления', '恢复密码', 'Mot de passe de récupération', 'Senha de recuperação', 'रिकवरी पासवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (323, 'linkedin', 'label', 'linkedin', 'linkedin', 'ينكدين', 'linkedin', 'linkedin', 'linkedin', 'linkedin', 'linkedin', 'लिंक्डिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (324, 'home_banner', 'admin', 'Home Banner', 'Home Banner', 'لافتة الصفحة الرئيسية', 'Banner de inicio', 'Домашний баннер', '首页横幅', 'Bannière d\'accueil', 'Banner inicial', 'होम बैनर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (325, 'home_small_banner', 'admin', 'Home small banner', 'Home small banner', 'بانر صغير للمنزل', 'Banner pequeño de inicio', 'Домашний маленький баннер', '首页小横幅', 'Home petite bannière', 'Faixa inicial pequena', 'होम स्मॉल बैनर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (326, 'section_banner', 'admin', 'section banner', 'section banner', 'بانر القسم', 'banner de sección', 'баннер раздела', '栏目横幅', 'bannière section', 'banner de seção', 'अनुभाग बैनर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (327, 'add', 'admin', 'add', 'add', 'إضافة', 'agregar', 'добавить', '添加', 'ajouter', 'adicionar', 'जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (328, 'section_name', 'admin', 'section name', 'section name', 'اسم القسم', 'nombre de la sección', 'название раздела', '部分名称', 'nom de la section', 'nome da seção', 'अनुभाग का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (329, 'pricing', 'admin', 'pricing', 'pricing', 'التسعير', 'precio', 'цена', '定价', 'tarif', 'preços', 'मूल्य निर्धारण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (330, 'reviews', 'admin', 'reviews', 'reviews', 'مراجعات', 'opiniones', 'отзывы', '评论', 'avis', 'comentários', 'समीक्षाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (331, 'contacts', 'admin', 'contacts', 'contacts', 'جهات اتصال', 'contactos', 'контакты', '联系人', 'contacts', 'contatos', 'संपर्क', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (332, 'section', 'admin', 'section', 'section', 'قسم', 'sección', 'раздел', '部分', 'section', 'seção', 'सेक्शन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (333, 'heading', 'label', 'heading', 'heading', 'عنوان', 'título', 'заголовок', '标题', 'titre', 'título', 'शीर्षक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (334, 'sub_heading', 'admin', 'sub heading', 'sub heading', 'عنوان فرعي', 'subtítulo', 'подзаголовок', '子标题', 'sous-titre', 'subtítulo', 'उप शीर्षक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (335, 'banner', 'admin', 'banner', 'banner', 'بانر', 'banner', 'баннер', '横幅', 'bannière', 'banner', 'बैनर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (336, 'paypal_payment', 'admin', 'paypal_ payment', 'paypal payment', 'دفع paypal', 'pago con paypal', 'оплата через PayPal', '贝宝付款', 'paiement paypal', 'pagamento paypal', 'पेपैल भुगतान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (337, 'sandbox', 'admin', 'sandbox', 'sandbox', 'وضع الحماية', 'caja de arena', 'песочница', '沙盒', 'bac à sable', 'sandbox', 'सैंडबॉक्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (338, 'paypal_email', 'admin', 'Paypal Email', 'Paypal Email', 'بريد باي بال', 'Correo electrónico de Paypal', 'Электронная почта Paypal', '贝宝邮箱', 'Email Paypal', 'Email Paypal', 'पेपैल ईमेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (339, 'paypal_business_email', 'admin', 'Paypal Business Email', 'Paypal Business Email', 'البريد الإلكتروني للأعمال Paypal', 'Correo electrónico comercial de Paypal', 'Деловая электронная почта Paypal', 'Paypal 企业邮箱', 'Email professionnel Paypal', 'Email comercial Paypal', 'पेपैल बिजनेस ईमेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (340, 'stripe_payment', 'admin', 'stripe Payment Gateway', 'stripe Payment Gateway', 'بوابة الدفع الشريطية', 'Pasarela de pago de banda', 'Stripe Payment Gateway', '条带支付网关', 'passerelle de paiement stripe', 'Portal de pagamento stripe', 'स्ट्राइप पेमेंट गेटवे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (341, 'stripe_public_key', 'admin', 'Stripe Public key', 'Stripe Public key', 'مفتاح شريطي عام', 'Clave pública de banda', 'Открытый ключ полосы', '条带公钥', 'Clé publique de bande', 'Chave pública Stripe', 'स्ट्राइप पब्लिक की', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (342, 'stripe_secret_key', 'admin', 'Stripe Secret key', 'Stripe Secret key', 'مفتاح الشريط السري', 'Clave secreta de banda', 'Полоса секретного ключа', '条带密钥', 'Clé secrète à rayures', 'Chave secreta Stripe', 'स्ट्राइप सीक्रेट की', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (343, 'razorpay_payment', 'admin', 'razorpay payment', 'razorpay payment', 'دفع razorpay', 'pago razorpay', 'платеж razorpay', 'razorpay 付款', 'paiement razorpay', 'pagamento razorpay', 'रेज़रपे भुगतान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (344, 'razorpay_key', 'admin', 'Razorpay Key', 'Razorpay Key', 'مفتاح Razorpay', 'Clave de Razorpay', 'Ключ Razorpay', 'Razorpay 密钥', 'Clé Razorpay', 'Chave Razorpay', 'रेजोरपे की', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (345, 'favicon', 'admin', 'favicon', 'favicon', 'الرمز المفضل', 'favicon', 'значок', '收藏夹', 'icône favic', 'favicon', 'फेविकॉन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (346, 'site_logo', 'admin', 'site_logo', 'site logo', 'site logo', 'logotipo del sitio', 'логотип сайта', '网站标志', 'logo du site', 'logotipo do site', 'साइट लोगो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (347, 'time_zone', 'admin', 'time zone', 'time zone', 'المنطقة الزمنية', 'zona horaria', 'часовой пояс', '时区', 'fuseau horaire', 'fuso horário', 'समय क्षेत्र', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (348, 'site_name', 'label', 'site name', 'site name', 'اسم الموقع', 'nombre del sitio', 'название сайта', '站点名称', 'nom du site', 'nome do site', 'साइट का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (349, 'description', 'admin', 'description', 'description', 'الوصف', 'descripción', 'описание', '描述', 'description', 'descrição', 'विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (350, 'google_analytics', 'admin', 'Google Analytics', 'Google Analytics', 'تخطيط التسعي', 'Google Analytics', 'Google Analytics', '谷歌分析', 'Google Analytics', 'Google Analytics', 'गूगल एनालिटिक्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (351, 'pricing_layout', 'admin', 'pricing layout', 'pricing layout', 'تخطيط التسعير', 'diseño de precios', 'макет цен', '定价布局', 'mise en page des prix', 'layout de preços', 'मूल्य निर्धारण लेआउट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (352, 'style_1', 'admin', 'Style 1', 'Style 1', 'النمط 1', 'Estilo 1', 'Стиль 1', '样式 1', 'Style 1', 'Estilo 1', 'शैली 1', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (353, 'style_2', 'admin', 'Style 2', 'Style 2', 'النمط 2', 'Estilo 2', 'Стиль 2', '样式 2', 'Style 2', 'Estilo 2', 'शैली 2', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (354, 'reg_system', 'admin', 'Registration System', 'Registration System', 'نظام التسجيل', 'Sistema de registro', 'Система регистрации', '注册系统', 'Système d\'enregistrement', 'Sistema de registro', 'पंजीकरण प्रणाली', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (355, 'auto_approval', 'label', 'auto approval', 'auto approval', 'موافقة تلقائية', 'aprobación automática', 'автоутверждение', '自动批准', 'approbation automatique', 'aprovação automática', 'स्वतः स्वीकृति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (356, 'email_verify', 'label', 'Email Verification', 'Email Verification', 'التحقق من البريد الإلكتروني', 'Verificación de correo electrónico', 'Подтверждение адреса электронной почты', '电子邮件验证', 'Vérification de l\'e-mail', 'Verificação de e-mail', 'ईमेल सत्यापन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (357, 'free_verify', 'label', 'Free Verify', 'Free Verify', 'تحقق مجاني', 'Verificación gratuita', 'Бесплатная проверка', '免费验证', 'Vérification gratuite', 'Verificação gratuita', 'निःशुल्क सत्यापन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (358, 'user_invoice', 'label', 'user invoice', 'user invoice', 'فاتورة المستخدم', 'factura de usuario', 'счет-фактура пользователя', '用户发票', 'facture utilisateur', 'fatura do usuário', 'उपयोगकर्ता चालान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (359, 'rating', 'label', 'rating', 'rating', 'تصنيف', 'valoración', 'рейтинг', '评级', 'note', 'classificação', 'रेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (360, 'recaptcha', 'label', 'recaptcha', 'recaptcha', 'recaptcha', 'recaptcha', 'рекапча', '重新验证码', 'recaptcha', 'recaptcha', 'रिकैप्चा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (361, 'g_site_key', 'label', 'recaptcha site key', 'recaptcha site key', 'مفتاح موقع recaptcha', 'recaptcha site key', 'ключ сайта рекапчи', '重新验证站点密钥', 'clé du site recaptcha', 'chave do site recaptcha', 'रिकैप्चा साइट कुंजी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (362, 'g_secret_key', 'label', 'secret Key', 'secret Key', 'مفتاح سري', 'clave secreta', 'секретный ключ', '秘钥', 'Clé secrète', 'chave secreta', 'गुप्त कुंजी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (363, 'order_configuration', 'label', 'Order Configuration', 'Order Configuration', 'تكوين الطلب', 'Configuración de pedidos', 'Конфигурация заказа', '订单配置', 'Configuration de la commande', 'Configuração do pedido', 'आदेश विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (364, 'configuration', 'label', 'Configuration', 'Configuration', 'التكوين', 'Configuración', 'Конфигурация', '配置', 'Configuration', 'Configuração', 'कॉन्फ़िगरेशन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (365, 'whatsapp_order', 'label', 'Whatsapp Order', 'Whatsapp Order', 'ترتيب Whatsapp', 'Pedido de Whatsapp', 'Заказ в WhatsApp', 'Whatsapp 订单', 'Commande Whatsapp', 'Pedido Whatsapp', 'व्हाट्सएप ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (366, 'runing_package', 'user', 'Runing Package', 'Runing Package', 'حزمة Runing', 'Paquete de ejecución', 'Рабочий пакет', '运行包', 'Package en cours d\'exécution', 'Pacote de execução', 'रनिंग पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (367, 'account_will_expired', 'user', 'Your package will expire after', 'Your package will expire after', 'ستنتهي الحزمة الخاصة بك بعد', 'Su paquete caducará después de', 'Срок действия вашего пакета истечет через', '您的包裹将在之后过期', 'Votre package expirera après', 'Seu pacote irá expirar após', 'आपका पैकेज इसके बाद समाप्त हो जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (368, 'package_expiration', 'user', 'Package expiration', 'Package expiration', 'انتهاء صلاحية الحزمة', 'Vencimiento del paquete', 'Срок действия пакета', '包裹过期', 'Expiration du package', 'Expiração do pacote', 'पैकेज समाप्ति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (369, 'lifetime', 'user', 'Lifetime', 'lifetime', 'مدى الحياة', 'de por vida', 'время жизни', '终身', 'durée de vie', 'vitalício', 'आजीवन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (370, 'payment_not_active_due_to_payment', 'user', 'Your package is not active due to payment. (Pending..)', 'Your package is not active due to payment. (Pending..)', 'الحزمة الخاصة بك غير نشطة بسبب السداد. (معلق ..)', 'Su paquete no está activo debido al pago. (Pendiente ..)', 'Ваш пакет неактивен из-за оплаты. (Ожидается ..)', '由于付款，您的包裹无效。(待定..)', 'Votre forfait n\'est pas actif en raison du paiement. (En attente..)', 'Seu pacote não está ativo devido ao pagamento. (Pendente ..)', 'आपका पैकेज भुगतान के कारण सक्रिय नहीं है। (लंबित..)', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (371, 'package_reactive_msg', 'user', 'Your package is expired. you can re-active it again', 'Your package is expired. you can re-active it again', 'انتهت صلاحية الحزمة الخاصة بك. يمكنك إعادة تنشيطها مرة أخرى', 'Tu paquete ha caducado. Puedes reactivarlo de nuevo', 'Срок действия вашего пакета истек. Вы можете повторно активировать его снова', '您的包裹已过期，您可以重新激活它', 'Votre package a expiré. vous pouvez le réactiver à nouveau', 'Seu pacote expirou. Você pode reativá-lo novamente', 'आपका पैकेज समाप्त हो गया है। आप इसे फिर से सक्रिय कर सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (372, 'select_this_package', 'user', 'You can also select this package', 'You can also select this package', 'يمكنك أيضًا تحديد هذه الحزمة', 'También puede seleccionar este paquete', 'Вы также можете выбрать этот пакет', '您也可以选择这个包', 'Vous pouvez également sélectionner ce forfait', 'Você também pode selecionar este pacote', 'आप इस पैकेज को भी चुन सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (373, 'contact_email', 'user', 'Contact email', 'contact email', 'البريد الإلكتروني للاتصال', 'correo electrónico de contacto', 'контактный адрес электронной почты', '联系邮箱', 'e-mail de contact', 'e-mail de contato', 'ईमेल से संपर्क करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (374, 'colors', 'user', 'Colors', 'Colors', 'ألوان', 'Colores', 'Цвета', '颜色', 'Couleurs', 'Cores', 'रंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (375, 'color_picker', 'user', 'Color picker', 'Color picker', 'منتقي الألوان', 'Selector de color', 'Палитра цветов', '颜色选择器', 'Sélecteur de couleur', 'Seletor de cores', 'रंग बीनने वाला', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (376, 'preloader', 'user', 'Preloader', 'preloader', 'أداة التحميل المسبق', 'precargador', 'прелоадер', '预加载器', 'préchargeur', 'pré-carregador', 'प्रीलोडर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (377, 'choose_restaurant_name', 'home', 'Choose your Resaturant Name', 'Choose your Resaturant Name', 'اختر اسمك المقيم', 'Elija su nombre de restaurante', 'Выберите имя для вашего Resaturant', '选择您的餐厅名称', 'Choisissez votre nom de restaurant', 'Escolha seu nome de resaturante', 'अपना पुनश्चर्या नाम चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (379, 'create', 'home', 'Create', 'Create', 'إنشاء', 'Crear', 'Создать', '创建', 'Créer', 'Criar', 'बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (380, 'try_with_qr_code', 'home', 'Try With QR code', 'Try With QR code', 'جرب باستخدام رمز الاستجابة السريعة', 'Probar con código QR', 'Попробовать с QR-кодом', '用二维码试试', 'Essayer avec le code QR', 'Tente com o código QR', 'क्यूआर कोड के साथ प्रयास करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (381, 'quick_links', 'home', 'quick links', 'quick links', 'روابط سريعة', 'enlaces rápidos', 'быстрые ссылки', '快速链接', 'liens rapides', 'links rápidos', 'त्वरित लिंक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (382, 'cookies_msg_1', 'home', 'We use cookies in this website to give you the best experience on our', 'We use cookies in this website to give you the best experience on our', 'نحن نستخدم ملفات تعريف الارتباط في هذا الموقع لنمنحك أفضل تجربة على موقعنا', 'Usamos cookies en este sitio web para brindarle la mejor experiencia en nuestro', 'Мы используем файлы cookie на этом веб-сайте, чтобы вам было удобнее пользоваться нашим сайтом', '我们在本网站使用 cookie 为您提供最佳体验', 'Nous utilisons des cookies sur ce site pour vous offrir la meilleure expérience sur notre', 'Usamos cookies neste site para lhe dar a melhor experiência em nosso', 'हम इस वेबसाइट में कुकीज़ का उपयोग आपको हमारे बारे में सबसे अच्छा अनुभव देने के लिए करते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (383, 'cookies_msg_2', 'home', 'site and show you relevant ads. To find out more, read our', 'site and show you relevant ads. To find out more, read our', 'الموقع وعرض الإعلانات ذات الصلة. لمعرفة المزيد , اقرأ', 'y mostrarle anuncios relevantes. Para obtener más información, lea nuestro', 'и показывать релевантную рекламу. Чтобы узнать больше, прочтите наши', '网站并向您展示相关广告。要了解更多信息，请阅读我们的', 'site et vous montre des publicités pertinentes. Pour en savoir plus, lisez notre', 'site e mostrar anúncios relevantes. Para saber mais, leia nosso', 'साइट और आपको प्रासंगिक विज्ञापन दिखाएं। अधिक जानने के लिए, हमारा पढ़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (384, 'copyright_text', 'home', 'All rights reserved.', 'All rights reserved.', 'جميع الحقوق محفوظة.', 'Todos los derechos reservados.', 'Все права защищены.', '保留所有权利。', 'Tous droits réservés.', 'Todos os direitos reservados.', 'सर्वाधिकार सुरक्षित।', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (385, 'sign-up', 'home', 'Signup', 'Signup', 'تسجيل', 'Registrarse', 'Регистрация', '注册', 'Inscription', 'Inscrição', 'साइनअप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (386, 'login', 'home', 'login', 'login', 'تسجيل الدخول', 'iniciar sesión', 'войти', '登录', 'connexion', 'login', 'लॉगिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (387, 'track_order', 'home', 'track order', 'track order', 'تتبع الطلب', 'orden de seguimiento', 'отслеживать заказ', '跟踪订单', 'suivre la commande', 'ordem de rastreamento', 'ट्रैक ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (388, 'lets_work_together', 'home', 'Let\'s work together', 'Let\'s work together', 'لنعمل معًا', 'Trabajemos juntos', 'Давайте работать вместе', '让我们一起努力', 'Travaillons ensemble', 'Vamos trabalhar juntos', 'चलो एक साथ काम करते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (389, 'join_our_team_text', 'home', 'Join my team so that together we can achieve success', 'Join my team so that together we can achieve success', 'انضم إلى فريقي حتى نتمكن معًا من تحقيق النجاح', 'Únete a mi equipo para que juntos podamos lograr el éxito', 'Присоединяйтесь к моей команде, чтобы вместе мы могли добиться успеха', '加入我的团队，共同取得成功', 'Rejoignez mon équipe pour qu\'ensemble nous réussissions', 'Junte-se à minha equipe para que juntos possamos alcançar o sucesso', 'मेरी टीम में शामिल हों ताकि हम सब मिलकर सफलता प्राप्त कर सकें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (390, 'forgot_password', 'home', 'Forgot Password', 'Forgot Password', 'نسيت كلمة المرور', 'Olvidé mi contraseña', 'Забыли пароль', '忘记密码', 'Mot de passe oublié', 'Esqueci a senha', 'पासवर्ड भूल गए', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (391, 'forget_pass_alert', 'home', 'Seems like you forgot your password for login? if true set your email to reset password', 'Seems like you forgot your password for login? if true set your email to reset password', 'يبدو أنك نسيت كلمة المرور لتسجيل الدخول؟ إذا كان هذا صحيحًا , فقم بتعيين بريدك الإلكتروني على إعادة تعيين كلمة المرور', '¿Parece que olvidó su contraseña para iniciar sesión? Si es verdadero, configure su correo electrónico para restablecer la contraseña', 'Похоже, вы забыли пароль для входа в систему? Если верно, укажите адрес электронной почты для сброса пароля', '您好像忘记了登录密码？如果为真，请将您的电子邮件设置为重置密码', 'Il semble que vous ayez oublié votre mot de passe pour vous connecter ? Si vrai, définissez votre adresse e-mail pour réinitialiser le mot de passe', 'Parece que você esqueceu sua senha de login? Se verdadeiro, defina seu e-mail para redefinir a senha', 'ऐसा लगता है कि आप लॉगिन के लिए अपना पासवर्ड भूल गए हैं? यदि सही है तो अपना ईमेल पासवर्ड रीसेट करने के लिए सेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (392, 'remember_password', 'home', 'Remember Password?', 'Remember Password?', 'تذكر كلمة المرور؟', '¿Recordar contraseña?', 'Запомнить пароль?', '还记得密码吗？', 'Mémoriser le mot de passe ?', 'Lembrar senha?', 'पासवर्ड याद रखें?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (393, 'sign_in', 'home', 'Sign in', 'Sign in', 'تسجيل الدخول', 'Iniciar sesión', 'Войти', '登录', 'Connectez-vous', 'Entrar', 'साइन इन करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (394, 'sign_in_text', 'home', 'Signup to discover your shop', 'Signup to discover your shop', 'اشترك لاكتشاف متجرك', 'Regístrese para descubrir su tienda', 'Зарегистрируйтесь, чтобы открыть для себя ваш магазин', '注册以发现您的商店', 'Inscrivez-vous pour découvrir votre boutique', 'Inscreva-se para descobrir sua loja', 'अपनी दुकान खोजने के लिए साइन अप करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (395, 'dont_have_account', 'home', 'Don\'t have account', 'Don\'t have account', 'ليس لديك حساب', 'No tengo cuenta', 'Нет аккаунта', '没有账号', 'Je n\'ai pas de compte', 'Não tenho conta', 'आपके पास खाता नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (396, 'read_terms', 'home', 'I have read the', 'I have read the', 'لقد قرأت', 'He leído el', 'Я прочитал', '我已经阅读了', 'J\'ai lu le', 'Eu li o', 'मैंने पढ़ा है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (397, 'accept_them', 'home', 'accept them', 'accept them', 'اقبلهم', 'aceptarlos', 'принять их', '接受他们', 'les accepter', 'aceitá-los', 'उन्हें स्वीकार करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (398, 'already_member', 'home', 'Already a Member?', 'Already a Member?', 'هل أنت عضو بالفعل؟', '¿Ya eres miembro?', 'Уже участник?', '已经是会员？', 'Déjà membre ?', 'Já é um membro?', 'पहले से ही एक सदस्य?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (399, 'message', 'home', 'message', 'message', 'رسالة', 'mensaje', 'сообщение', '消息', 'message', 'mensagem', 'संदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (400, 'send', 'home', 'send', 'send', 'إرسال', 'enviar', 'отправить', '发送', 'envoyer', 'enviar', 'भेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (401, 'get_start', 'home', 'Get Started', 'Get Started', 'البدء', 'Comenzar', 'Начать', '开始使用', 'Commencer', 'Começar', 'आरंभ करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (402, 'play_video', 'home', 'Play Video', 'Play Video', 'تشغيل الفيديو', 'Reproducir video', 'Воспроизвести видео', '播放视频', 'Lire la vidéo', 'Reproduzir vídeo', 'वीडियो चलाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (403, 'read_more', 'home', 'Read More', 'Read More', 'قراءة المزيد', 'Leer más', 'Подробнее', '阅读更多', 'En savoir plus', 'Leia mais', 'और पढ़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (404, 'all', 'home', 'All', 'All', 'الكل', 'Todos', 'Все', '全部', 'Tous', 'Todos', 'सभी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (405, 'has_been_add_to_cart', 'home', 'has been added to the cart', 'has been added to the cart', 'تمت إضافته إلى عربة التسوق', 'se ha añadido al carrito', 'добавлен в корзину', '已加入购物车', 'a été ajouté au panier', 'foi adicionado ao carrinho', 'कार्ट में जोड़ दिया गया है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (406, 'view_cart', 'home', 'View Cart', 'View Cart', 'عرض عربة التسوق', 'Ver carrito', 'Просмотреть корзину', '查看购物车', 'Voir le panier', 'Ver carrinho', 'कार्ट देखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (407, 'size', 'home', 'size', 'size', 'الحجم', 'tamaño', 'размер', '大小', 'taille', 'tamanho', 'आकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (408, 'add_to_cart', 'home', 'add cart', 'add cart', 'إضافة عربة التسوق', 'agregar carrito', 'добавить корзину', '添加购物车', 'ajouter panier', 'adicionar carrinho', 'कार्ट जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (409, 'order_form', 'home', 'order form', 'order form', 'نموذج الطلب', 'formulario de pedido', 'форма заказа', '订单', 'bon de commande', 'formulário de pedido', 'आदेश प्रपत्र', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (410, 'full_name', 'home', 'full name', 'full name', 'الاسم الكامل', 'nombre completo', 'полное имя', '全名', 'nom complet', 'nome completo', 'पूरा नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (411, 'person', 'home', 'person', 'person', 'شخص', 'persona', 'человек', '人', 'personne', 'pessoa', 'व्यक्ति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (412, 'select_person', 'home', 'select person', 'select person', 'حدد الشخص', 'seleccionar persona', 'выбрать человека', '选择人', 'sélectionner une personne', 'selecionar pessoa', 'व्यक्ति चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (413, 'confirm_order', 'home', 'confirm order', 'confirm order', 'تأكيد الطلب', 'confirmar pedido', 'подтвердить заказ', '确认订单', 'confirmer la commande', 'confirmar pedido', 'आदेश की पुष्टि करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (414, 'order_confirmed', 'home', '', 'order confirmed', 'تم تأكيد الطلب', 'pedido confirmado', 'заказ подтвержден', '订单确认', 'commande confirmée', 'pedido confirmado', 'आदेश की पुष्टि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (415, 'your_order_id', 'home', 'your order id', 'your order id', 'معرف طلبك', 'ID de su pedido', 'идентификатор вашего заказа', '您的订单号', 'votre identifiant de commande', 'seu id de pedido', 'आपकी ऑर्डर आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (416, 'track_your_order_using_phone', 'home', 'You can track you order using your phone number', 'You can track you order using your phone number', 'يمكنك تتبع طلبك باستخدام رقم هاتفك', 'Puede rastrear su pedido usando su número de teléfono', 'Вы можете отслеживать свой заказ по номеру телефона', '您可以使用您的电话号码跟踪您的订单', 'Vous pouvez suivre votre commande en utilisant votre numéro de téléphone', 'Você pode rastrear seu pedido usando seu número de telefone', 'आप अपने फ़ोन नंबर का उपयोग करके अपने ऑर्डर को ट्रैक कर सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (417, 'total_qty', 'home', 'Total Qty', 'Total Qty', 'إجمالي الكمية', 'Cantidad total', 'Общее количество', '总数量', 'Quantité totale', 'Quantidade total', 'कुल मात्रा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (418, 'total_price', 'home', 'Total Price', 'Total Price', 'السعر الإجمالي', 'Precio total', 'Общая цена', '总价', 'Prix Total', 'Preço total', 'कुल मूल्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (419, 'order_date', 'home', 'Order Date', 'Order Date', 'تاريخ الطلب', 'Fecha de pedido', 'Дата заказа', '订单日期', 'Date de commande', 'Data do pedido', 'आदेश दिनांक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (420, 'rejected', 'home', 'rejected', 'rejected', 'مرفوض', 'rechazado', 'отклонено', '拒绝', 'rejeté', 'rejeitado', 'अस्वीकृत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (421, 'you_have_more', 'home', 'You have more', 'You have more', 'لديك المزيد', 'Tienes más', 'У вас есть еще', '你还有更多', 'Vous en avez plus', 'Você tem mais', 'आपके पास और है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (422, 'item_name', 'home', 'Item name', 'item name', 'اسم العنصر', 'nombre del elemento', 'название предмета', '物品名称', 'nom de l\'élément', 'nome do item', 'आइटम का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (423, 'delivery_address', 'home', 'Delivery address', 'Delivery address', 'عنوان التسليم', 'Dirección de entrega', 'Адрес доставки', '送货地址', 'Adresse de livraison', 'Endereço de entrega', 'डिलीवरी का पता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (424, 'shop_address', 'home', 'shop address', 'shop address', 'عنوان المحل', 'dirección de la tienda', 'адрес магазина', '店铺地址', 'adresse du magasin', 'endereço da loja', 'दुकान का पता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (425, 'share_your_location', 'home', 'Share your location here', 'Share your location here', 'شارك موقعك هنا', 'Comparte tu ubicación aquí', 'Поделитесь здесь своим местоположением', '在此处分享您的位置', 'Partagez votre position ici', 'Compartilhe sua localização aqui', 'अपना स्थान यहाँ साझा करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (426, 'order_on_whatsapp', 'home', 'Order On Whatsapp', 'Order On Whatsapp', 'اطلب عبر Whatsapp', 'Pedido por Whatsapp', 'Заказать в Whatsapp', 'Whatsapp 下单', 'Commander sur Whatsapp', 'Pedido no Whatsapp', 'व्हाट्सएप पर ऑर्डर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (427, 'order_now', 'home', 'order now', 'order now', 'اطلب الآن', 'pedir ahora', 'заказать сейчас', '立即订购', 'commander maintenant', 'peça agora', 'अभी ऑर्डर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (428, 'book_now', 'home', 'Book Now', 'Book Now', 'احجز الآن', 'Reserva ahora', 'Забронировать', '立即预订', 'Réservez maintenant', 'Reserve agora', 'अभी बुक करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (429, 'watch_video', 'home', 'Watch Video', 'Watch Video', 'شاهد الفيديو', 'Ver video', 'Посмотреть видео', '观看视频', 'Regarder la vidéo', 'Assistir ao vídeo', 'वीडियो देखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (430, 'fast_service', 'home', 'Fast Service', 'Fast Service', 'خدمة سريعة', 'Servicio rápido', 'Быстрое обслуживание', '快速服务', 'Service rapide', 'Serviço rápido', 'तेज़ सेवा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (431, 'fresh_food', 'home', 'Fresh Food', 'Fresh Food', 'طعام طازج', 'Alimentos frescos', 'Свежие продукты', '新鲜食物', 'Nourriture Fraîche', 'Alimentos frescos', 'ताजा भोजन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (432, '24_support', 'home', '24/7 Support', '24/7 Support', 'دعم على مدار الساعة طوال أيام الأسبوع', 'Soporte 24/7', 'Круглосуточная поддержка', '24/7 支持', 'Assistance 24/7', 'Suporte 24 horas por dia, 7 dias por semana', '24/7 समर्थन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (433, 'about_us', 'home', 'about us', 'about us', 'عنا', 'acerca de nosotros', 'о нас', '关于我们', 'à propos de nous', 'sobre nós', 'हमारे बारे में', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (434, 'maximum_order_alert', 'home', 'Sorry! This Restaurant reached the maximum orders', 'Sorry! This Restaurant reached the maximum orders', 'معذرة! وصل هذا المطعم إلى الحد الأقصى من الطلبات', '¡Lo siento! Este restaurante alcanzó el máximo de pedidos', 'Извините! В этом ресторане достигнуто максимальное количество заказов', '对不起！这家餐厅达到了最大订单', 'Désolé ! Ce restaurant a atteint le nombre maximum de commandes', 'Desculpe! Este restaurante atingiu o número máximo de pedidos', 'क्षमा करें! यह रेस्टोरेंट अधिकतम ऑर्डर पर पहुंच गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (435, 'contact_us', 'home', 'Contact Us', 'Contact Us', 'اتصل بنا', 'Contáctenos', 'Свяжитесь с нами', '联系我们', 'Nous contacter', 'Entre em contato', 'हमसे संपर्क करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (436, 'checkout', 'home', 'checkout', 'checkout', 'الخروج', 'pago', 'оформить заказ', '结帐', 'caisse', 'checkout', 'चेकआउट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (437, 'sorry_cant_take_order', 'home', 'Sorry! We can not take any orders', 'Sorry! We can not take any orders', 'عذرًا! لا يمكننا تنفيذ أي طلبات', '¡Lo sentimos! No podemos aceptar ningún pedido', 'Извините! Мы не можем принимать заказы', '对不起！我们不能接受任何订单', 'Désolé ! Nous ne pouvons prendre aucune commande', 'Desculpe! Não podemos aceitar nenhum pedido', 'क्षमा करें! हम कोई आदेश नहीं ले सकते', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (438, '404_not', 'home', '404 Not Found', '404 Not Found', '404 غير موجود', '404 no encontrado', '404 не найден', '404 未找到', '404 non trouvé', '404 não encontrado', '404 नहीं मिला', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (439, 'subject', 'home', 'subject', 'subject', 'موضوع', 'asunto', 'тема', '主题', 'sujet', 'assunto', 'विषय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (440, 'see_more', 'home', 'See More', 'See More', 'مشاهدة المزيد', 'Ver más', 'Узнать больше', '查看更多', 'Voir Plus', 'Ver mais', 'और देखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (441, 'number_of_guest', 'home', 'number of guest', 'number of guest', 'عدد الضيوف', 'número de invitados', 'количество гостей', '客人数量', 'nombre d\'invités', 'número de convidados', 'अतिथि की संख्या', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (442, 'reservation_type', 'home', 'reservation type', 'reservation type', 'نوع الحجز', 'tipo de reserva', 'тип бронирования', '预订类型', 'type de réservation', 'tipo de reserva', 'आरक्षण प्रकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (443, 'any_special_request', 'home', 'Any Special Request?', 'Any Special Request?', 'أي طلب خاص؟', '¿Alguna solicitud especial?', 'Есть особые пожелания?', '有什么特别要求吗？', 'Une demande spéciale ?', 'Algum pedido especial?', 'कोई विशेष अनुरोध?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (444, 'booking_availabiti_text', 'home', 'Before booking an reservation please check our availability', 'Before booking an reservation please check our availability', 'قبل الحجز يرجى التحقق من التوافر لدينا', 'Antes de reservar una reserva, compruebe nuestra disponibilidad', 'Перед бронированием, пожалуйста, проверьте нашу доступность', '在预订之前，请检查我们的可用性', 'Avant de réserver, veuillez vérifier nos disponibilités', 'Antes de fazer uma reserva, verifique nossa disponibilidade', 'आरक्षण बुक करने से पहले कृपया हमारी उपलब्धता की जांच करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (445, 'phone_number', 'home', 'Phone Number', 'Phone Number', 'رقم الهاتف', 'Número de teléfono', 'Номер телефона', '电话号码', 'Numéro de téléphone', 'Número de telefone', 'फोन नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (446, 'check', 'home', 'check', 'check', 'تحقق', 'comprobar', 'проверить', '检查', 'vérifier', 'verificar', 'चेक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (447, 'search_with_username', 'home', 'Search with username', 'Search with username', 'بحث باسم المستخدم', 'Buscar con nombre de usuario', 'Искать по имени пользователя', '用用户名搜索', 'Recherche avec nom d\'utilisateur', 'Pesquisar com nome de usuário', 'उपयोगकर्ता नाम के साथ खोजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (448, 'search', 'home', 'search', 'search', 'بحث', 'buscar', 'поиск', '搜索', 'rechercher', 'pesquisar', 'खोज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (449, 'restaurant_name', 'home', 'Restaurant Name', 'Restaurant Name', 'اسم المطعم', 'Nombre del restaurante', 'Название ресторана', '餐厅名称', 'Nom du restaurant', 'Nome do restaurante', 'रेस्तरां का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (450, 'forgot', 'home', 'forgot', 'forgot?', 'نسيت؟', '¿Olvidaste?', 'забыл?', '忘记了？', 'oublié?', 'esqueceu?', 'भूल गए?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (451, 'total', 'home', 'total', 'total', 'إجمالي', 'total', 'всего', '总计', 'total', 'total', 'कुल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (452, 'select_order_type', 'home', 'select order type', 'select order type', 'حدد نوع الطلب', 'seleccionar tipo de orden', 'выбрать тип заказа', '选择订单类型', 'sélectionner le type de commande', 'selecione o tipo de pedido', 'आदेश प्रकार चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (453, 'quick_view', 'home', 'Quick View', 'Quick View', 'نظرة سريعة', 'Vista rápida', 'Быстрый просмотр', '快速查看', 'Vue rapide', 'Visualização rápida', 'त्वरित दृश्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (454, 'reservation_date', 'home', 'reservation date', 'reservation date', 'تاريخ الحجز', 'fecha de reserva', 'дата бронирования', '预订日期', 'date de réservation', 'data de reserva', 'आरक्षण तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (455, 'restaurant_list', 'admin', 'restaurant list', 'restaurant list', 'قائمة المطاعم', 'lista de restaurantes', 'список ресторанов', '餐厅名单', 'liste des restaurants', 'lista de restaurantes', 'रेस्तरां सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (456, 'total_restaurant', 'admin', 'total restaurant', 'total restaurant', 'إجمالي المطعم', 'restaurante total', 'общий ресторан', '总餐厅', 'total restaurant', 'restaurante total', 'कुल रेस्टोरेंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (457, 'add restaurant', 'admin', 'add_restaurant', 'Add Restaurant', 'إضافة مبلغ', 'Agregar restaurante', 'Добавить ресторан', '添加餐厅', 'Ajouter un restaurant', 'Adicionar restaurante', 'रेस्तरां जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (458, 'packages', 'admin', 'packages', 'packages', 'الحزم', 'paquetes', 'пакеты', '包', 'paquets', 'pacotes', 'पैकेज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (459, 'features_list', 'admin', 'features list', 'features list', 'قائمة الميزات', 'lista de características', 'список функций', '功能列表', 'liste des fonctionnalités', 'lista de recursos', 'सुविधाओं की सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (460, 'type', 'label', 'type', 'type', 'type', 'tipo', 'тип', '类型', 'tapez', 'tipo', 'टाइप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (461, 'save_change_successfully', 'admin', 'save change successfully', 'save change successfully', 'احفظ التغيير بنجاح', 'guardar el cambio correctamente', 'сохранить изменение успешно', '保存更改成功', 'enregistrer la modification avec succès', 'salvar alteração com sucesso', 'परिवर्तन सफलतापूर्वक सहेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (462, 'success_text', 'admin', 'save change successfully', 'save change successfully', 'احفظ التغيير بنجاح', 'guardar el cambio correctamente', 'сохранить изменение успешно', '保存更改成功', 'enregistrer la modification avec succès', 'salvar alteração com sucesso', 'परिवर्तन सफलतापूर्वक सहेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (463, 'error_text', 'admin', 'Somethings Were Wrong!!', 'Somethings Were Wrong!!', 'أشياء خاطئة !!', '¡¡Algo anda mal !!', 'Что-то пошло не так !!', '出了点问题！！', 'Quelque chose n\'allait pas !!', 'Algo estava errado !!', 'कुछ गलत थे !!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (464, 'yes', 'label', 'yes', 'yes', 'نعم', 'sí', 'да', '是', 'oui', 'sim', 'हाँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (465, 'no', 'label', 'no', 'no', 'لا', 'no', 'нет', '不', 'non', 'não', 'नहीं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (466, 'are_you_sure', 'label', 'are_you_sure', 'are you sure', 'هل أنت متأكد', 'estás seguro', 'Вы уверены?', '你确定吗', 'êtes-vous sûr', 'tem certeza', 'क्या आप निश्चित हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (467, 'item_deactive_now', 'label', 'This item is deactive now', 'This item is deactive now', 'هذا العنصر غير نشط الآن', 'Este elemento está desactivado ahora', 'Этот элемент сейчас деактивирован', '此项目现已停用', 'Cet élément est désactivé maintenant', 'Este item está desativado agora', 'यह आइटम अब निष्क्रिय है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (468, 'item_active_now', 'label', 'Item is active now', 'Item is active now', 'العنصر نشط الآن', 'El artículo está activo ahora', 'Товар сейчас активен', '项目现在处于活动状态', 'L\'élément est actif maintenant', 'O item está ativo agora', 'आइटम अभी सक्रिय है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (469, 'want_to_reset_password', 'label', 'Want to reset Password?', 'Want to reset Password?', 'هل تريد إعادة تعيين كلمة المرور؟', '¿Desea restablecer la contraseña?', 'Хотите сбросить пароль?', '要重置密码吗？', 'Voulez-vous réinitialiser le mot de passe ?', 'Deseja redefinir a senha?', 'पासवर्ड रीसेट करना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (470, 'sunday', 'user', 'Sunday', 'Sunday', 'الأحد', 'Domingo', 'Воскресенье', '星期日', 'Dimanche', 'Domingo', 'रविवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (471, 'monday', 'user', 'Monday', 'Monday', 'الاثنين', 'Lunes', 'Понедельник', '星期一', 'Lundi', 'Segunda-feira', 'सोमवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (472, 'tuesday', 'user', 'Tuesday', 'Tuesday', 'الثلاثاء', 'Martes', 'Вторник', '星期二', 'mardi', 'terça-feira', 'मंगलवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (473, 'wednesday', 'user', 'Wednesday', 'Wednesday', 'الأربعاء', 'Miércoles', 'Среда', '星期三', 'mercredi', 'Quarta-feira', 'बुधवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (474, 'thursday', 'user', 'Thursday', 'Thursday', 'الخميس', 'Jueves', 'Четверг', '星期四', 'Jeudi', 'quinta-feira', 'गुरुवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (475, 'friday', 'user', 'Friday', 'Friday', 'الجمعة', 'Viernes', 'Пятница', '星期五', 'Vendredi', 'sexta-feira', 'शुक्रवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (476, 'saturday', 'user', 'Saturday', 'Saturday', 'السبت', 'Sábado', 'Суббота', '星期六', 'samedi', 'sábado', 'शनिवार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (477, 'booking_date', 'admin', 'Booking Date', 'Booking Date', 'تاريخ الحجز', 'Fecha de reserva', 'Дата бронирования', '预订日期', 'Date de réservation', 'Data da reserva', 'बुकिंग तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (478, 'pickup_alert', 'admin', 'Sorry Pickup is not available', 'Sorry Pickup is not available', 'لا يوجد خيار آسف', 'Lo sentimos, la recogida no está disponible', 'Извините, самовывоз недоступен', '抱歉，无法提供接送服务', 'Désolé, le ramassage n\'est pas disponible', 'Desculpe, a retirada não está disponível', 'क्षमा करें पिकअप उपलब्ध नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (479, 'qty', 'user', 'Qty', 'qty', 'الكمية', 'cantidad', 'кол-во', '数量', 'qté', 'qty', 'मात्रा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (480, 'item', 'user', 'Item', 'item', 'عنصر', 'elemento', 'предмет', '项目', 'élément', 'item', 'आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (481, 'order_video', 'user', 'Order video link', 'Order video link', 'رابط طلب الفيديو', 'Solicitar enlace de video', 'Заказать ссылку на видео', '订购视频链接', 'Commander le lien vidéo', 'Solicitar link de vídeo', 'वीडियो लिंक ऑर्डर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (482, 'home_setting', 'user', 'Home Settings', 'Home Settings', 'إعدادات الصفحة الرئيسية', 'Configuración de inicio', 'Домашние настройки', '家庭设置', 'Paramètres d\'accueil', 'Configurações iniciais', 'होम सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (483, 'total_revenue', 'user', 'Total Revenue', 'Total Revenue', 'إجمالي الإيرادات', 'Ingresos totales', 'Общий доход', '总收入', 'Revenu total', 'Receita total', 'कुल राजस्व', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (484, 'categories', 'admin', 'categories', 'categories', 'فئات', 'categorías', 'категории', '类别', 'catégories', 'categorias', 'श्रेणियां', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (485, 'images', 'user', 'images', 'images', 'صور', 'imágenes', 'изображения', '图片', 'images', 'imagens', 'छवियां', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (486, 'want_to_deactive_account', 'user', 'Want to deactive your account?', 'Want to deactivate your account?', 'هل تريد إلغاء تنشيط حسابك؟', '¿Quieres desactivar tu cuenta?', 'Хотите деактивировать свою учетную запись?', '要停用您的帐户吗？', 'Vous souhaitez désactiver votre compte ?', 'Deseja desativar sua conta?', 'क्या आप अपना खाता निष्क्रिय करना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (487, 'want_to_active_account', 'user', 'Want to active your account?', 'Want to activate your account?', 'هل تريد تنشيط حسابك؟', '¿Quiere activar su cuenta?', 'Хотите активировать свою учетную запись?', '要激活您的帐户吗？', 'Vous souhaitez activer votre compte ?', 'Deseja ativar sua conta?', 'क्या आप अपना खाता सक्रिय करना चाहते हैं?', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (488, 'back', 'user', 'Back', 'Back', 'رجوع', 'Atrás', 'Назад', '返回', 'Retour', 'Voltar', 'वापस', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (489, 'sorry_payment_faild', 'user', 'Sorry Payment Failed', 'Sorry Payment Failed', 'فشل الدفع آسفًا', 'Lo sentimos, el pago falló', 'К сожалению, платеж не прошел', '抱歉付款失败', 'Désolé paiement échoué', 'Desculpe, falha no pagamento', 'क्षमा करें भुगतान विफल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (490, 'my_cart', 'user', 'My cart', 'My cart', 'عربة التسوق', 'Mi carrito', 'Моя тележка', '我的购物车', 'Mon panier', 'Meu carrinho', 'मेरी गाड़ी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (491, 'shipping', 'user', 'shipping', 'shipping', 'شحن', 'envío', 'доставка', '运输', 'livraison', 'frete', 'शिपिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (492, 'sub_total', 'user', 'Sub Total', 'Sub Total', 'المجموع الفرعي', 'Subtotal', 'Промежуточный итог', '小计', 'Sous-total', 'Subtotal', 'सब टोटल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (493, 'payment_not_available', 'user', 'payment not available', 'payment not available', 'الدفع غير متوفر', 'pago no disponible', 'оплата недоступна', '付款不可用', 'paiement non disponible', 'pagamento não disponível', 'भुगतान उपलब्ध नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (494, 'stock_status', 'label', '', 'Stock Status', 'حالة المخزون', 'Estado de existencias', 'Состояние запасов', '库存状态', 'Etat du stock', 'Status do estoque', 'स्टॉक की स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (495, 'in_stock', 'label', '', 'In stock', 'متوفر', 'En stock', 'Есть в наличии', '有货', 'En stock', 'Em estoque', 'स्टॉक में', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (496, 'remaining', 'label', '', 'remaining', 'المتبقي', 'restante', 'оставшийся', '剩余', 'restant', 'restante', 'शेष', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (497, 'reset_counter', 'label', '', 'reset counter', 'إعادة تعيين العداد', 'restablecer contador', 'сбросить счетчик', '重置计数器', 'réinitialiser le compteur', 'redefinir contador', 'काउंटर रीसेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (498, 'reset_stock_count', 'label', '', 'Stock Count will reset', 'سيتم إعادة تعيين جرد المخزون', 'El recuento de existencias se reiniciará', 'Счетчик запасов будет сброшен', '库存数量将重置', 'Le décompte sera réinitialisé', 'Contagem de estoque será zerada', 'स्टॉक काउंट रीसेट हो जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (499, 'delete_success', 'label', '', 'Delete successfull', 'حذف بنجاح', 'Eliminación exitosa', 'Удалить успешно', '删除成功', 'Suppression réussie', 'Excluir com sucesso', 'हटाएं सफल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (500, 'availability', 'label', '', 'Availability', 'التوفر', 'Disponibilidad', 'Доступность', '可用性', 'Disponibilité', 'Disponibilidade', 'उपलब्धता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (501, 'out_of_stock', 'label', '', 'Out of stock', 'غير متوفر بالمخزون', 'Agotado', 'Нет в наличии', '缺货', 'En rupture de stock', 'Esgotado', 'स्टॉक में नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (502, 'set_stock', 'label', '', 'set stock', 'تعيين المخزون', 'establecer stock', 'установить запас', '设置库存', 'définir le stock', 'definir estoque', 'स्टॉक सेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (503, 'select_pickup_area', 'label', '', 'Select Pickup area', 'حدد منطقة الالتقاء', 'Seleccionar área de recogida', 'Выбрать зону выдачи', '选择取件区域', 'Sélectionner la zone de retrait', 'Selecionar área de coleta', 'पिकअप क्षेत्र चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (504, 'show_map', 'label', '', 'show map', 'اعرض الخريطة', 'mostrar mapa', 'показать карту', '显示地图', 'afficher la carte', 'mostrar mapa', 'मानचित्र दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (505, 'google_map_api_key', 'label', '', 'Google map api key', 'مفتاح واجهة برمجة تطبيقات خرائط Google', 'Clave de API del mapa de Google', 'Ключ API карты Google', 'Google 地图 API 密钥', 'Clé api Google map', 'Chave de API do Google map', 'गूगल मैप एपीआई कुंजी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (506, 'pickup_point', 'label', '', 'Pickup Point', 'نقطة الالتقاء', 'Punto de recogida', 'Пункт выдачи', '取件点', 'Point de ramassage', 'Ponto de coleta', 'पिकअप पॉइंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (507, 'google_map_status', 'label', '', 'google map status', 'حالة خريطة google', 'estado del mapa de Google', 'Статус карты Google', '谷歌地图状态', 'statut google map', 'status do google map', 'गूगल मानचित्र स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (508, 'pickup_time_alert', 'label', '', 'Pickup time not set yet', 'لم يتم تحديد وقت الاستلام بعد', 'Aún no se ha establecido la hora de recogida', 'Время получения еще не установлено', '尚未设置接送时间', 'Heure de prise en charge pas encore définie', 'Horário de coleta ainda não definido', 'पिकअप का समय अभी निर्धारित नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (509, 'dine-in', 'label', '', 'Dine in', 'تناول الطعام في', 'Cenar en', 'Пообедать', '用餐', 'Dîner sur place', 'Jantar em', 'डाइन इन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (510, 'create_table', 'label', '', 'Create table', 'إنشاء جدول', 'Crear tabla', 'Создать таблицу', '创建表', 'Créer un tableau', 'Criar tabela', 'टेबल बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (511, 'table', 'label', '', 'Table', 'جدول', 'Tabla', 'Таблица', '表', 'Tableau', 'Tabela', 'टेबल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (512, 'area', 'label', '', 'area', 'منطقة', 'área', 'площадь', '区域', 'zone', 'área', 'क्षेत्र', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (513, 'areas', 'label', '', 'areas', 'مناطق', 'áreas', 'области', '区域', 'zones', 'áreas', 'क्षेत्र', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (514, 'size', 'label', '', 'size', 'الحجم', 'tamaño', 'размер', '大小', 'taille', 'tamanho', 'आकार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (515, 'add_new_area', 'label', '', 'Add New Area', 'إضافة منطقة جديدة', 'Agregar nueva área', 'Добавить новую область', '添加新区域', 'Ajouter une nouvelle zone', 'Adicionar nova área', 'नया क्षेत्र जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (516, 'select_area', 'label', '', 'Select area', 'حدد منطقة', 'Seleccionar área', 'Выбрать область', '选择区域', 'Sélectionner la zone', 'Selecionar área', 'क्षेत्र चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (517, 'area_name', 'label', '', 'Area name', 'اسم المنطقة', 'Nombre del área', 'Название местности', '区域名称', 'Nom de la zone', 'Nome da área', 'क्षेत्र का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (518, 'add_new_table', 'label', '', 'Add New Table', 'إضافة جدول جديد', 'Agregar nueva tabla', 'Добавить новую таблицу', '添加新表', 'Ajouter une nouvelle table', 'Adicionar nova tabela', 'नई तालिका जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (519, 'table_list', 'label', '', 'Table List', 'قائمة الجدول', 'Lista de tablas', 'Список таблиц', '表列表', 'Liste des tableaux', 'Lista de tabelas', 'तालिका सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (520, 'set_time', 'label', '', 'Set Time', 'ضبط الوقت', 'Establecer hora', 'Установить время', '设置时间', 'Définir l\'heure', 'Definir hora', 'समय निर्धारित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (521, 'set_prepared_time', 'label', '', 'Set Prepared Time', 'تعيين وقت التحضير', 'Establecer tiempo de preparación', 'Установить время подготовки', '设置准备时间', 'Définir l\'heure de préparation', 'Definir hora preparada', 'तैयारी का समय निर्धारित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (522, 'prepared_time', 'label', '', 'Prepared Time', 'وقت التحضير', 'Tiempo preparado', 'Время подготовки', '准备时间', 'Heure Préparée', 'Hora preparada', 'तैयार होने का समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (523, 'hours', 'label', '', 'hours', 'ساعات', 'horas', 'часы', '小时', 'heures', 'horas', 'घंटे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (524, 'minutes', 'label', '', 'Minutes', 'دقائق', 'Minutos', 'Минуты', '分钟', 'Minutes', 'Minutos', 'मिनट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (525, 'order_status', 'label', '', 'order status', 'حالة الطلب', 'estado del pedido', 'статус заказа', '订单状态', 'statut de la commande', 'status do pedido', 'आदेश की स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (526, 'order_accept_msg', 'label', '', 'Order Accept by shop. order will shift after', 'قبول الطلب حسب المتجر. سيتحول الطلب بعد ذلك', 'Pedido aceptado por tienda. El pedido cambiará después de', 'Заказ принят магазином. Заказ сместится через', '商店接受订单。订单将在此后转移', 'Acceptation de la commande par la boutique. La commande sera décalée après', 'Pedido aceito pela loja. O pedido mudará após', 'दुकान द्वारा ऑर्डर स्वीकार करें। ऑर्डर बाद में शिफ्ट हो जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (527, 'order_delivery_msg', 'label', '', 'Your order will on the way soon', 'طلبك قريبًا', 'Tu pedido estará pronto en camino', 'Ваш заказ скоро будет в пути', '您的订单很快就会发货', 'Votre commande sera bientôt en route', 'Seu pedido será enviado em breve', 'आपका ऑर्डर जल्द ही मिलने वाला है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (528, 'select_table', 'label', '', 'Select Table', 'تحديد جدول', 'Seleccionar tabla', 'Выбрать таблицу', '选择表', 'Sélectionner le tableau', 'Selecionar Tabela', 'तालिका चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (529, 'seo_settings', 'admin', '', 'Seo Settings', 'إعدادات SEO', 'Configuración de SEO', 'Настройки SEO', '搜索引擎优化设置', 'Paramètres de référencement', 'Configurações de SEO', 'एसईओ सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (530, 'keyword', 'admin', '', 'Keyword', 'كلمات رئيسية', 'Palabra clave', 'Ключевое слово', '关键字', 'Mot clé', 'Palavra-chave', 'कीवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (531, 'description', 'admin', '', 'description', 'الوصف', 'descripción', 'описание', '描述', 'description', 'descrição', 'विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (532, 'keywords', 'admin', '', 'keywords', 'كلمات رئيسية', 'palabras clave', 'ключевые слова', '关键字', 'mots-clés', 'palavras-chave', 'कीवर्ड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (533, 'confirm_oder', 'admin', '', 'confirm oder', 'تأكيد أودر', 'confirmar orden', 'подтвердить заказ', '确认订单', 'confirmer la commande', 'confirmar oder', 'ओडर की पुष्टि करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (534, 'add_extras', 'admin', '', 'Add Extras', 'إضافة إضافات', 'Agregar extras', 'Добавить дополнения', '添加额外内容', 'Ajouter des extras', 'Adicionar extras', 'अतिरिक्त जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (535, 'add_new_extras', 'admin', '', 'Add new extras', 'إضافة إضافات جديدة', 'Agregar nuevos extras', 'Добавить дополнительные услуги', '添加新的附加功能', 'Ajouter de nouveaux extras', 'Adicionar novos extras', 'नए अतिरिक्त जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (536, 'save', 'admin', '', 'save', 'حفظ', 'guardar', 'сохранить', '保存', 'enregistrer', 'salvar', 'सहेजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (537, 'write_you_name_here', 'user', '', 'Write Your Name Here', 'اكتب اسمك هنا', 'Escriba su nombre aquí', 'Напишите здесь свое имя', '在这里写下你的名字', 'Ecrivez votre nom ici', 'Escreva seu nome aqui', 'अपना नाम यहाँ लिखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (538, 'order_tracking', 'admin', '', 'Order Tracking', 'تتبع الطلبات', 'Seguimiento de pedidos', 'Отслеживание заказов', '订单追踪', 'Suivi de commande', 'Rastreamento de pedido', 'ऑर्डर ट्रैकिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (539, 'google_map_link', 'user', '', 'Google map link', 'رابط خرائط Google', 'Enlace de mapa de Google', 'Ссылка на карту Google', '谷歌地图链接', 'lien Google map', 'link do mapa do Google', 'गूगल मैप लिंक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (540, 'status_history', 'user', '', 'Status History', 'محفوظات الحالة', 'Historial de estado', 'История статусов', '状态历史', 'Historique des statuts', 'Histórico de status', 'स्थिति इतिहास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (541, 'just_created', 'user', '', 'Just created', 'تم إنشاؤه للتو', 'Recién creado', 'Только что создано', '刚刚创建', 'Je viens de créer', 'Acabado de criar', 'अभी बनाया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (542, 'status_from', 'user', '', 'Status from', 'الحالة من', 'Estado de', 'Статус от', '状态来自', 'Statut de', 'Status de', 'स्थिति से', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (543, 'by_admin', 'user', '', 'By admin', 'بواسطة المسؤول', 'Por administrador', 'Автор: администратор', '由管理员', 'Par administrateur', 'Por admin', 'व्यवस्थापक द्वारा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (544, 'admin', 'user', '', 'Admin', 'المسؤول', 'Administrador', 'Админ', '管理员', 'Administrateur', 'Admin', 'व्यवस्थापक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (545, 'order_is_on_the_way', 'user', '', 'Order is on the way', 'الطلب في الطريق', 'El pedido está en camino', 'Заказ готов', '订单在路上', 'La commande est en route', 'O pedido está a caminho', 'आदेश आ रहा है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (546, 'complete', 'user', '', 'Complete', 'مكتمل', 'Completo', 'Завершено', '完成', 'Terminé', 'Completo', 'पूर्ण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (547, 'new_order', 'user', '', 'New Order', 'طلب جديد', 'Nuevo pedido', 'Новый заказ', '新订单', 'Nouvelle commande', 'Novo pedido', 'नया आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (548, 'served', 'user', '', 'served', 'تقدم', 'servido', 'обслуживается', '服务', 'servi', 'servido', 'सेवित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (549, 'serve', 'user', '', 'serve', 'تخدم', 'servir', 'служить', '服务', 'servir', 'servir', 'सेवा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (550, 'start_preparing', 'user', '', 'Start Preparing', 'بدء التحضير', 'Empezar a preparar', 'Начать подготовку', '开始准备', 'Démarrer la préparation', 'Começar a preparar', 'तैयारी शुरू करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (551, 'today_remaining_off', 'user', '', 'Today is our off day', 'اليوم هو يوم إجازتنا', 'Hoy es nuestro día libre', 'Сегодня у нас выходной', '今天是我们的休息日', 'Aujourd\'hui est notre jour de congé', 'Hoje é nosso dia de folga', 'आज हमारा छुट्टी का दिन है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (552, 'prepared_finish', 'user', '', 'Prepared finish', 'إنهاء مُجهز', 'Acabado preparado', 'Готовая отделка', '准备完成', 'Finition préparée', 'Acabamento preparado', 'तैयार खत्म', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (553, 'create_menu', 'user', '', 'Create Menu', 'إنشاء قائمة', 'Crear menú', 'Создать меню', '创建菜单', 'Créer Menu', 'Criar menu', 'मेनू बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (554, 'generate_qr_code', 'user', '', 'Generate QR code', 'إنشاء رمز الاستجابة السريعة', 'Generar código QR', 'Создать QR-код', '生成二维码', 'Générer le QR code', 'Gerar código QR', 'क्यूआर कोड जनरेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (555, 'menu_name', 'user', '', 'Menu name', 'اسم القائمة', 'Nombre del menú', 'Название меню', '菜单名称', 'Nom du menu', 'Nome do menu', 'मेनू नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (556, 'download_qr', 'user', '', 'Download QR', 'تنزيل QR', 'Descargar QR', 'Загрузить QR', '下载二维码', 'Télécharger QR', 'Baixar QR', 'क्यूआर डाउनलोड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (557, 'congratulations', 'user', '', 'Congratulations', 'تهانينا', 'Felicitaciones', 'Поздравляю', '恭喜', 'Félicitations', 'Parabéns', 'बधाई हो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (558, 'order_place_successfully', 'user', '', 'Order is completed and have been placed successfully', 'اكتمل الطلب وتم وضعه بنجاح', 'El pedido se completó y se realizó correctamente', 'Заказ выполнен и успешно размещен', '订单已完成并已成功下单', 'La commande est terminée et a été passée avec succès', 'O pedido foi concluído e foi colocado com sucesso', 'आदेश पूरा हो गया है और सफलतापूर्वक रखा गया है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (559, 'please_wait_msg', 'user', '', 'please wait..', 'من فضلك انتظر ..', 'por favor espere ..', 'пожалуйста, подождите ..', '请稍等..', 'veuillez patienter..', 'aguarde ..', 'कृपया प्रतीक्षा करें..', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (560, 'token_number', 'user', '', 'token number', 'token number', 'número de token', 'номер токена', '令牌号', 'numéro de jeton', 'número do token', 'टोकन नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (561, 'create_qr', 'user', '', 'Create QR', 'إنشاء QR', 'Crear QR', 'Создать QR', '创建二维码', 'Créer QR', 'Criar QR', 'क्यूआर बनाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (562, 'qr_builder', 'user', '', 'Qr Builder', 'ريال قطري البناء', 'Constructor de Qr', 'Qr Builder', 'Qr Builder', 'Qr Builder', 'Qr Builder', 'क्यूआर बिल्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (563, 'new_dine_order', 'user', '', 'new dine order', 'طلب عشاء جديد', 'nueva orden de cena', 'новый заказ на обед', '新的用餐订单', 'nouvelle commande de dîner', 'novo pedido de jantar', 'नया भोजन आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (564, 'restaurant_dine_in', 'user', '', 'Restaurant Dine-in', 'تناول الطعام في المطعم', 'Restaurante para cenar', 'Ресторан Dine-in', '餐厅堂食', 'Dîner au restaurant', 'Jantar no restaurante', 'रेस्तरां डाइन-इन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (565, 'kds', 'user', '', 'KDS', 'KDS', 'KDS', 'KDS', 'KDS', 'KDS', 'KDS', 'केडीएस', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (566, 'qr_code_generate_msg', 'user', '', 'After generating Qr code download the Qr code and add in your custom flyer', 'بعد إنشاء رمز Qr , قم بتنزيل رمز Qr وأضف نشرة إعلانية مخصصة لك', 'Después de generar el código Qr, descargue el código Qr y agregue su folleto personalizado', 'После генерации QR-кода загрузите Qr-код и добавьте свой индивидуальный флаер', '生成二维码后下载二维码并添加自定义传单', 'Après avoir généré le code Qr, téléchargez le code Qr et ajoutez-le dans votre flyer personnalisé', 'Depois de gerar o código Qr, baixe o código Qr e adicione seu folheto personalizado', 'क्यूआर कोड जनरेट करने के बाद क्यूआर कोड डाउनलोड करें और अपने कस्टम फ्लायर में जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (567, 'extras', 'label', '', 'Extras', 'إضافات', 'Extras', 'Дополнительно', '额外', 'Extras', 'Extras', 'अतिरिक्त', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (568, 'order_running_msg', 'admin', '', 'Your order is still running! you cant order the same item until it is completed', 'طلبك لا يزال قيد التشغيل! لا يمكنك الحصول على نفس العنصر حتى يكتمل', '¡Tu pedido aún se está ejecutando! No puedes pedir el mismo artículo hasta que se complete', 'Ваш заказ все еще выполняется! Вы не можете заказать тот же товар, пока он не будет завершен', '您的订单仍在运行！在完成之前您不能订购相同的商品', 'Votre commande est toujours en cours ! vous ne pouvez pas commander le même article tant qu\'elle n\'est pas terminée', 'Seu pedido ainda está em execução! Você não pode pedir o mesmo item até que seja concluído', 'आपका ऑर्डर अभी भी चल रहा है! आप उसी आइटम को पूरा होने तक ऑर्डर नहीं कर सकते', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (569, 'staff', 'admin', '', 'Staff', 'طاقم العمل', 'Personal', 'Персонал', '员工', 'Personnel', 'Equipe', 'स्टाफ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (570, 'staff_list', 'admin', '', 'Staff list', 'قائمة الموظفين', 'Lista de personal', 'Список сотрудников', '员工名单', 'Liste du personnel', 'Lista de funcionários', 'कर्मचारियों की सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (571, 'permission_list', 'admin', '', 'permission list', 'إذن_قائمة', 'lista de permisos', 'список разрешений', '权限列表', 'liste d\'autorisations', 'lista de permissões', 'अनुमति सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (572, 'add_straff', 'admin', '', 'Add Staff', 'إضافة طاقم عمل', 'Agregar personal', 'Добавить персонал', '添加员工', 'Ajouter du personnel', 'Adicionar equipe', 'स्टाफ जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (573, 'email_exits_in', 'admin', '', 'Email already exist into user table', 'البريد الإلكتروني موجود بالفعل في جدول المستخدم', 'El correo electrónico ya existe en la tabla de usuarios', 'Электронная почта уже существует в таблице пользователей', '电子邮件已存在于用户表中', 'Email existe déjà dans la table utilisateur', 'Email já existe na tabela do usuário', 'उपयोगकर्ता तालिका में ईमेल पहले से मौजूद है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (574, 'email_alreay_exits', 'admin', '', 'Email already exits', 'البريد الإلكتروني يخرج بالفعل', 'El correo electrónico ya existe', 'Электронная почта уже закрывается', '电子邮件已经存在', 'L\'e-mail existe déjà', 'O e-mail já existe', 'ईमेल पहले ही निकल चुका है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (575, 'available_permossion', 'admin', '', 'Available permission', 'السماح المتاح', 'Permosión disponible', 'Доступно разрешение', '可用权限', 'Autorisation disponible', 'Permossão disponível', 'उपलब्ध अनुमति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (576, 'not_found', 'label', '', 'Not found', 'غير موجود', 'No encontrado', 'Не найдено', '未找到', 'Non trouvé', 'Não encontrado', 'नहीं मिला', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (577, 'live_order_status', 'label', '', 'Live order status', 'حالة الطلب المباشر', 'Estado del pedido en vivo', 'Текущий статус заказа', '实时订单状态', 'Statut de la commande en direct', 'Status do pedido ativo', 'लाइव ऑर्डर की स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (578, 'extras', 'label', '', 'Extras', 'إضافات', 'Extras', 'Дополнительно', '额外', 'Extras', 'Extras', 'अतिरिक्त', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (579, 'trial_for_week', 'admin', '', 'Trial for 1 week', 'تجربة لمدة أسبوع واحد', 'Prueba de 1 semana', 'Пробная на 1 неделю', '试用 1 周', 'Essai pendant 1 semaine', 'Teste por 1 semana', '1 सप्ताह के लिए परीक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (580, 'trial_for_fifteen', 'admin', '', 'Trial for 15 days', 'نسخة تجريبية لمدة 15 يومًا', 'Prueba de 15 días', 'Пробная версия на 15 дней', '试用 15 天', 'Essai pendant 15 jours', 'Teste por 15 dias', '15 दिनों के लिए परीक्षण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (581, 'weekly', 'admin', '', 'Weekly', 'أسبوعي', 'Semanal', 'Еженедельно', '每周', 'Hebdomadaire', 'Semanal', 'साप्ताहिक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (582, '15_days', 'admin', '', '15 days', '15 يومًا', '15 días', '15 дней', '15 天', '15 jours', '15 dias', '15 दिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (583, 'is_signup', 'admin', '', 'Show signup button', 'إظهار زر التسجيل', 'Mostrar botón de registro', 'Показать кнопку регистрации', '显示注册按钮', 'Afficher le bouton d\'inscription', 'Mostrar botão de inscrição', 'साइनअप बटन दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (584, 'is_auto_verified', 'admin', '', 'Auto approved Trail user', 'مستخدم ممر معتمد تلقائيًا', 'Usuario de Trail aprobado automáticamente', 'Автоутвержденный пользователь трейла', '自动批准的跟踪用户', 'Utilisateur Trail auto approuvé', 'Usuário de trilha aprovado automaticamente', 'स्वतः स्वीकृत ट्रेल उपयोगकर्ता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (585, 'twillo_sms_settings', 'admin', '', 'Twilio SMS Settings', 'إعدادات Twillo SMS', 'Configuración de SMS Twillo', 'Настройки Twillo SMS', 'Twillo SMS 设置', 'Paramètres SMS Twillo', 'Configurações de Twillo SMS', 'ट्विलियो एसएमएस सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (586, 'account_sid', 'admin', '', 'Account SID', 'معرف الحساب', 'Cuenta SID', 'Идентификатор безопасности учетной записи', '帐户 SID', 'SID du compte', 'Conta SID', 'खाता SID', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (587, 'auth_token', 'admin', '', 'Auth Token', 'رمز المصادقة', 'Token de autenticación', 'Токен аутентификации', '身份验证令牌', 'Jeton d\'authentification', 'Token de autenticação', 'प्रामाणिक टोकन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (588, 'twillo_virtual_number', 'admin', '', 'Twilio Virtual Number', 'رقم Twilio الظاهري', 'Número virtual Twillo', 'Виртуальный номер Twillo', 'Twillo 虚拟号码', 'Numéro Virtuel Twillo', 'Número virtual Twillo', 'ट्विलियो वर्चुअल नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (589, 'inactive', 'admin', '', 'Inactive', 'غير نشط', 'Inactivo', 'Неактивно', '无效', 'Inactif', 'Inativo', 'निष्क्रिय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (590, 'accept_sms', 'admin', '', 'Accept SMS', 'قبول الرسائل القصيرة', 'Aceptar SMS', 'Принять SMS', '接受短信', 'Accepter SMS', 'Aceitar SMS', 'एसएमएस स्वीकार करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (591, 'complete_sms', 'admin', '', 'Complete SMS', 'SMS كاملة', 'SMS completo', 'Полное SMS', '完整的短信', 'SMS complet', 'SMS Completo', 'पूर्ण एसएमएस', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (592, 'sms_sent', 'admin', '', 'Message Sent', 'تم إرسال الرسالة', 'Mensaje enviado', 'Сообщение отправлено', '消息已发送', 'Message envoyé', 'Mensagem enviada', 'संदेश भेजा गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (593, 'accept_message', 'admin', '', 'Accept Message', 'قبول الرسالة', 'Aceptar mensaje', 'Принять сообщение', '接受消息', 'Accepter le message', 'Aceitar mensagem', 'संदेश स्वीकार करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (594, 'completed_message', 'admin', '', 'Completed Message', 'رسالة مكتملة', 'Mensaje completo', 'Завершенное сообщение', '完成的消息', 'Message terminé', 'Mensagem concluída', 'पूरा संदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (595, 'upgrade', 'admin', '', 'Upgrade', 'ترقية', 'Actualizar', 'Обновить', '升级', 'Mettre à jour', 'Atualizar', 'अपग्रेड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (596, 'show', 'label', '', 'show', 'عرض', 'mostrar', 'показать', '显示', 'afficher', 'mostrar', 'शो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (597, 'sorry_we_are_closed', 'label', '', 'Sorry We are closed', 'معذرة لقد أغلقنا', 'Lo sentimos, estamos cerrados', 'Извините, мы закрылись', '对不起，我们关门了', 'Désolé, nous sommes fermés', 'Desculpe, encerramos', 'क्षमा करें हम बंद हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (598, 'please_check_the_available_list', 'label', '', 'Please check the available list', 'تحقق من القائمة المتاحة', 'Por favor revise la lista disponible', 'Пожалуйста, проверьте доступный список', '请检查可用列表', 'Veuillez vérifier la liste disponible', 'Verifique a lista disponível', 'कृपया उपलब्ध सूची की जाँच करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (599, 'paypal_environment', 'label', '', 'Paypal Environment', 'بيئة Paypal', 'Entorno de Paypal', 'Среда Paypal', 'Paypal 环境', 'Environnement Paypal', 'Ambiente Paypal', 'पेपाल पर्यावरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (600, 'pickup_points', 'label', '', 'Pickup Points', 'نقاط الالتقاء', 'Puntos de recogida', 'Пункты выдачи»', '上车点', 'Points de retrait', 'Pontos de coleta', 'पिकअप पॉइंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (601, 'order_is_waiting_for_picked', 'label', '', 'Order is waiting for picked', 'الطلب ينتظر الاختيار', 'El pedido está esperando ser recogido', 'Заказ ждет комплектации', '订单正在等待挑选', 'La commande est en attente de prélèvement', 'O pedido está esperando para ser selecionado', 'आदेश चुने जाने की प्रतीक्षा कर रहा है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (602, 'phone_already_exits', 'label', '', 'Phone already exits', 'الهاتف يخرج بالفعل', 'El teléfono ya sale', 'Телефон уже выходит', '电话已经退出', 'Le téléphone sort déjà', 'O telefone já existe', 'फ़ोन पहले ही निकल चुका है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (603, 'customer_login', 'label', '', 'Customer Login', 'تسجيل دخول العميل', 'Inicio de sesión de cliente', 'Логин клиента', '客户登录', 'Connexion client', 'Login do cliente', 'ग्राहक लॉगिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (604, 'date', 'label', '', 'Date', 'التاريخ', 'Fecha', 'Дата', '日期', 'Date', 'Data', 'तारीख', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (605, 'order_status', 'label', '', 'Order status', 'حالة الطلب', 'Estado del pedido', 'Статус заказа', '订单状态', 'Statut de la commande', 'Status do pedido', 'आदेश की स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (606, 'customer', 'label', '', 'Customer', 'العميل', 'Cliente', 'Клиент', '客户', 'Client', 'Cliente', 'ग्राहक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (607, 'unit_price', 'label', '', 'Unit price', 'سعر الوحدة', 'Precio unitario', 'Цена за единицу', '单价', 'Prix unitaire', 'Preço unitário', 'इकाई मूल्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (608, 'amount', 'label', '', 'Amount', 'المبلغ', 'Cantidad', 'Сумма', '金额', 'Montant', 'Quantidade', 'राशि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (609, 'export', 'label', '', 'Export', 'تصدير', 'Exportar', 'Экспорт', '导出', 'Exporter', 'Exportar', 'निर्यात', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (610, 'print', 'label', '', 'Print', 'طباعة', 'Imprimir', 'Печать', '打印', 'Imprimer', 'Imprimir', 'प्रिंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (611, 'customer_name', 'label', '', 'Customer Name', 'اسم العميل', 'Nombre del cliente', 'Имя клиента', '客户姓名', 'Nom du client', 'Nome do cliente', 'ग्राहक का नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (612, 'delivery_staff_panel', 'label', '', 'Delivery Staff panel', 'لوحة طاقم التوصيل', 'Panel de personal de entrega', 'Панель сотрудников службы доставки', '送货员面板', 'Panneau Personnel de livraison', 'Painel da equipe de entrega', 'डिलीवरी स्टाफ पैनल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (613, 'delivery_staff', 'label', '', 'Delivery Staff', 'طاقم التوصيل', 'Personal de entrega', 'Доставщик', '送货员', 'Personnel de livraison', 'Equipe de entrega', 'डिलीवरी स्टाफ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (614, 'default_prepared_time', 'label', '', 'Default Prepared time', 'وقت التحضير الافتراضي', 'Tiempo de preparación predeterminado', 'Время подготовки по умолчанию', '默认准备时间', 'Heure de préparation par défaut', 'Tempo padrão de preparação', 'डिफ़ॉल्ट तैयार समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (615, 'total_earnings', 'label', '', 'Total Earnings', 'إجمالي الأرباح', 'Ingresos totales', 'Общий доход', '总收益', 'Total des gains', 'Ganhos totais', 'कुल कमाई', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (616, 'picked', 'label', '', 'Picked', 'منتقى', 'Elegido', 'Отобрано', '选择', 'Choisis', 'Selecionado', 'चुना गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (617, 'mark_as_picked', 'label', '', 'Mark as picked', 'وضع علامة على أنه مختار', 'Marcar como elegido', 'Отметить как выбранное', '标记为已选', 'Marquer comme choisi', 'Marcar como escolhido', 'चुने गए के रूप में चिह्नित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (618, 'mark_as_completed', 'label', '', 'Mark as completed', 'وضع علامة كمكتملة', 'Marcar como completado', 'Отметить как завершенное', '标记为已完成', 'Marquer comme terminé', 'Marcar como concluído', 'पूर्ण के रूप में चिह्नित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (619, 'mark_as_accepted', 'label', '', 'Mark as Accepted', 'وضع علامة كمقبول', 'Marcar como aceptado', 'Пометить как принятый', '标记为已接受', 'Marquer comme accepté', 'Marcar como aceito', 'स्वीकृत के रूप में चिह्नित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (620, 'account', 'label', '', 'Account', 'الحساب', 'Cuenta', 'Учетная запись', '帐户', 'Compte', 'Conta', 'खाता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (621, 'ongoing', 'label', '', 'On Going', 'قيد التنفيذ', 'Continuando', 'В пути', '进行中', 'En cours', 'Em andamento', 'ऑन गोइंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (622, 'earning', 'label', '', 'Earning', 'ربح', 'Ganancia', 'Заработок', '收入', 'Gagner', 'Ganhar', 'कमाई', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (623, 'cod', 'label', '', 'COD', 'COD', 'COD', 'COD', '货到付款', 'COD', 'COD', 'सीओडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (624, 'accepted_by_delivery_staff', 'label', '', 'Accepted By Delivery Staff', 'تم قبوله بواسطة طاقم التوصيل', 'Aceptado por el personal de entrega', 'Принято сотрудниками службы доставки', '送货人员已接受', 'Accepté par le personnel de livraison', 'Aceito pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा स्वीकृत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (625, 'accepted_by', 'label', '', 'Accepted By', 'مقبول من قبل', 'Aceptado por', 'Принято', '被接受', 'Accepté par', 'Aceito por', 'द्वारा स्वीकृत', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (626, 'delivery_staff', 'label', '', 'Delivery Staff', 'طاقم التوصيل', 'Personal de entrega', 'Доставщик', '送货员', 'Personnel de livraison', 'Equipe de entrega', 'डिलीवरी स्टाफ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (627, 'picked_by_delivery_staff', 'label', '', 'Picked By Delivery Staff', 'اختارها طاقم التوصيل', 'Elegido por el personal de entrega', 'Отобрано сотрудниками службы доставки', '由送货人员挑选', 'Préparé par le personnel de livraison', 'Selecionado pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा चुना गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (628, 'picked_by', 'label', '', 'Picked By', 'انتقى بواسطة', 'Seleccionado por', 'Выбрано', '选择者', 'Choisi par', 'Selecionado por', 'पिक्ड बाय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (629, 'delivered_by', 'label', '', 'Delivered By', 'تم التسليم بواسطة', 'Entregado por', 'Доставлено', '交付者', 'Livré par', 'Entregue por', 'द्वारा वितरित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (630, 'customer_info', 'label', '', 'Customer info', 'معلومات العميل', 'Información del cliente', 'Информация о клиенте', '客户信息', 'Informations client', 'Informações do cliente', 'ग्राहक जानकारी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (631, 'delivered_by_delivery_staff', 'label', '', 'Delivered By Delivery Staff', 'تم التوصيل بواسطة طاقم التوصيل', 'Entregado por personal de entrega', 'Доставлено сотрудниками службы доставки', '由送货人员送货', 'Livré par le personnel de livraison', 'Entregue pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा वितरित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (632, 'thank_you_purchase_msg', 'label', '', 'Thank you for shopping with us . Please come again', 'شكرًا لك على التسوق معنا. يرجى العودة مرة أخرى', 'Gracias por comprar con nosotros. Vuelva de nuevo', 'Спасибо, что сделали у нас покупки. Приходите еще раз', '感谢您与我们一起购物。请再来', 'Merci d\'avoir fait du shopping avec nous . S\'il vous plaît revenez', 'Obrigado por comprar conosco. Por favor, volte', 'हमारे साथ खरीदारी करने के लिए धन्यवाद। कृपया फिर से आएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (633, 'ordered_placed', 'label', '', 'Order Placed', 'تم تقديم الطلب', 'Pedido realizado', 'Заказ размещен', '已下订单', 'Commande passée', 'Pedido feito', 'आदेश दिया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (634, 'we_have_received_your_order', 'label', '', 'We have received your order', 'لقد تلقينا طلبك', 'Hemos recibido su pedido', 'Мы получили ваш заказ', '我们已收到您的订单', 'Nous avons bien reçu votre commande', 'Recebemos seu pedido', 'हमें आपका आदेश प्राप्त हो गया है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (635, 'order_confirmed', 'label', '', 'Order confirmed', 'تم تأكيد الطلب', 'Pedido confirmado', 'Заказ подтвержден', '订单确认', 'Commande confirmée', 'Pedido confirmado', 'आदेश की पुष्टि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (636, 'your_order_has_been_confirmed', 'label', '', 'Your order has beep confirmed', 'تم تأكيد طلب beeb الخاص بك', 'Tu pedido ha sido confirmado', 'Ваш заказ подтвержден', '您的订单已被确认', 'Votre commande a été confirmée par bip', 'Seu pedido foi confirmado por bipe', 'आपके आदेश की बीप कन्फर्म हो गई है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (637, 'Order Processed', 'label', '', 'Order Processed', 'تمت معالجة الطلب', 'Pedido procesado', 'Заказ обработан', '订单已处理', 'Commande traitée', 'Pedido processado', 'आदेश संसाधित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (638, 'date', 'label', '', 'Date', 'التاريخ', 'Fecha', 'Дата', '日期', 'Date', 'Data', 'तारीख', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (639, 'we_are_preparing_your_order', 'label', 'We are preparing your order', 'We are preparing your order', 'نحن نجهز طلبك', 'Estamos preparando su pedido', 'Готовим ваш заказ', '我们正在准备您的订单', 'Nous préparons votre commande', 'Estamos preparando seu pedido', 'हम आपका ऑर्डर तैयार कर रहे हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (640, 'ready_to_pickup', 'label', 'Ready to pickup', 'Ready to pickup', 'جاهز للاستلام', 'Listo para recoger', 'Готов к самовывозу', '准备取货', 'Prêt à ramasser', 'Pronto para retirada', 'पिकअप के लिए तैयार', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (641, 'your_order_is_ready_to_pickup', 'label', 'Your order is ready for pickup', 'Your order is ready for pickup', 'طلبك جاهز للاستلام', 'Su pedido está listo para ser recogido', 'Ваш заказ готов к самовывозу', '您的订单已准备好取货', 'Votre commande est prête à être récupérée', 'Seu pedido está pronto para retirada', 'आपका ऑर्डर पिकअप के लिए तैयार है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (642, 'order_confirmed_by_dboy', 'label', 'Order confirm by delivery staff', 'Order confirm by delivery staff', 'تأكيد الطلب بواسطة طاقم التوصيل', 'Pedido confirmado por el personal de entrega', 'Заказ подтвержден сотрудниками службы доставки', '送货人员确认订单', 'Commande confirmée par le livreur', 'Confirmação do pedido pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा आदेश की पुष्टि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (643, 'order_accept_by_dboy', 'label', 'Order accepted by delivery staff', 'Order accepted by delivery staff', 'تم قبول الطلب من قبل طاقم التوصيل', 'Pedido aceptado por el personal de entrega', 'Заказ принят сотрудниками службы доставки', '送货人员接受订单', 'Commande acceptée par le livreur', 'Pedido aceito pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा स्वीकार किया गया आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (644, 'order_picked', 'label', 'Order Picked', 'Order Picked', 'تم انتقاء الطلب', 'Pedido seleccionado', 'Заказ выбран', '订单已选', 'Commande sélectionnée', 'Ordem escolhida', 'आदेश चुना गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (645, 'order_picked_by_dboy', 'label', 'Order picked by delivery staff', 'Order picked by delivery staff', 'تم اختيار الطلب بواسطة طاقم التوصيل', 'Pedido recogido por el personal de entrega', 'Заказ доставлен сотрудниками службы доставки', '送货员拣选的订单', 'Commande prélevée par le livreur', 'Pedido escolhido pela equipe de entrega', 'डिलीवरी स्टाफ द्वारा चुना गया ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (646, 'order_delivered', 'label', 'Order Delivered', 'Order Delivered', 'تم تسليم الطلب', 'Pedido entregado', 'Заказ доставлен', '订单已交付', 'Commande livrée', 'Pedido entregue', 'आदेश दिया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (647, 'order_delivered_successfully', 'label', 'Order delivered successfully', 'Order delivered successfully', 'تم تسليم الطلب بنجاح', 'Pedido entregado correctamente', 'Заказ успешно доставлен', '订单交付成功', 'Commande livrée avec succès', 'Pedido entregue com sucesso', 'आदेश सफलतापूर्वक दिया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (648, 'filter', 'admin', 'Filter', 'Filter', 'عامل التصفية', 'Filtro', 'Фильтр', '过滤器', 'Filtre', 'Filtro', 'फ़िल्टर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (649, 'clear', 'admin', 'Clear', 'Clear', 'مسح', 'Borrar', 'Очистить', '清除', 'Effacer', 'Limpar', 'साफ़ करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (650, 'shipping_address', 'admin', 'Shipping Address', 'Shipping Address', 'عنوان الشحن', 'Dirección de envío', 'Адрес доставки', '送货地址', 'Adresse de livraison', 'Endereço de entrega', 'शिपिंग पता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (651, 'get_direction', 'admin', 'Get direction', 'Get direction', 'الحصول على الاتجاه', 'Obtener dirección', 'Получить направление', '获取方向', 'Obtenir la direction', 'Obter direção', 'दिशा प्राप्त करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (652, 'call_now', 'admin', 'Call now', 'Call now', 'اتصل الآن', 'Llamar ahora', 'Позвони сейчас', '现在打电话', 'Appeler maintenant', 'Ligue agora', 'अभी कॉल करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (653, 'order_items', 'admin', 'OrderItems', 'Order Items', 'عناصر الطلب', 'Artículos de pedido', 'Элементы заказа', '订单项', 'Commander des articles', 'Itens do pedido', 'आइटम ऑर्डर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (654, 'shop_configuration', 'admin', 'Shop Configuration', 'Shop Configuration', 'تكوين المتجر', 'Configuración de la tienda', 'Конфигурация магазина', '商店配置', 'Configuration de la boutique', 'Configuração da loja', 'दुकान विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (655, 'staffs', 'admin', 'Staffs', 'Staffs', 'طاقم العمل', 'Personal', 'Посохи', '员工', 'Personnel', 'Staffs', 'कर्मचारी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (656, 'restaurants', 'admin', 'Restaurants', 'Restaurants', 'مطاعم', 'Restaurantes', 'Рестораны', '餐厅', 'Restaurants', 'Restaurantes', 'रेस्तरां', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (657, 'preferences', 'admin', 'Preferences', 'Preferences', 'التفضيلات', 'Preferencias', 'Настройки', '首选项', 'Préférences', 'Preferências', 'वरीयताएँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (658, 'recaptcha_settings', 'admin', 'Recaptcha Settings', 'ReCaptcha Settings', 'إعدادات Recaptcha', 'Configuración de Recaptcha', 'Настройки рекапчи', '重新验证设置', 'Paramètres ReCaptcha', 'Configurações ReCaptcha', 'रीकैप्चा सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (659, 'on', 'admin', 'On', 'on', 'تشغيل', 'activado', 'вкл.', '开', 'sur', 'ligado', 'चालू', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (660, 'off', 'admin', 'Off', 'off', 'إيقاف', 'desactivado', 'выкл.', '关闭', 'désactivé', 'desligado', 'बंद', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (661, 'enable_to_allow_signup_system', 'admin', 'Enable to allow sign up users to your system', 'Enable to allow sign up users to your system', 'مكّن للسماح للمستخدمين بتسجيل الدخول إلى نظامك', 'Habilitar para permitir que los usuarios se registren en su sistema', 'Включить, чтобы разрешить регистрацию пользователей в вашей системе', '启用以允许注册用户到您的系统', 'Activer pour autoriser l\'inscription d\'utilisateurs sur votre système', 'Habilite para permitir a inscrição de usuários em seu sistema', 'उपयोगकर्ताओं को अपने सिस्टम में साइन अप करने की अनुमति दें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (662, 'enable_to_allow_auto_approve', 'admin', 'Enable to allow auto-approved when users sign up to your system', 'Enable to allow auto-approved when users sign up to your system', 'مكّن للسماح بالموافقة التلقائية عند تسجيل المستخدمين في نظامك', 'Habilite para permitir la aprobación automática cuando los usuarios se registren en su sistema', 'Включите, чтобы разрешить автоматическое подтверждение при регистрации пользователей в вашей системе', '启用以在用户注册您的系统时允许自动批准', 'Activer pour autoriser l\'approbation automatique lorsque les utilisateurs s\'inscrivent sur votre système', 'Ative para permitir a aprovação automática quando os usuários se inscreverem em seu sistema', 'उपयोगकर्ताओं द्वारा आपके सिस्टम में साइन अप करने पर स्वतः स्वीकृत होने की अनुमति देना सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (663, 'enable_to_allow_email_verification', 'admin', 'Enable to allow email verification when users sign up to your system', 'Enable to allow email verification when users sign up to your system', 'مكّن للسماح بالتحقق من البريد الإلكتروني عند قيام المستخدمين بالتسجيل في نظامك', 'Habilite para permitir la verificación de correo electrónico cuando los usuarios se registren en su sistema', 'Включите, чтобы разрешить проверку электронной почты при регистрации пользователей в вашей системе', '在用户注册您的系统时启用电子邮件验证', 'Activer pour autoriser la vérification par e-mail lorsque les utilisateurs s\'inscrivent sur votre système', 'Ative para permitir a verificação de e-mail quando os usuários se inscreverem em seu sistema', 'उपयोगकर्ताओं द्वारा आपके सिस्टम में साइन अप करने पर ईमेल सत्यापन की अनुमति देना सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (664, 'enable_to_allow_free_email_verification', 'admin', 'Enable to allow email verification when users sign up with free package to your system', 'Enable to allow email verification when users sign up with free package to your system', 'مكّن للسماح بالتحقق من البريد الإلكتروني عند قيام المستخدمين بالتسجيل باستخدام حزمة مجانية لنظامك', 'Habilite para permitir la verificación de correo electrónico cuando los usuarios se registren con un paquete gratuito en su sistema', 'Включите, чтобы разрешить проверку электронной почты, когда пользователи регистрируются с бесплатным пакетом в вашей систеe', '当用户使用免费包注册到您的系统时，启用允许电子邮件验证', 'Activer pour autoriser la vérification par e-mail lorsque les utilisateurs s\'inscrivent avec un package gratuit sur votre système', 'Ative para permitir a verificação de e-mail quando os usuários se inscreverem com um pacote gratuito para o seu sistema', 'जब उपयोगकर्ता आपके सिस्टम में मुफ्त पैकेज के साथ साइन अप करते हैं तो ईमेल सत्यापन की अनुमति देने में सक्षम होते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (665, 'user_get_an_invoice', 'admin', 'Users get an invoice when signing up to your system', 'Users get an invoice when signing up to your system', 'يحصل المستخدمون على فاتورة عند التسجيل في نظامك', 'Los usuarios obtienen una factura al registrarse en su sistema', 'Пользователи получают счет при регистрации в вашей системе', '用户在注册您的系统时会收到发票', 'Les utilisateurs reçoivent une facture lors de leur inscription à votre système', 'Os usuários recebem uma fatura ao se inscreverem em seu sistema', 'आपके सिस्टम में साइन अप करने पर उपयोगकर्ताओं को एक इनवॉइस मिलता है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (666, 'rating_in_landing_page', 'admin', 'Show rating in landing page', 'Show rating in landing page', 'عرض التصنيف في الصفحة المقصودة', 'Mostrar calificación en la página de destino', 'Показать рейтинг на целевой странице', '在登陆页面显示评分', 'Afficher la note dans la page de destination', 'Mostrar classificação na página de destino', 'लैंडिंग पेज में रेटिंग दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (667, 'show_signup_button', 'admin', 'Enable to Show signup button in menu', 'Enable to Show signup button in menu', 'تمكين لإظهار زر التسجيل في القائمة', 'Habilitar para mostrar el botón de registro en el menú', 'Разрешить показывать кнопку регистрации в меню', '启用在菜单中显示注册按钮', 'Activer l\'affichage du bouton d\'inscription dans le menu', 'Habilitar para mostrar o botão de inscrição no menu', 'मेनू में साइनअप बटन दिखाने में सक्षम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (668, 'auto_approve_trial_user', 'admin', 'Enable to Auto Approved trial users when registration in system', 'Enable to Auto Approved trial users when registration in system', 'قم بتمكين مستخدمي الإصدار التجريبي المعتمد تلقائيًا عند التسجيل في النظام', 'Habilitar a los usuarios de prueba aprobados automáticamente al registrarse en el sistema', 'Включить автоматическое одобрение пробных пользователей при регистрации в системе', '在系统中注册时启用自动批准的试用用户', 'Activer les utilisateurs d\'essai approuvés automatiquement lors de l\'enregistrement dans le système', 'Habilitar usuários de teste aprovados automaticamente ao se registrar no sistema', 'सिस्टम में पंजीकरण के समय स्वतः स्वीकृत परीक्षण उपयोगकर्ताओं को सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (669, 'add_restaurant', 'admin', 'Add New Restaurant', 'Add New Restaurant', 'إضافة مطعم جديد', 'Agregar nuevo restaurante', 'Добавить новый ресторан', '添加新餐厅', 'Ajouter un nouveau restaurant', 'Adicionar novo restaurante', 'नया रेस्तरां जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (670, 'country', 'admin', 'Country', 'Country', 'دولة', 'País', 'Страна', '国家', 'Pays', 'País', 'देश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (671, 'fifteen', 'admin', 'Fifteen', 'Fifteen', 'خمسة عشر', 'Quince', 'Пятнадцать', '十五', 'Quinze', 'Quinze', 'पंद्रह', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (672, 'language_data', 'admin', 'Language Data', 'Language Data', 'بيانات اللغة', 'Datos de idioma', 'Языковые данные', '语言数据', 'Données de langue', 'Dados de idioma', 'भाषा डेटा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (673, 'enable_to_allow_in_your_system', 'admin', 'Enable to allow in your system', 'Enable to allow in your system', 'قم بتمكين السماح في نظامك', 'Habilitar para permitir en su sistema', 'Разрешить в вашей системе', '允许在你的系统中允许', 'Activer pour autoriser dans votre système', 'Habilite para permitir em seu sistema', 'अपने सिस्टम में अनुमति देने के लिए सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (674, 'stock_counter', 'admin', 'Stock counter', 'Stock counter', 'عداد المخزون', 'Contador de existencias', 'Прилавок на складе', '股票计数器', 'Compteur de stock', 'Contador de estoque', 'स्टॉक काउंटर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (675, 'payment_history', 'admin', 'Payment History', 'Payment History', 'تاريخ الدفع', 'Historial de pagos', 'История платежей', '付款历史', 'Historique des paiements', 'Histórico de pagamentos', 'भुगतान इतिहास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (676, 'default_email', 'admin', 'Default Email', 'Default Email', 'البريد الإلكتروني الافتراضي', 'Correo electrónico predeterminado', 'Электронная почта по умолчанию', '默认邮箱', 'Email par défaut', 'Email padrão', 'डिफ़ॉल्ट ईमेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (677, 'invoice', 'admin', 'Invoice', 'Invoice', 'فاتورة', 'Factura', 'Счет-фактура', '发票', 'Facture', 'Fatura', 'चालान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (678, 'table_order', 'admin', 'Table Order', 'Table Order', 'ترتيب الجدول', 'Orden de la tabla', 'Порядок таблиц', '表顺序', 'Ordre des tables', 'Ordem da Tabela', 'टेबल ऑर्डर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (679, 'restaurant_configuration', 'admin', 'Restaurant configuration', 'Restaurant configuration', 'تكوين المطعم', 'Configuración del restaurante', 'Конфигурация ресторана', '餐厅配置', 'Configuration du restaurant', 'Configuração do restaurante', 'रेस्तरां विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (680, 'tables', 'admin', 'Tables', 'Tables', 'الجداول', 'Tablas', 'Таблицы', '表格', 'Tableaux', 'Tabelas', 'टेबल्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (681, 'img_url', 'admin', 'Image URL', 'Image URL', 'رابط الصورة', 'URL de la imagen', 'URL изображения', '图片网址', 'URL de l\'image', 'URL da imagem', 'छवि यूआरएल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (682, 'dboy_list', 'admin', 'Delivery staff List', 'Delivery staff List', 'قائمة موظفي التوصيل', 'Lista de personal de entrega', 'Список сотрудников службы доставки', '送货人员名单', 'Liste du personnel de livraison', 'Lista de funcionários de entrega', 'डिलीवरी स्टाफ सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (683, 'delivery_guy_login', 'admin', 'Delivery Guy Login', 'Delivery Guy Login', 'رجل التوصيل تسجيل الدخول', 'Inicio de sesión del repartidor', 'Логин курьера', '送货员登录', 'Connexion du livreur', 'Login do funcionário de entrega', 'डिलीवरी गाई लॉग इन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (684, 'personal_info', 'admin', 'Personal Info', 'Personal Info', 'معلومات شخصية', 'Información personal', 'Личная информация', '个人信息', 'Informations personnelles', 'Informações pessoais', 'व्यक्तिगत जानकारी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (685, 'customer_panel', 'admin', 'Customer panel', 'Customer panel', 'لوحة العملاء', 'Panel de clientes', 'Панель клиентов', '客户面板', 'Panneau client', 'Painel do cliente', 'ग्राहक पैनल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (686, 'orders', 'admin', 'Orders', 'Orders', 'الطلب #٪ s', 'Pedidos', 'Заказы', '订单', 'Commandes', 'Pedidos', 'आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (687, 'pos_print', 'admin', 'POS Print', 'POS Print', 'طباعة POS', 'Impresión POS', 'Печать POS', 'POS 打印', 'Impression PLV', 'Impressão POS', 'पीओएस प्रिंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (688, 'change_password', 'admin', 'Change Password', 'Change Password', 'تغيير كلمة المرور', 'Cambiar contraseña', 'Изменить пароль', '更改密码', 'Changer le mot de passe', 'Alterar senha', 'पासवर्ड बदलें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (689, 'order_processed', 'admin', 'Order Processed', 'Order Processed', 'تم انهاء الطلب', 'Pedido procesado', 'Заказ обработан', '订单已处理', 'Commande traitée', 'Pedido processado', 'आदेश संसाधित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (690, 'new_registration', 'admin', 'New Registration', 'New Registration', 'تسجيل جديد', 'Nuevo registro', 'Новая регистрация', '新注册', 'Nouvelle inscription', 'Novo registro', 'नया पंजीकरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (691, 'already_have_account', 'admin', 'Already have account', 'Already have account', 'لديك حساب بالفعل', 'Ya tengo cuenta', 'Уже есть аккаунт', '已有账号', 'Ayez déjà un compte', 'Já tenho conta', 'पहले से खाता है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (692, 'login_success', 'admin', 'Login successfull', 'Login successful', 'تم تسجيل الدخول بنجاح', 'Inicio de sesión exitoso', 'Вход выполнен успешно', '登录成功', 'Connexion réussie', 'Login bem-sucedido', 'लॉगिन सफल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (693, 'welcome', 'admin', 'Welcome', 'Welcome', 'أهلا بك', 'Bienvenido', 'Добро пожаловать', '欢迎', 'Bienvenue', 'Bem-vindo', 'स्वागत है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (694, 'invalid_login', 'admin', 'Invalid login', 'Invalid login', 'تسجيل الدخول غير صالح', 'Inicio de sesión no válido', 'Неверный логин', '无效登录', 'Connexion invalide', 'Login inválido', 'अमान्य लॉगिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (695, 'registration_successfull', 'admin', 'Registration successfull', 'Registration successful', 'تم التسجيل بنجاح', 'Registro exitoso', 'Регистрация прошла успешно', '注册成功', 'Enregistrement réussi', 'Registro bem-sucedido', 'पंजीकरण सफल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (696, 'sorry', 'admin', 'Sorry', 'Sorry', 'آسف', 'Lo siento', 'Извините', '对不起', 'Désolé', 'Desculpe', 'सॉरी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (697, 'top_10_selling_item', 'admin', 'Top 10 Selling Item', 'Top 10 Selling Item', 'أفضل 10 سلعة مبيعًا', 'Los 10 artículos más vendidos', '10 самых продаваемых товаров', '前 10 名畅销商品', 'Top 10 des articles les plus vendus', '10 itens mais vendidos', 'शीर्ष 10 बिकने वाली वस्तु', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (698, 'top_10_most_earning_items', 'admin', 'Top 10 Most Earning Items', 'Top 10 Most Earning Items', 'أعلى 10 عناصر ربحًا', 'Los 10 artículos con más ingresos', '10 самых прибыльных товаров', '收入最高的前 10 项', 'Top 10 des objets les plus rémunérateurs', 'Os 10 itens mais lucrativos', 'शीर्ष 10 सबसे अधिक कमाई करने वाले आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (699, 'total_amount', 'admin', 'Total Amount', 'Total Amount', 'إجمالي المبلغ', 'Importe total', 'Общая сумма', '总金额', 'Montant total', 'Valor total', 'कुल राशि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (700, 'times', 'admin', 'Times', 'Times', 'تايمز', 'Tiempos', 'Время,', '时代', 'Temps', 'Vezes', 'टाइम्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (701, 'tax_fee', 'admin', 'Tax Fee', 'Tax Fee', 'رسوم الضرائب', 'Tasa de impuestos', 'Налоговый сбор', '税费', 'Frais de taxes', 'Taxa de imposto', 'कर शुल्क', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (702, 'minimum_order', 'admin', 'Minumum Order', 'Minimum Order', 'الحد الأدنى للطلب', 'Pedido mínimo', 'Минимальный заказ', '最小订单', 'Commande minimum', 'Pedido mínimo', 'न्यूनतम आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (703, 'tax', 'admin', 'Tax', 'Tax', 'ضريبة', 'Impuesto', 'Налог', '税', 'Taxe', 'Imposto', 'कर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (704, 'dine_in', 'admin', 'Dine-In', 'Dine-In', 'تناول الطعام', 'Cenar', 'Дайн-ин', '堂食', 'Dîner sur place', 'Jantar', 'डाइन-इन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (705, 'language_list', 'admin', 'Languages List', 'Languages List', 'قائمة اللغات', 'Lista de idiomas', 'Список языков', '语言列表', 'Liste des langues', 'Lista de idiomas', 'भाषा सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (706, 'show_language_dropdown_in_home', 'admin', 'Show Languages Dropdown in landing page', 'Show Languages Dropdown in landing page', 'عرض قائمة اللغات المنسدلة في الصفحة المقصودة', 'Mostrar menú desplegable de idiomas en la página de destino', 'Показать раскрывающийся список языков на целевой странице', '在登陆页面显示语言下拉菜单', 'Afficher la liste déroulante des langues dans la page de destination', 'Mostrar lista suspensa de idiomas na página inicial', 'लैंडिंग पृष्ठ में भाषाएँ ड्रॉपडाउन दिखाएँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (707, 'cart_is_empty', 'admin', 'Cart is empty', 'Cart is empty', 'عربة التسوق فارغة', 'El carrito está vacío', 'Корзина пуста', '购物车是空的', 'Le panier est vide', 'O carrinho está vazio', 'गाड़ी खाली है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (708, 'razorpay_key_id', 'admin', 'Razorpay Key Id', 'Razorpay Key Id', 'معرف مفتاح Razorpay', 'ID de clave de Razorpay', 'Идентификатор ключа Razorpay', 'Razorpay 密钥 ID', 'Identifiant de clé Razorpay', 'Razorpay Key Id', 'रेजोरपे कुंजी आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (709, 'secret_key', 'admin', 'Secret Key', 'Secret Key', 'المفتاح السري', 'Clave secreta', 'Секретный ключ', '秘钥', 'Clé secrète', 'Chave secreta', 'गुप्त कुंजी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (710, 'view_shop', 'admin', 'View Shop', 'View Shop', 'عرض المتجر', 'Ver tienda', 'Посмотреть магазин', '查看店铺', 'Voir la boutique', 'Ver loja', 'दुकान देखें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (711, 'give_your_feedback', 'admin', 'Please give your feedback', 'Please give your feedback', 'الرجاء تقديم ملاحظاتك', 'Por favor, envíenos sus comentarios', 'Пожалуйста, оставьте свой отзыв', '请提供您的反馈', 'Veuillez donner votre avis', 'Por favor, dê seus comentários', 'कृपया अपनी प्रतिक्रिया दें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (712, 'sort_by_newest', 'admin', 'Sort By Newest', 'Sort By Newest', 'فرز حسب الأحدث', 'Ordenar por el más nuevo', 'Сортировать по самому новому', '按最新排序', 'Trier par le plus récent', 'Classificar pelos mais recentes', 'नवीनतम के अनुसार क्रमित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (713, 'sort_by_highest_rating', 'admin', 'Sort BY Highest Rating', 'Sort BY Highest Rating', 'فرز حسب أعلى تقييم', 'Ordenar por clasificación más alta', 'Сортировать по наивысшему рейтингу', '按最高评分排序', 'Trier PAR la plus haute note', 'Classificar PELA classificação mais alta', 'उच्चतम रेटिंग के आधार पर छाँटें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (714, 'sort_by_lowest_rating', 'admin', 'Sort BY Lowest Rating', 'Sort BY Lowest Rating', 'فرز حسب أقل تقييم', 'Ordenar por calificación más baja', 'Сортировать по самому низкому рейтингу', '按最低评分排序', 'Trier PAR la note la plus basse', 'Classificar PELA classificação mais baixa', 'सबसे कम रेटिंग के आधार पर छाँटें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (715, 'one_min_ago', 'admin', 'One minute ago', 'One minute ago', 'قبل دقيقة واحدة', 'hace un minuto', 'минуту назад', '一分钟前', 'il y a une minute', 'um minuto atrás', 'एक मिनट पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (716, 'minutes_ago', 'admin', 'Minutes ago', 'Minutes ago', 'قبل دقيقة', 'hace minutos', 'минут назад', '分钟前', 'il y a quelques minutes', 'minutos atrás', 'मिनट पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (717, 'an_hour_ago', 'admin', 'An hour ago', 'An hour ago', 'قبل ساعة', 'hace una hora', 'час назад', '一小时前', 'il y a une heure', 'uma hora atrás', 'एक घंटा पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (718, 'hrs_ago', 'admin', 'Hrs ago', 'Hrs ago', 'قبل ساعة', 'hace horas', 'ч. Назад', '小时前', 'il y a quelques heures', 'horas atrás', 'घंटे पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (719, 'yesterday', 'admin', 'Yesterday', 'Yesterday', 'أمس', 'Ayer', 'Вчера', '昨天', 'Hier', 'Ontem', 'कल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (720, 'days_ago', 'admin', 'Days ago', 'Days ago', 'منذ أيام', 'hace días', 'дней назад', '几天前', 'il y a quelques jours', 'dias atrás', 'दिन पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (721, 'a_week_ago', 'admin', 'A week ago', 'A week ago', 'قبل أسبوع', 'hace una semana', 'неделю назад', '一周前', 'il y a une semaine', 'uma semana atrás', 'एक सप्ताह पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (722, 'weeks_ago', 'admin', 'Weeks ago', 'Weeks ago', 'منذ أسابيع', 'hace semanas', 'недель назад', '几周前', 'il y a quelques semaines', 'semanas atrás', 'सप्ताह पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (723, 'a_month_ago', 'admin', 'A month ago', 'A month ago', 'قبل شهر', 'hace un mes', 'месяц назад', '一个月前', 'il y a un mois', 'um mês atrás', 'एक महीने पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (724, 'months_ago', 'admin', 'Months ago', 'Months ago', 'منذ شهور', 'hace meses', 'месяцев назад', '几个月前', 'il y a des mois', 'meses atrás', 'महीने पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (725, 'one_year_ago', 'admin', 'One year ago', 'One year ago', 'منذ عام واحد', 'hace un año', 'год назад', '一年前', 'il y a un an', 'um ano atrás', 'एक साल पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (726, 'years_ago', 'admin', 'Years ago', 'Years ago', 'منذ سنوات', 'hace años', 'лет назад', '几年前', 'il y a des années', 'anos atrás', 'साल पहले', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (727, 'statistics', 'admin', 'Statistics', 'Statistics', 'إحصائيات', 'Estadísticas', 'Статистика', '统计', 'Statistiques', 'Estatísticas', 'सांख्यिकी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (728, 'total_purchased_item', 'admin', 'Total Purchased Items', 'Total Purchased Items', 'إجمالي العناصر المشتراة', 'Total de artículos comprados', 'Всего купленных товаров', '购买的物品总数', 'Total des articles achetés', 'Total de itens adquiridos', 'कुल ख़रीदी गई वस्तुएँ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (729, 'average_based_on', 'admin', 'Average based on', 'Average based on', 'متوسط على أساس', 'promedio basado en', 'в среднем на основе', '基于平均值', 'moyenne basée sur', 'média baseada em', 'औसत के आधार पर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (730, 'test_mail', 'admin', 'Test Mail', 'Test Mail', 'بريد تجريبي', 'Correo de prueba', 'Тестовое письмо', '测试邮件', 'Test de messagerie', 'Correio de teste', 'टेस्ट मेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (731, 'documentation', 'admin', 'Documentation', 'Documentation', 'التوثيق', 'Documentación', 'Документация', '文档', 'Documentation', 'Documentação', 'दस्तावेज़ीकरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (732, 'customer_list', 'admin', 'Customer List', 'Customer List', 'قائمة العملاء', 'Lista de clientes', 'Список клиентов', '客户列表', 'Liste des clients', 'Lista de clientes', 'ग्राहक सूची', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (733, 'total_orders', 'admin', 'Total Orders', 'Total Orders', 'إجمالي الطلبات', 'Total de pedidos', 'Всего заказов', '总订单', 'Total des commandes', 'Pedidos totais', 'कुल आदेश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (734, 'add_customer', 'admin', 'Add Customer', 'Add Customer', 'إضافة عميل', 'Agregar cliente', 'Добавить клиента', '添加客户', 'Ajouter un client', 'Adicionar cliente', 'ग्राहक जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (735, 'empty-phone', 'admin', 'Your phone is empty, please insert your phone number', 'Your phone is empty, please insert your phone number', 'هاتفك فارغ الرجاء إدخال رقم هاتفك', 'tu teléfono está vacío, ingresa tu número de teléfono', 'Ваш телефон пуст, введите свой номер телефона', '您的电话是空的，请输入您的电话号码', 'Votre téléphone est vide, veuillez insérer votre numéro de téléphone', 'Seu telefone está vazio, insira seu número de telefone', 'आपका फोन खाली है, कृपया अपना फोन नंबर डालें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (736, 'empty-country-1', 'admin', 'Your country is empty, please Set your country', 'Your country is empty, please Set your country', 'دولتك فارغة , يرجى تحديد بلدك', 'Su país está vacío, por favor configure su país', 'Ваша страна пуста, укажите страну', '您的国家为空，请设置您的国家', 'Votre pays est vide, veuillez définir votre pays', 'Seu país está vazio, defina seu país', 'आपका देश खाली है, कृपया अपना देश सेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (737, 'empty-country-2', 'admin', 'County will helps you to set your phone code and currency.', 'County will helps you to set your phone code and currency.', 'ستساعدك المقاطعة على تعيين رمز هاتفك وعملتك.', 'El condado le ayudará a configurar su código telefónico y moneda.', 'Округ поможет вам установить телефонный код и валюту.', 'County 将帮助您设置电话代码和货币。', 'Le comté vous aide à définir votre code de téléphone et votre devise.', 'County will ajuda você a definir o código do telefone e a moeda.', 'काउंटी आपको अपना फोन कोड और मुद्रा सेट करने में मदद करेगी।', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (738, 'empty-profile', 'admin', 'Your Profile picture is empty, Please Set your Profile picture.', 'Your Profile picture is empty, Please Set your Profile picture.', 'صورة ملفك الشخصي فارغة , يرجى تعيين صورة ملفك الشخصي.', 'Su foto de perfil está vacía, por favor configure su foto de perfil.', 'Ваше изображение профиля пусто, пожалуйста, установите изображение вашего профиля.', '您的头像为空，请设置您的头像。', 'Votre photo de profil est vide, veuillez définir votre photo de profil.', 'Sua imagem de perfil está vazia, defina sua imagem de perfil.', 'आपका प्रोफ़ाइल चित्र खाली है, कृपया अपना प्रोफ़ाइल चित्र सेट करें।', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (739, 'restaurant_empty_msg-0', 'admin', 'If You do not find menu and other options', 'If You do not find menu and other options', 'إذا لم تجد القائمة والخيارات الأخرى', 'Si no encuentra el menú y otras opciones', 'Если вы не нашли меню и другие опции', '如果您没有找到菜单和其他选项', 'Si vous ne trouvez pas le menu et les autres options', 'Se você não encontrar o menu e outras opções', 'यदि आपको मेनू और अन्य विकल्प नहीं मिलते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (740, 'restaurant_empty_msg-1', 'admin', 'Make sure Restaurant profile is complete', 'Make sure Restaurant profile is complete', 'تأكد من اكتمال ملف تعريف المطعم', 'Asegúrese de que el perfil del restaurante esté completo', 'Убедитесь, что профиль ресторана заполнен', '确保餐厅资料完整', 'Assurez-vous que le profil du restaurant est complet', 'Certifique-se de que o perfil do restaurante esteja completo', 'सुनिश्चित करें कि रेस्तरां प्रोफ़ाइल पूर्ण है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (741, 'restaurant_empty_msg-2', 'admin', 'You have to add phone, dial code and country', 'You have to add phone, dial code and country', 'يجب عليك إضافة رقم الهاتف ورمز الاتصال والدولة', 'Tienes que agregar teléfono, código de marcación y país', 'Вы должны добавить телефон, код набора и страну', '您必须添加电话、拨号代码和国家', 'Vous devez ajouter le téléphone, l\'indicatif et le pays', 'Você deve adicionar telefone, código de discagem e país', 'आपको फोन, डायल कोड और देश जोड़ना होगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (742, 'staff_password_msg', 'admin', 'Staff password will set 1234', 'Staff password will set 1234', 'كلمة مرور الموظفين ستعيّن 1234', 'La contraseña del personal establecerá 1234', 'Персональный пароль будет 1234', '员工密码设置为1234', 'Le mot de passe du personnel définira 1234', 'A senha da equipe será definida como 1234', 'स्टाफ पासवर्ड 1234 सेट करेगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (743, 'staff_password_change_msg', 'admin', 'Staff can change their password after login', 'Staff can change their password after login', 'يمكن للموظفين تغيير كلمة المرور الخاصة بهم بعد تسجيل الدخول', 'El personal puede cambiar su contraseña después de iniciar sesión', 'Персонал может изменить свой пароль после входа в систему', '员工可以在登录后更改密码', 'Le personnel peut changer son mot de passe après connexion', 'Funcionários podem alterar sua senha após o login', 'कर्मचारी लॉगिन के बाद अपना पासवर्ड बदल सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (744, 'dboy_password_msg', 'admin', 'Delivery guy password will set 1234', 'Delivery guy password will set 1234', 'كلمة مرور مسؤول التوصيل ستعيّن 1234', 'La contraseña del repartidor establecerá 1234', 'Пароль курьера установит 1234', '送货员密码将设置为 1234', 'Le mot de passe du livreur définira 1234', 'A senha do entregador será definida como 1234', 'डिलीवरी मैन पासवर्ड 1234 सेट हो जाएगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (745, 'dboy_password_change_msg', 'admin', 'Delivery guy can change password after login', 'Delivery guy can change password after login', 'يستطيع عامل التوصيل تغيير كلمة المرور بعد تسجيل الدخول', 'El repartidor puede cambiar la contraseña después de iniciar sesión', 'Разносчик может сменить пароль после входа в систему', '送货员登录后可以修改密码', 'Le livreur peut changer le mot de passe après la connexion', 'O entregador pode alterar a senha após o login', 'डिलीवरी मैन लॉगिन के बाद पासवर्ड बदल सकता है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (746, 'customer_password_msg', 'admin', 'Customer password will set 1234', 'Customer password will set 1234', 'كلمة مرور العميل ستعيّن 1234', 'La contraseña del cliente establecerá 1234', 'Пароль клиента будет 1234', '客户密码将设置为 1234', 'Le mot de passe du client définira 1234', 'A senha do cliente definirá 1234', 'ग्राहक पासवर्ड 1234 सेट करेगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (747, 'customer_password_change_msg', 'admin', 'Customer can change their password after login', 'Customer can change their password after login', 'يمكن للعميل تغيير كلمة المرور الخاصة به بعد تسجيل الدخول', 'El cliente puede cambiar su contraseña después de iniciar sesión', 'Клиент может изменить свой пароль после входа в систему', '客户可以在登录后更改密码', 'Le client peut changer son mot de passe après connexion', 'O cliente pode alterar sua senha após o login', 'ग्राहक लॉगिन के बाद अपना पासवर्ड बदल सकते हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (748, 'customer_details', 'admin', 'Customer Details', 'Customer Details', 'تفاصيل العميل', 'Detalles del cliente', 'Сведения о клиенте', '客户详情', 'Détails du client', 'Detalhes do cliente', 'ग्राहक विवरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (749, 'general', 'admin', 'General', 'General', 'عام', 'General', 'Общие', '通用', 'Général', 'Geral', 'सामान्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (750, 'update_with_my_old_information', 'admin', 'Update with my old information', 'Update with my old information', 'تحديث بمعلوماتي القديمة', 'Actualizar con mi información anterior', 'Обновить мою старую информацию', '更新我的旧信息', 'Mise à jour avec mes anciennes informations', 'Atualizar com minhas informações antigas', 'मेरी पुरानी जानकारी के साथ अपडेट करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (751, 'minimum_price_msg_for_cod', 'admin', 'Price not sufficient for COD', 'Price not sufficient for COD', 'السعر غير كافٍ للدفع عند الاستلام', 'Precio no suficiente para COD', 'Недостаточная цена для наложенного платежа', '价格不足以支付货到付款', 'Prix insuffisant pour COD', 'Preço não é suficiente para COD', 'सीओडी के लिए कीमत पर्याप्त नहीं है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (752, 'minimum_price', 'admin', 'Minimum Price', 'Minimum Price', 'أدنى سعر', 'Precio mínimo', 'Минимальная цена', '最低价格', 'Prix minimum', 'Preço mínimo', 'न्यूनतम मूल्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (753, 'add_new_location', 'admin', 'Add New Location', 'Add New Location', 'إضافة موقع جديد', 'Agregar nueva ubicación', 'Добавить новое местоположение', '添加新位置', 'Ajouter un nouvel emplacement', 'Adicionar novo local', 'नया स्थान जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (754, 'click_the_map_to_get_lan_ln', 'admin', 'Click the map to get Lat/Lng!', 'Click the map to get Lat/Lng!', 'انقر على الخريطة للحصول على Lat / Lng!', '¡Haz clic en el mapa para obtener Lat / Lng!', 'Щелкните карту, чтобы узнать широту / долготу!', '点击地图获取纬度/经度！', 'Cliquez sur la carte pour obtenir Lat/Lng!', 'Clique no mapa para obter Lat / Lng!', 'अक्षांश/भाषा प्राप्त करने के लिए मानचित्र पर क्लिक करें!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (755, 'customer_will_find_restaurant_with_location', 'admin', 'Customer will find your restaurant using this location', 'Customer will find your restaurant using this location', 'سيجد العميل مطعمك باستخدام هذا الموقع', 'El cliente encontrará su restaurante usando esta ubicación', 'Клиент найдет ваш ресторан по этому месту', '客户会在此位置找到您的餐厅', 'Le client trouvera votre restaurant en utilisant cet emplacement', 'O cliente encontrará seu restaurante usando este local', 'ग्राहक इस स्थान का उपयोग करके आपका रेस्तरां ढूंढेगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (756, 'search_for_items', 'admin', 'Search For Items', 'Search For Items', 'بحث عن العناصر', 'Buscar artículos', 'Искать предметы', '搜索项目', 'Rechercher des articles', 'Pesquisar itens', 'आइटम खोजें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (757, 'near_me', 'admin', 'Near Me', 'Near Me', 'بالقرب مني', 'Cerca de mí', 'Рядом со мной', '靠近我', 'Près de moi', 'Perto de mim', 'मेरे पास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (758, 'shop_rating', 'admin', 'Shop Rating', 'Shop Rating', 'تقييم المتجر', 'Calificación de la tienda', 'Рейтинг магазина', '店铺评分', 'Note de la boutique', 'Avaliação da loja', 'शॉप रेटिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (759, 'available_time', 'admin', 'Available Time', 'Available Time', 'الوقت المتاح', 'Tiempo disponible', 'Доступное время', '可用时间', 'Temps de disponibilité', 'Tempo disponível', 'उपलब्ध समय', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (760, 'variants', 'admin', 'Variants', 'Variants', 'المتغيرات', 'Variantes', 'Варианты', '变体', 'Variantes', 'Variantes', 'वेरिएंट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (761, 'total_sell', 'admin', 'Total Sell', 'Total Sell', 'إجمالي البيع', 'Venta total', 'Всего продаж', '总销售量', 'Vente totale', 'Venda total', 'कुल बिक्री', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (762, 'popular_store', 'admin', 'Popular Store', 'Popular Store', 'متجر شعبي', 'Tienda popular', 'Популярный магазин', '热门商店', 'Magasin populaire', 'Loja popular', 'लोकप्रिय स्टोर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (763, 'popular_items', 'admin', 'Popular Items', 'Popular Items', 'عناصر مشهورة', 'Elementos populares', 'Популярные товары', '热门商品', 'Objets populaires', 'Itens populares', 'लोकप्रिय आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (764, 'item_search', 'admin', 'Item Search', 'Item Search', 'بحث عن عنصر', 'Búsqueda de artículos', 'Поиск предметов', '物品搜索', 'Recherche d\'article', 'Pesquisa de item', 'आइटम खोज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (765, 'show_item_search_in_landing_page', 'admin', 'Show Item search  in landing page', 'Show Item search  in landing page', 'إظهار بحث العنصر في الصفحة المقصودة', 'Mostrar búsqueda de artículos en la página de destino', 'Показать поиск предметов на целевой странице', '在登陆页面显示项目搜索', 'Afficher la recherche d\'articles dans la page de destination', 'Mostrar pesquisa de item na página de destino', 'लैंडिंग पृष्ठ में आइटम खोज दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (766, 'locations', 'admin', 'Locations', 'Locations', 'المواقع', 'Ubicaciones', 'Местоположение', '位置', 'Emplacements', 'Locais', 'स्थान', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (767, 'latitude', 'admin', 'Latitude', 'Latitude', 'Latitude', 'Latitud', 'Широта', '纬度', 'Latitude', 'Latitude', 'अक्षांश', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (768, 'longitude', 'admin', 'Longitude', 'Longitude', 'خط الطول', 'Longitud', 'Долгота', '经度', 'Longitude', 'Longitude', 'देशांतर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (769, 'payment_configuration', 'admin', 'Payment configuration', 'Payment configuration', 'تهيئة الدفع', 'Configuración de pago', 'Конфигурация оплаты', '支付配置', 'Configuration de paiement', 'Configuração de pagamento', 'भुगतान विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (770, 'virtual_number', 'admin', 'Virtual Number', 'Virtual Number', 'رقم افتراضي', 'Número virtual', 'Виртуальный номер', '虚拟号码', 'Numéro virtuel', 'Número virtual', 'वर्चुअल नंबर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (771, 'please_select_your_payment_menthod', 'admin', 'Please select your payment method', 'Please select your payment method', 'الرجاء تحديد طريقة الدفع الخاصة بك', 'Seleccione su método de pago', 'Выберите способ оплаты', '请选择您的付款方式', 'Veuillez sélectionner votre mode de paiement', 'Selecione o seu método de pagamento', 'कृपया अपनी भुगतान विधि चुनें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (772, 'none', 'admin', 'None', 'None', 'بلا', 'Ninguno', 'Нет', '无', 'Aucun', 'Nenhum', 'कोई नहीं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (773, 'add_image', 'admin', 'Add Image', 'Add Image', 'إضافة صورة', 'Agregar imagen', 'Добавить изображение', '添加图片', 'Ajouter une image', 'Adicionar imagem', 'छवि जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (774, 'add_new_images', 'admin', 'Add new images', 'Add new images', 'إضافة صور جديدة', 'Agregar nuevas imágenes', 'Добавить новые изображения', '添加新图片', 'Ajouter de nouvelles images', 'Adicionar novas imagens', 'नई छवियां जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (775, 'customer_login_msg', 'admin', 'Enabled customer login in the checkout page', 'Enabled customer login in the checkout page', 'تمكين تسجيل دخول العميل في صفحة الخروج', 'Acceso de cliente habilitado en la página de pago', 'Доступен вход для клиентов на странице оформления заказа', '在结账页面启用客户登录', 'Connexion client activée dans la page de paiement', 'Login do cliente habilitado na página de checkout', 'चेकआउट पृष्ठ में सक्षम ग्राहक लॉगिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (776, 'reset', 'admin', 'Reset', 'Reset', 'إعادة تعيين', 'Reiniciar', 'Сбросить', '重置', 'Réinitialiser', 'Reiniciar', 'रीसेट', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (777, 'new', 'admin', 'New', 'New', 'جديد', 'Nuevo', 'Новый', '新', 'Nouveau', 'Novo', 'नया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (778, 'delivery_area', 'admin', 'Delivery Area', 'Delivery Area', 'منطقة التسليم', 'Área de entrega', 'Зона доставки', '送货区域', 'Zone de livraison', 'Área de entrega', 'वितरण क्षेत्र', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (779, 'add_delivery_area', 'admin', 'Add delivery Area', 'Add delivery Area', 'إضافة منطقة التسليم', 'Agregar área de entrega', 'Добавить зону доставки', '添加送货区域', 'Ajouter une zone de livraison', 'Adicionar área de entrega', 'डिलीवरी क्षेत्र जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (780, 'call_waiter', 'admin', 'Call Waiter', 'Call Waiter', 'نادل الاتصال', 'Llamar al camarero', 'Вызов официанта', '呼叫服务员', 'Appeler le serveur', 'Chamar garçom', 'वेटर को बुलाओ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (781, 'call', 'admin', 'Call', 'Call', 'اتصال', 'Llamar', 'Позвонить', '呼叫', 'Appeler', 'Ligar', 'कॉल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (782, 'enable_to_allow_call_waiter', 'admin', 'Enable to allow call waiter service', 'Enable to allow call waiter service', 'تمكين للسماح بخدمة النادل', 'Habilitar para permitir el servicio de llamada al camarero', 'Включить, чтобы разрешить услугу ожидания вызова', '启用允许呼叫服务员服务', 'Activer pour autoriser le service d\'appel', 'Ativar para permitir serviço de garçom', 'कॉल वेटर सेवा की अनुमति देने में सक्षम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (783, 'call_waiter_msg', 'admin', 'Waiter will get a notification and will available soon!', 'Waiter will get a notification and will available soon!', 'سيتلقى النادل إشعارًا وسيتوفر قريبًا!', '¡El camarero recibirá una notificación y estará disponible pronto!', 'Официант получит уведомление и скоро будет доступен!', '服务员会收到通知，很快就会有空！', 'Le serveur recevra une notification et sera bientôt disponible!', 'O garçom receberá uma notificação e estará disponível em breve!', 'वेटर को एक सूचना मिलेगी और जल्द ही उपलब्ध होगी!', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (784, 'waiting_notification_msg', 'admin', 'Please wait waiter will be available soon', 'Please wait, Waiter will be available soon', 'الرجاء الانتظار , سيكون النادل متاحًا قريبًا', 'Espere, el camarero estará disponible pronto', 'Подождите, скоро будет официант', '请稍等，服务员很快就会有空', 'Veuillez patienter, le serveur sera bientôt disponible', 'Aguarde, o garçom estará disponível em breve', 'कृपया प्रतीक्षा करें, वेटर जल्द ही उपलब्ध होगा', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (785, 'charge', 'admin', 'Charge', 'Charge', 'المسؤول', 'Cargar', 'Заряд', '充电', 'Frais', 'Cobrar', 'चार्ज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (786, 'show_image', 'admin', 'Show Image', 'Show Image', 'إظهار الصورة', 'Mostrar imagen', 'Показать изображение', '显示图片', 'Afficher l\'image', 'Mostrar imagem', 'छवि दिखाएं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (787, 'active_image', 'admin', 'Active Image', 'Active Image', 'الصورة النشطة', 'Imagen activa', 'Активный образ', '活动图片', 'Image active', 'Imagem ativa', 'सक्रिय छवि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (788, 'image_url', 'admin', 'Image URL', 'Image URL', 'عنوان URL للصورة', 'URL de la imagen', 'URL изображения', '图片网址', 'URL de l\'image', 'URL da imagem', 'छवि यूआरएल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (789, 'is_svg', 'admin', 'Is SVG', 'Is SVG', 'هل SVG', 'Es SVG', 'Это SVG', '是 SVG', 'Est SVG', 'É SVG', 'एसवीजी है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (790, 'icon_settings', 'admin', 'Icon Settings', 'Icon Settings', 'إعدادات الرموز', 'Configuración de iconos', 'Настройки значка', '图标设置', 'Paramètres des icônes', 'Configurações de ícone', 'आइकन सेटिंग्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (791, 'qr_generator', 'admin', 'QR Code Generator', 'QR Code Generator', 'مولد رمز الاستجابة السريعة', 'Generador de códigos QR', 'Генератор QR-кода', '二维码生成器', 'Générateur de QR Code', 'Gerador de código QR', 'क्यूआर कोड जेनरेटर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (792, 'foreground_color', 'admin', 'Foreground Color', 'Foreground Color', 'لون المقدمة', 'Color de primer plano', 'Цвет переднего плана', '前景色', 'Couleur de premier plan', 'Cor de primeiro plano', 'अग्रभूमि रंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (793, 'background_color', 'admin', 'Background Color', 'Background Color', 'لون الخلفية', 'Color de fondo', 'Цвет фона', '背景颜色', 'Couleur d\'arrière-plan', 'Cor de fundo', 'पृष्ठभूमि रंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (794, 'mode', 'admin', 'Mode', 'Mode', 'الوضع', 'Modo', 'Режим', '模式', 'Mode', 'Modo', 'मोड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (795, 'text', 'admin', 'Text', 'Text', 'نص', 'Texto', 'Текст', '文本', 'Texte', 'Texto', 'पाठ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (796, 'normal', 'admin', 'Normal', 'Normal', 'عادي', 'Normal', 'Нормальный', '正常', 'Normal', 'Normal', 'सामान्य', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (797, 'text_color', 'admin', 'Text Color', 'Text Color', 'لون النص', 'Color del texto', 'Цвет текста', '文本颜色', 'Couleur du texte', 'Cor do texto', 'पाठ रंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (798, 'position_x', 'admin', 'Position X', 'Position X', 'المركز X', 'Posición X', 'Позиция X', '位置 X', 'Position X', 'Posição X', 'स्थिति X', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (799, 'position_y', 'admin', 'Position Y', 'Position Y', 'الموضع Y', 'Posición Y', 'Позиция Y', '位置 Y', 'Position Y', 'Posição Y', 'स्थिति Y', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (800, 'qrcode', 'admin', 'Qr Code', 'Qr Code', 'رمز الاستجابة السريعة', 'Código QR', 'QR-код', '二维码', 'Qr Code', 'Código Qr', 'क्यूआर कोड', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (801, 'padding', 'admin', 'Padding', 'Padding', 'حشوة', 'Relleno', 'Отступ', '填充', 'Rembourrage', 'Preenchimento', 'पैडिंग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (802, 'custom_landing_page', 'admin', 'Custom Landing Page', 'Custom Landing Page', 'الصفحة المقصودة المخصصة', 'Página de destino personalizada', 'Пользовательская целевая страница', '自定义登陆页面', 'Page de destination personnalisée', 'Página inicial personalizada', 'कस्टम लैंडिंग पृष्ठ', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (803, 'enable_custom_landing_page', 'admin', 'Enable Custom Landing page', 'Enable Custom Landing page', 'تمكين الصفحة المقصودة المخصصة', 'Habilitar página de destino personalizada', 'Включить настраиваемую целевую страницу', '启用自定义登陆页面', 'Activer la page de destination personnalisée', 'Habilitar página inicial personalizada', 'कस्टम लैंडिंग पृष्ठ सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (804, 'landing_page_url', 'admin', 'Landing Page URL', 'Landing Page URL', 'عنوان URL للصفحة المقصودة', 'URL de la página de destino', 'URL целевой страницы', '着陆页网址', 'URL de la page de destination', 'URL da página de destino', 'लैंडिंग पेज यूआरएल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (805, 'custom_landing_page_msg', 'admin', 'IF you enable this, the user will redirect in your customer page URL when they enter in systems landing page', 'IF you enable this, the user will redirect in your customer page URL when they enter in systems landing page', 'إذا قمت بتمكين هذا , فسيقوم المستخدم بإعادة التوجيه في عنوان URL لصفحة العميل عند الدخول في الصفحة المقصودة للأنظمة', 'SI habilita esto, el usuario redirigirá a la URL de la página de su cliente cuando ingrese a la página de destino del sistema', 'ЕСЛИ вы включите это, пользователь будет перенаправлять в URL вашей страницы клиента, когда они войдут на целевую страницу системы', '如果您启用此功能，用户将在进入系统登录页面时重定向到您的客户页面 URL', 'SI vous activez cette option, l\'utilisateur redirigera l\'URL de votre page client lorsqu\'il entrera dans la page de destination du système', 'SE você habilitar isso, o usuário irá redirecionar para o URL da página do seu cliente quando entrar na página de destino do sistema', 'यदि आप इसे सक्षम करते हैं, तो उपयोगकर्ता आपके ग्राहक पृष्ठ URL में पुनर्निर्देशित करेगा जब वे सिस्टम लैंडिंग पृष्ठ में प्रवेश करेंगे', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (806, 'installed', 'admin', 'Installed', 'Installed', 'مثبت', 'Instalado', 'Установлено', '已安装', 'Installé', 'Instalado', 'स्थापित', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (807, 'install', 'admin', 'Install', 'Install', 'تثبيت', 'Instalar', 'Установить', '安装', 'Installer', 'Instalar', 'इंस्टॉल करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (808, 'uninstall', 'admin', 'Uninstall', 'Uninstall', 'إلغاء التثبيت', 'Desinstalar', 'Удалить', '卸载', 'Désinstaller', 'Desinstalar', 'अनइंस्टॉल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (809, 'not_installed', 'admin', 'Not Installed', 'Not Installed', 'غير مثبت', 'No instalado', 'Не установлено', '未安装', 'Non installé', 'Não instalado', 'इंस्टॉल नहीं किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (810, 'paytm', 'admin', 'Paytm', 'Paytm', 'باوتم', 'Paytm', 'Paytm', '支付宝', 'Paytm', 'Paytm', 'पेटीएम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (811, 'stripe_fpx', 'admin', 'Stripe FPX', 'Stripe FPX', 'شريط FPX', 'Stripe FPX', 'Полоса FPX', '条纹 FPX', 'Rayure FPX', 'Stripe FPX', 'स्ट्राइप एफपीएक्स', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (812, 'flutterwave', 'admin', 'Flutterwave', 'Flutterwave', 'Flutterwave', 'Flutterwave', 'Flutterwave', '颤动波', 'Flutterwave', 'Flutterwave', 'फ़्लटरवेव', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (813, 'mercado', 'admin', 'Mercadopago', 'Mercadopago', 'ميركادوباغو', 'Mercadopago', 'Меркадопаго', '梅尔卡多帕戈', 'Mercadopago', 'Mercadopago', 'मर्काडोपागो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (814, 'mercadopago', 'admin', 'Mercadopago', 'Mercadopago', 'ميركادوباغو', 'Mercadopago', 'Меркадопаго', '梅尔卡多帕戈', 'Mercadopago', 'Mercadopago', 'मर्काडोपागो', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (815, 'public_key', 'admin', 'Public key', 'Public key', 'المفتاح العمومي', 'Clave pública', 'Открытый ключ', '公钥', 'Clé publique', 'Chave pública', 'सार्वजनिक कुंजी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (816, 'access_token', 'admin', 'Access Token', 'Access Token', 'رمز وصول', 'Token de acceso', 'Токен доступа', '访问令牌', 'Jeton d\'accès', 'Token de acesso', 'एक्सेस टोकन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (817, 'environment', 'admin', 'Environment', 'Environment', 'بيئة', 'Entorno', 'Окружающая среда', '环境', 'Environnement', 'Ambiente', 'पर्यावरण', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (818, 'area_based_delivery_charge', 'admin', 'Area based delivery charge', 'Area based delivery charge', 'رسوم التسليم على أساس المنطقة', 'Cargo de envío basado en área', 'Стоимость доставки по региону', '按地区收费', 'Frais de livraison en fonction de la zone', 'Taxa de entrega baseada na área', 'क्षेत्र आधारित वितरण शुल्क', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (819, 'facebook_pixel', 'admin', 'Facebook Pixel', 'Facebook Pixel', 'فيسبوك بيكسل', 'Pixel de Facebook', 'Пиксель Facebook', 'Facebook 像素', 'Pixel Facebook', 'Facebook Pixel', 'फेसबुक पिक्सेल', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (820, 'facebook_pixel_id', 'admin', 'Facebook Pixel ID', 'Facebook Pixel ID', 'معرف فيسبوك بيكسل', 'ID de píxel de Facebook', 'Идентификатор пикселя Facebook', 'Facebook 像素 ID', 'Identifiant de pixel Facebook', 'Facebook Pixel ID', 'फेसबुक पिक्सेल आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (821, 'google_analytics_id', 'admin', 'Google Analytics ID', 'Google Analytics ID', 'معرف تحليلات كوكل', 'Identificación de Google Analytics', 'Идентификатор Google Analytics', '谷歌分析ID', 'Identifiant Google Analytics', 'ID do Google Analytics', 'गूगल एनालिटिक्स आईडी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (822, 'customer_waiting_msg', 'admin', 'Customer is waiting at table number', 'Customer is waiting at table number', 'الزبون ينتظر على رقم الجدول', 'El cliente está esperando en la mesa número', 'Клиент ждет у стола номер', '顾客在桌号等候', 'Le client attend au numéro de table', 'O cliente está esperando na mesa número', 'ग्राहक टेबल नंबर पर प्रतीक्षा कर रहा है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (823, 'weight', 'admin', 'Weight', 'Weight', 'الوزن', 'Peso', 'Вес', '重量', 'Poids', 'Peso', 'वजन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (824, 'calories', 'admin', 'Calories', 'Calories', 'السعرات الحرارية', 'Calorías', 'Калории', '卡路里', 'Calories', 'Calorias', 'कैलोरी', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (825, 'is_variants', 'admin', 'Is variants', 'Is variants', 'متغيرات Is', 'Son variantes', 'Есть варианты', '是变体', 'Sont des variantes', 'São variantes', 'विभिन्न प्रकार हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (826, 'allow_access_google_map_key', 'admin', 'Allow to access google map api key', 'Allow to access google map api key', 'السماح بالوصول إلى مفتاح google map api', 'Permitir acceder a la clave de API de Google Map', 'Разрешить доступ к ключу API карты Google', '允许访问谷歌地图api密钥', 'Autoriser l\'accès à la clé api google map', 'Permitir acesso à chave API do google map', 'गूगल मैप एपीआई कुंजी का उपयोग करने की अनुमति दें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (827, 'allow_gmap_access', 'admin', 'Allow Gmap Access', 'Allow Gmap Access', 'السماح بالوصول إلى Gmap', 'Permitir acceso a Gmap', 'Разрешить доступ к Gmap', '允许 Gmap 访问', 'Autoriser l\'accès à Gmap', 'Permitir acesso ao Gmap', 'जीमैप एक्सेस की अनुमति दें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (828, 'enable', 'admin', 'Enable', 'Enable', 'تمكين', 'Activar', 'Включить', '启用', 'Activer', 'Ativar', 'सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (829, 'disable', 'admin', 'Disable', 'Disable', 'تعطيل', 'Desactivar', 'Отключить', '禁用', 'Désactiver', 'Desativar', 'अक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (830, 'add_more_item', 'admin', 'Add More Items', 'Add More Items', 'إضافة المزيد من العناصر', 'Agregar más elementos', 'Добавить еще элементы', '添加更多项目', 'Ajouter plus d\'articles', 'Adicionar mais itens', 'और आइटम जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (831, 'item_added_successfully', 'admin', 'Item Added Successfully', 'Item Added Successfully', 'تمت إضافة العنصر بنجاح', 'Elemento agregado exitosamente', 'Элемент успешно добавлен', '项目添加成功', 'Élément ajouté avec succès', 'Item adicionado com sucesso', 'आइटम सफलतापूर्वक जोड़ा गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (832, 'edit_order', 'admin', 'Edit Order', 'Edit Order', 'تحرير الأمر', 'Editar pedido', 'Изменить порядок', '编辑订单', 'Modifier la commande', 'Editar pedido', 'आदेश संपादित करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (833, 'duplicate_item', 'admin', 'Duplicate Item', 'Duplicate Item', 'عنصر مكرر', 'Elemento duplicado', 'Повторяющийся элемент', '重复项', 'Article en double', 'Item duplicado', 'डुप्लिकेट आइटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (834, 'clone_item', 'admin', 'Clone Item', 'Clone Item', 'عنصر مستنسخ', 'Clonar elemento', 'Клонировать элемент', '克隆项目', 'Cloner l\'élément', 'Clonar item', 'आइटम क्लोन करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (835, 'order_again', 'admin', 'Order again', 'Order again', 'اطلب مرة أخرى', 'Pedir de nuevo', 'Заказать снова', '再次订购', 'Commandez à nouveau', 'Peça novamente', 'फिर से ऑर्डर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (836, 'moved_successfull', 'admin', 'Moved successfully', 'Moved successfully', 'انتقلت بنجاح', 'Movido exitosamente', 'Перемещено успешно', '移动成功', 'Déplacé avec succès', 'Movido com sucesso', 'सफलतापूर्वक ले जाया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (837, 'add_new_item', 'admin', 'Add New Item', 'Add New Item', 'إضافة عنصر جديد', 'Agregar nuevo elemento', 'Добавить новый элемент', '添加新项目', 'Ajouter un nouvel élément', 'Adicionar Novo Item', 'नई वस्तु जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (838, 'add_those_extras_also', 'admin', 'Add those Extras also', 'Add those Extras also', 'أضف تلك الإضافات أيضًا', 'Agrega esos Extras también', 'Также добавьте эти дополнения', '也添加这些附加功能', 'Ajoutez aussi ces extras', 'Adicionar esses extras também', 'उन अतिरिक्त को भी जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (839, 'whatsapp_config', 'admin', 'WhatsApp Config', 'WhatsApp Config', 'تهيئة WhatsApp', 'Configuración de WhatsApp', 'Конфигурация WhatsApp', 'WhatsApp 配置', 'Configuration WhatsApp', 'Configuração do WhatsApp', 'व्हाट्सएप कॉन्फिग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (840, 'currency_position', 'admin', 'Currency Position', 'Currency Position', 'وضع العملة', 'Posición de moneda', 'Валютная позиция', '货币头寸', 'Position de la devise', 'Posição da moeda', 'मुद्रा स्थिति', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (841, 'number_format', 'admin', 'Number Format', 'Number Format', 'تنسيق الأرقام', 'Formato de número', 'Числовой формат', '数字格式', 'Format des nombres', 'Formato numérico', 'संख्या प्रारूप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (842, 'pwa', 'admin', 'PWA', 'PWA', 'PWA', 'PWA', 'PWA', 'PWA', 'PWA', 'PWA', 'पीडब्ल्यूए', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (843, 'pwa_config', 'admin', 'PWA Config', 'PWA Config', 'تكوين PWA', 'Configuración PWA', 'Конфигурация PWA', 'PWA 配置', 'Configuration PWA', 'Configuração PWA', 'पीडब्ल्यूए कॉन्फिग', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (844, 'enable_to_allow_for_all', 'admin', 'Enable to allow PWA in this system', 'Enable to allow PWA in this system', 'تمكين للسماح لـ PWA في هذا النظام', 'Habilitar para permitir PWA en este sistema', 'Включить, чтобы разрешить PWA в этой системе', '启用在此系统中允许 PWA', 'Activer pour autoriser PWA dans ce système', 'Habilite para permitir PWA neste sistema', 'इस सिस्टम में PWA को अनुमति देने के लिए सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (845, 'google_font_name', 'admin', 'Google Font name', 'Google Font name', 'اسم خط Google', 'Nombre de fuente de Google', 'Название шрифта Google', '谷歌字体名称', 'Nom de la police Google', 'Nome da fonte do Google', 'गूगल फ़ॉन्ट नाम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (846, 'menu_style', 'admin', 'Menu Style', 'Menu Style', 'نمط القائمة', 'Estilo de menú', 'Стиль меню', '菜单样式', 'Style de menu', 'Estilo de menu', 'मेनू शैली', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (847, 'menu_bottom', 'admin', 'Menu Bottom', 'Menu Bottom', 'القائمة السفلية', 'Menú inferior', 'Нижнее меню', '菜单底部', 'Menu Bas', 'Fundo do menu', 'मेनू बॉटम', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (848, 'menu_top', 'admin', 'Menu Top', 'Menu Top', 'أعلى القائمة', 'Menú superior', 'Верх меню', '菜单顶部', 'Menu Haut', 'Menu Superior', 'मेनू टॉप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (849, 'more', 'admin', 'More', 'More', 'المزيد', 'Más', 'Еще', '更多', 'Plus', 'Mais', 'अधिक', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (850, 'today', 'admin', 'Today', 'Today', 'اليوم', 'Hoy', 'Сегодня', '今天', 'Aujourd\'hui', 'Hoje', 'आज', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (851, 'pickup_date', 'admin', 'Pickup Date', 'Pickup Date', 'تاريخ الاستلام', 'Fecha de recogida', 'Дата получения', '取件日期', 'Date de retrait', 'Data de retirada', 'पिकअप तिथि', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (852, 'pasta', 'admin', 'Pasta', 'Pasta', 'باستا', 'Pasta', 'Паста', '意大利面', 'Pâtes', 'Macarrão', 'पास्ता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (853, 'add_to_home_screen', 'admin', 'Add to home screen', 'Add to home screen', 'إضافة إلى الشاشة الرئيسية', 'Añadir a pantalla de inicio', 'Добавить на главный экран', '添加到主屏幕', 'Ajouter à l\'écran d\'accueil', 'Adicionar à tela inicial', 'होम स्क्रीन में जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (854, 'coupon_applied_successfully', 'admin', 'Coupon Applied Successfully', 'Coupon Applied Successfully', 'تم تطبيق القسيمة بنجاح', 'Cupón aplicado con éxito', 'Купон успешно применен', '优惠券申请成功', 'Coupon appliqué avec succès', 'Cupom aplicado com sucesso', 'कूपन सफलतापूर्वक लागू किया गया', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (855, 'add_more_image', 'admin', 'Add More Images', 'Add More Images', 'إضافة المزيد من الصور', 'Agregar más imágenes', 'Добавить больше изображений', '添加更多图片', 'Ajouter plus d\'images', 'Adicionar mais imagens', 'और छवियां जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (856, 'custom_css', 'admin', 'Custom CSS', 'Custom CSS', 'CSS مخصص', 'CSS personalizado', 'Пользовательский CSS', '自定义 CSS', 'CSS personnalisé', 'CSS personalizado', 'कस्टम सीएसएस', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (857, 'security_pin', 'admin', 'Security Pin', 'Security Pin', 'رقم التعريف الشخصي للأمان', 'Pin de seguridad', 'Защитный штифт', '安全密码', 'Broche de sécurité', 'Pin de segurança', 'सुरक्षा पिन', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (858, 'enable_pin_when_customer_track_order', 'admin', 'Enable Pin when customer track their order and when they place call waiter', 'Enable Pin when customer track their order and when they place call waiter', 'تمكين رقم التعريف الشخصي عند تتبع العميل لطلبه وعندما يقوم بإجراء مكالمة النادل', 'Habilitar PIN cuando el cliente rastrea su pedido y cuando llama al camarero', 'Включить пин-код, когда клиент отслеживает свой заказ и когда он вызывает официанта', '在客户跟踪订单和呼叫服务员时启用 Pin', 'Activer l\'épingle lorsque le client suit sa commande et lorsqu\'il appelle le serveur', 'Ativar Pin quando o cliente rastrear seu pedido e quando chamar o garçom', 'जब ग्राहक अपना ऑर्डर ट्रैक करें और वेटर को कॉल करें, तब पिन इनेबल करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (859, 'security_pin_not_match', 'admin', 'Security Pin doesn\'t Match', 'Security Pin doesn\'t Match', 'رقم التعريف الشخصي للأمان غير مطابق', 'El pin de seguridad no coincide', 'Блок безопасности не совпадает', '安全密码不匹配', 'La broche de sécurité ne correspond pas', 'O PIN de segurança não corresponde', 'सुरक्षा पिन मेल नहीं खाता', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (860, 'date_format', 'admin', 'Date Format', 'Date Format', 'تنسيق التاريخ', 'Formato de fecha', 'Формат даты', '日期格式', 'Format de date', 'Formato de data', 'दिनांक प्रारूप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (861, 'time_format', 'admin', 'Time Format', 'Time Format', 'تنسيق الوقت', 'Formato de hora', 'Формат времени', '时间格式', 'Format de l\'heure', 'Formato de hora', 'समय प्रारूप', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (862, 'upgrade_license', 'admin', 'Upgrade License', 'Upgrade License', 'ترخيص الترقية', 'Licencia de actualización', 'Обновление лицензии', '升级许可证', 'Mettre à jour la licence', 'Atualizar Licença', 'लाइसेंस अपग्रेड करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (863, 'change_domain', 'admin', 'Change Domain', 'Change Domain', 'تغيير المجال', 'Cambiar Dominio', 'Изменить домен', '更改域', 'Changer de domaine', 'Alterar domínio', 'डोमेन बदलें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (864, 'theme_color', 'admin', 'Theme Color', 'Theme Color', 'لون المظهر', 'Color del tema', 'Цвет темы', '主题颜色', 'Couleur du thème', 'Cor do Tema', 'थीम कलर', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (865, 'phone_number_is_missing', 'admin', 'Phone Number is missing', 'Phone Number is missing', 'رقم الهاتف مفقود', 'Falta el número de teléfono', 'Номер телефона отсутствует', '电话号码丢失', 'Numéro de téléphone manquant', 'Número de telefone ausente', 'फ़ोन नंबर गुम है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (866, 'Please_add_your_phone_number', 'admin', 'Please add your phone number', 'Please add your phone number', 'الرجاء إضافة رقم هاتفك', 'Por favor agregue su número de teléfono', 'Пожалуйста, добавьте свой номер телефона', '请添加您的电话号码', 'Veuillez ajouter votre numéro de téléphone', 'Por favor, adicione seu número de telefone', 'कृपया अपना फोन नंबर जोड़ें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (867, 'site_name_is_missing', 'admin', 'Site Name is missing', 'Site Name is missing', 'اسم الموقع مفقود', 'Falta el nombre del sitio', 'Имя сайта отсутствует', '站点名称丢失', 'Le nom du site est manquant', 'O nome do site está ausente', 'साइट का नाम गुम है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (868, 'please_config_your_site_settings', 'admin', 'Please configure the site settings', 'Please configure the site settings', 'الرجاء تكوين إعدادات الموقع', 'Configure los ajustes del sitio', 'Настройте параметры сайта', '请配置网站设置', 'Veuillez configurer les paramètres du site', 'Por favor, defina as configurações do site', 'कृपया साइट सेटिंग्स को कॉन्फ़िगर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (869, 'email_is_missing', 'admin', 'Email is missing', 'Email is missing', 'البريد الإلكتروني مفقود', 'falta el correo electronico', 'Электронная почта отсутствует', '邮箱丢失', 'E-mail manquant', 'E-mail ausente', 'ईमेल गायब है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (870, 'please_confing_the_email', 'admin', 'Please configure the Email settings', 'Please configure the Email settings', 'الرجاء تكوين إعدادات البريد الإلكتروني', 'Configure los ajustes de correo electrónico', 'Настройте параметры электронной почты', '请配置邮箱设置', 'Veuillez configurer les paramètres de messagerie', 'Por favor, defina as configurações de e-mail', 'कृपया ईमेल सेटिंग कॉन्फ़िगर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (871, 'those_steps_are_most_important', 'admin', 'Those Steps are most important to configure first', 'Those Steps are most important to configure first', 'هذه الخطوات هي الأكثر أهمية للتهيئة أولاً', 'Esos pasos son los más importantes para configurar primero', 'Эти шаги наиболее важны для настройки в первую очередь', '首先配置这些步骤是最重要的', 'Ces étapes sont les plus importantes à configurer en premier', 'Essas etapas são mais importantes para configurar primeiro', 'पहले कॉन्फ़िगर करने के लिए वे चरण सबसे महत्वपूर्ण हैं', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (872, 'restaurant_name_is_missing', 'admin', 'Restaurant Name is missing', 'Restaurant Name is missing', 'اسم المطعم مفقود', 'Falta el nombre del restaurante', 'Название ресторана отсутствует', '餐厅名称丢失', 'Le nom du restaurant est manquant', 'Falta o nome do restaurante', 'रेस्तरां का नाम गुम है', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (873, 'please_config_the_shop_settings_configuration', 'admin', 'Please configure restaurant settings and shop configuration', 'Please configure restaurant settings and shop configuration', 'الرجاء تكوين إعدادات المطعم وتهيئة المتجر', 'Configure los ajustes del restaurante y la configuración de la tienda', 'Пожалуйста, настройте параметры ресторана и конфигурацию магазина', '请配置餐厅设置和店铺配置', 'Veuillez configurer les paramètres du restaurant et la configuration de la boutique', 'Por favor, defina as configurações do restaurante e a configuração da loja', 'कृपया रेस्तरां सेटिंग और दुकान कॉन्फ़िगरेशन कॉन्फ़िगर करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (874, 'order_types_config', 'admin', 'Order Types Configuration', 'Order Types Configuration', 'تكوين أنواع الطلبات', 'Configuración de tipos de órdenes', 'Конфигурация типов ордеров', '订单类型配置', 'Configuration des types de commande', 'Configuração de Tipos de Pedido', 'आदेश प्रकार विन्यास', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (875, 'enable_payment', 'admin', 'Enable Payment', 'Enable Payment', 'تمكين الدفع', 'Habilitar pago', 'Включить оплату', '启用支付', 'Activer le paiement', 'Ativar Pagamento', 'भुगतान सक्षम करें', '.');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (876, 'pay_later', 'admin', 'Pay Later', 'Pay Later', 'ادفع لاحقًا', 'Paga después', 'Оплата позже', '稍后付款', 'Payer plus tard', 'Pagar depois', 'बाद में भुगतान करें', 'পরে পরিশোধ কৃত ');
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (877, 'import', 'admin', 'Import', 'Import', 'استيراد', 'Importar', 'Импорт', '导入', 'Importer', 'Importar', 'आयात', NULL);
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (878, 'required_alert', 'admin', 'Please fill up the % field', 'Please fill up the %s field', 'الرجاء ملء حقل٪ s', 'Por favor complete el campo %s', 'Пожалуйста, заполните поле %s', '请填写 %s 字段', 'Veuillez remplir le champ %s', 'Por favor, preencha o campo %s', 'कृपया %s फ़ील्ड भरें', NULL);
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (879, 'pickup_area', 'admin', 'Pickup Area', 'Pickup Area', 'منطقة الالتقاء', 'Área de recogida', 'Зона самовывоза', '取货区', 'Zone de ramassage', 'Área de Retirada', 'पिकअप एरिया', NULL);
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (880, 'restaurant_empty_alert_msg', 'admin', 'If You do not find menu and other options', 'If You do not find menu and other options, ', 'إذا لم تجد القائمة وخيارات أخرى ,', 'Si no encuentra el menú y otras opciones', 'Если Вы не нашли меню и другие опции, ', '如果您没有找到菜单和其他选项，', 'Si vous ne trouvez pas le menu et les autres options', 'Se você não encontrar o menu e outras opções, ', 'यदि आपको मेनू और अन्य विकल्प नहीं मिलते हैं, ', NULL);
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (881, 'restaurant_empty_alert_msg-2', 'admin', 'Make sure Restaurant profile is complete', 'Make sure Restaurant profile is complete', 'تأكد من اكتمال ملف تعريف المطعم', 'Asegúrese de que el perfil del restaurante esté completo', 'Убедитесь, что профиль ресторана заполнен', '确保餐厅资料完整', 'Assurez-vous que le profil du restaurant est complet', 'Verifique se o perfil do restaurante está completo', 'सुनिश्चित करें कि रेस्तरां प्रोफ़ाइल पूर्ण है', NULL);
INSERT INTO `language_data` (`id`, `keyword`, `type`, `details`, `english`, `ar`, `es`, `ru`, `cn`, `fr`, `pt`, `hindi`, `bn`) VALUES (882, 'restaurant_empty_alert_msg-3', 'admin', 'You have to add phone, dial code and country', 'You have to add phone, dial code and country', 'عليك إضافة رقم الهاتف ورمز الاتصال والدولة', 'Tienes que añadir teléfono, código de marcación y país', 'Необходимо добавить телефон, код набора и страну', '您必须添加电话、拨号代码和国家', 'Vous devez ajouter le téléphone, l\'indicatif et le pays', 'Você precisa adicionar telefone, código de discagem e país', 'आपको फोन, डायल कोड और देश जोड़ना होगा', NULL);


#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `direction` varchar(20) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (3, 'English', 'english', 'ltr', 1, '2020-09-22 16:42:51');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (6, 'Spanish', 'es', 'ltr', 1, '2021-04-14 15:15:20');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (8, 'Arabics', 'ar', 'rtl', 1, '2021-04-15 11:49:35');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (10, 'Russian', 'ru', 'ltr', 1, '2021-12-05 16:12:54');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (11, 'Chinese', 'cn', 'ltr', 1, '2021-12-05 16:31:10');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (12, 'French', 'fr', 'ltr', 1, '2021-12-05 17:47:53');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (13, 'Portuguese', 'pt', 'ltr', 1, '2021-12-06 10:57:32');
INSERT INTO `languages` (`id`, `lang_name`, `slug`, `direction`, `status`, `created_at`) VALUES (14, 'Hindi', 'hindi', 'ltr', 1, '2021-12-06 11:08:17');


#
# TABLE STRUCTURE FOR: menu_type
#

DROP TABLE IF EXISTS `menu_type`;

CREATE TABLE `menu_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `orders` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `menu_type` (`id`, `user_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`) VALUES (1, 2, 'burger', 'Gourmet Burgers and Meals', 'Gourmet Burgers and Meals', 0, 1, '2022-04-07 14:31:01', NULL, NULL);
INSERT INTO `menu_type` (`id`, `user_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`) VALUES (2, 2, 'burger', 'Happy Meals', '', 0, 1, '2022-04-07 14:31:17', NULL, NULL);
INSERT INTO `menu_type` (`id`, `user_id`, `type`, `name`, `details`, `orders`, `status`, `created_at`, `thumb`, `images`) VALUES (3, 2, '0', 'Desserts', 'Desserts', 0, 1, '2022-04-07 14:31:35', NULL, NULL);


#
# TABLE STRUCTURE FOR: offline_payment
#

DROP TABLE IF EXISTS `offline_payment`;

CREATE TABLE `offline_payment` (
  `txn_id` varchar(255) NOT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `package` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `approve_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: order_item_list
#

DROP TABLE IF EXISTS `order_item_list`;

CREATE TABLE `order_item_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` double NOT NULL,
  `item_price` double NOT NULL,
  `is_package` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `is_size` int(11) NOT NULL,
  `size_slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `is_extras` int(11) NOT NULL DEFAULT 0,
  `extra_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (1, 1, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-07 15:11:38', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (2, 2, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-07 15:15:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (3, 2, 1, 7, 1, '999', '999', 0, 0, 0, '', '2022-04-07 15:15:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (4, 2, 1, 8, 1, '85', '85', 0, 0, 0, '', '2022-04-07 15:15:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (5, 3, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-07 16:13:54', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (6, 4, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-08 16:10:27', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (7, 5, 1, 5, 1, '199', '199', 0, 0, 0, '', '2022-04-23 11:01:44', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (8, 5, 1, 8, 1, '85', '85', 0, 0, 0, '', '2022-04-23 11:01:44', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (9, 6, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-23 11:12:37', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (10, 6, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-23 11:12:37', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (11, 7, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-23 11:29:31', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (12, 8, 1, 4, 1, '309', '309', 0, 0, 0, '', '2022-04-23 11:31:21', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (13, 9, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-23 11:32:57', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (14, 10, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-23 11:35:38', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (15, 11, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-23 11:36:39', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (16, 12, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-23 12:01:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (17, 12, 1, 4, 1, '309', '309', 0, 0, 0, '', '2022-04-23 12:01:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (18, 13, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-23 12:21:33', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (19, 13, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-23 12:21:33', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (20, 14, 1, 5, 1, '199', '199', 0, 0, 0, '', '2022-04-23 12:29:07', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (21, 14, 1, 6, 1, '199', '199', 0, 0, 0, '', '2022-04-23 12:29:07', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (22, 15, 1, 5, 2, '398', '199', 0, 0, 0, '', '2022-04-23 12:37:25', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (23, 15, 1, 8, 2, '170', '85', 0, 0, 0, '', '2022-04-23 12:37:25', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (24, 16, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-23 12:44:21', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (25, 16, 1, 8, 2, '170', '85', 0, 0, 0, '', '2022-04-23 12:44:21', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (26, 17, 1, 1, 2, '798', '399', 0, 0, 0, '', '2022-04-23 12:50:36', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (27, 18, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-23 12:56:46', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (28, 18, 1, 4, 1, '309', '309', 0, 0, 0, '', '2022-04-23 12:56:46', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (29, 19, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-23 13:00:31', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (30, 19, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-23 13:00:31', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (31, 20, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-28 10:16:52', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (32, 21, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-28 10:30:47', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (33, 21, 1, 4, 1, '309', '309', 0, 0, 0, '', '2022-04-28 10:30:47', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (34, 22, 1, 10, 1, '150', '150', 0, 0, 0, '', '2022-04-28 10:36:48', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (35, 22, 1, 8, 1, '85', '85', 0, 0, 0, '', '2022-04-28 10:36:48', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (36, 22, 1, 5, 1, '199', '199', 0, 0, 0, '', '2022-04-28 10:36:48', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (37, 23, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-28 10:40:40', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (38, 23, 1, 3, 1, '249', '249', 0, 0, 0, '', '2022-04-28 10:40:40', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (39, 24, 1, 2, 1, '299', '299', 0, 0, 0, '', '2022-04-28 10:41:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (40, 24, 1, 4, 1, '309', '309', 0, 0, 0, '', '2022-04-28 10:41:34', 0, '');
INSERT INTO `order_item_list` (`id`, `order_id`, `shop_id`, `item_id`, `qty`, `sub_total`, `item_price`, `is_package`, `package_id`, `is_size`, `size_slug`, `created_at`, `is_extras`, `extra_id`) VALUES (41, 25, 1, 1, 1, '399', '399', 0, 0, 0, '', '2022-04-29 09:17:39', 0, '');


#
# TABLE STRUCTURE FOR: order_payment_info
#

DROP TABLE IF EXISTS `order_payment_info`;

CREATE TABLE `order_payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `price` varchar(255) NOT NULL,
  `currency_code` varchar(20) NOT NULL,
  `status` varchar(255) NOT NULL,
  `txn_id` varchar(255) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 0,
  `all_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: order_types
#

DROP TABLE IF EXISTS `order_types`;

CREATE TABLE `order_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `is_order_types` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (1, 'Cash on delivery', 'cash-on-delivery', 1, 1, '2021-04-06 16:48:57');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (2, 'Booking', 'booking', 1, 1, '2021-04-06 16:50:12');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (3, 'Reservation', 'reservation', 1, 0, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (4, 'Pickup', 'pickup', 1, 1, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (5, 'Pay in cash', 'pay-in-cash', 1, 1, '2021-04-06 16:50:38');
INSERT INTO `order_types` (`id`, `name`, `slug`, `status`, `is_order_types`, `created_at`) VALUES (6, 'Dine-in', 'dine-in', 1, 1, '2021-04-06 16:50:38');


#
# TABLE STRUCTURE FOR: order_user_list
#

DROP TABLE IF EXISTS `order_user_list`;

CREATE TABLE `order_user_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` int(11) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0==panding,\r\n1==approve,2==completed,3==reject',
  `created_at` datetime NOT NULL,
  `reservation_date` datetime NOT NULL,
  `order_type` int(11) NOT NULL DEFAULT 1,
  `table_no` int(11) NOT NULL DEFAULT 0,
  `total_person` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `cancel_time` datetime NOT NULL,
  `accept_time` datetime DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL,
  `g_map` varchar(255) NOT NULL,
  `is_ring` int(11) NOT NULL DEFAULT 0,
  `is_table` int(11) NOT NULL,
  `reservation_type` int(11) NOT NULL,
  `comments` text NOT NULL,
  `qr_link` varchar(255) NOT NULL,
  `delivery_charge` double NOT NULL,
  `is_payment` int(11) NOT NULL,
  `payment_by` varchar(255) NOT NULL,
  `pickup_point` int(11) NOT NULL,
  `es_time` varchar(10) NOT NULL,
  `time_slot` varchar(10) NOT NULL,
  `estimate_time` datetime DEFAULT NULL,
  `is_extras` int(11) NOT NULL DEFAULT 0,
  `delivery_area` varchar(255) DEFAULT NULL,
  `is_preparing` int(11) NOT NULL DEFAULT 0,
  `token_number` varchar(255) DEFAULT NULL,
  `dine_id` int(11) NOT NULL DEFAULT 0,
  `customer_id` int(11) NOT NULL,
  `dboy_id` int(11) NOT NULL,
  `dboy_status` int(11) NOT NULL,
  `is_picked` int(11) NOT NULL,
  `discount` double NOT NULL,
  `dboy_accept_time` datetime DEFAULT NULL,
  `dboy_picked_time` datetime DEFAULT NULL,
  `dboy_completed_time` datetime DEFAULT NULL,
  `is_db_accept` int(11) NOT NULL DEFAULT 0,
  `is_db_completed` int(11) NOT NULL DEFAULT 0,
  `tax_fee` double NOT NULL,
  `sub_total` double NOT NULL,
  `pickup_time` varchar(255) DEFAULT NULL,
  `customer_rating` varchar(50) DEFAULT NULL,
  `customer_review` text DEFAULT NULL,
  `rating_time` datetime DEFAULT NULL,
  `shipping_id` int(11) NOT NULL,
  `pickup_date` date DEFAULT NULL,
  `is_coupon` int(11) NOT NULL DEFAULT 0,
  `coupon_percent` varchar(255) DEFAULT NULL,
  `coupon_id` int(11) NOT NULL DEFAULT 0,
  `use_payment` int(11) NOT NULL DEFAULT 0,
  `tips` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (1, 1, '2022409826', 'Brijesh', 'null', '7778895926', '', 0, '2022-04-07 15:11:38', '0000-00-00 00:00:00', 6, 3, 1, '299', '0000-00-00 00:00:00', NULL, NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_535425278.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '299', '', NULL, NULL, NULL, 0, '2022-04-07', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (2, 1, '2022315749', 'Brijesh', 'null', '7778895926', '', 0, '2022-04-07 15:15:34', '0000-00-00 00:00:00', 6, 1, 3, '1333', '0000-00-00 00:00:00', NULL, NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_1296543763.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '1333', '', NULL, NULL, NULL, 0, '2022-04-07', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (3, 1, '2022837105', 'Brijesh', 'null', '7778895926', '', 0, '2022-04-07 16:13:54', '0000-00-00 00:00:00', 6, 3, 3, '299', '0000-00-00 00:00:00', NULL, NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_476749694.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '299', '', NULL, NULL, NULL, 0, '2022-04-07', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (4, 1, '2022830964', 'Brijesh', 'null', '7778895926', '', 1, '2022-04-08 16:10:27', '0000-00-00 00:00:00', 6, 2, 3, '249', '0000-00-00 00:00:00', '2022-04-08 16:10:37', NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_1594631977.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '249', '', NULL, NULL, NULL, 0, '2022-04-08', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (5, 1, '2022086543', 'Brijesh', 'null', '7778895926', '', 1, '2022-04-23 11:01:44', '0000-00-00 00:00:00', 6, 3, 3, '284', '0000-00-00 00:00:00', '2022-04-23 11:02:08', NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_995284746.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '284', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (6, 1, '2022763420', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 11:12:37', '0000-00-00 00:00:00', 6, 4, 5, '698', '0000-00-00 00:00:00', '2022-04-23 11:14:10', '2022-04-23 11:14:32', '', 0, 0, 0, '', 'uploads/orders_qr/macd_1710633475.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '698', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (7, 1, '2022482790', 'Brijesh', 'null', '7778895926', 'address', 1, '2022-04-23 11:29:31', '0000-00-00 00:00:00', 1, 0, 0, '399', '0000-00-00 00:00:00', '2022-04-23 11:30:51', NULL, '', 0, 0, 0, '', 'uploads/orders_qr/macd_1753044163.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '399', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (8, 1, '2022378620', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 11:31:21', '0000-00-00 00:00:00', 6, 3, 1, '309', '0000-00-00 00:00:00', '2022-04-23 11:41:06', '2022-04-23 11:41:06', '', 1, 0, 0, '', 'uploads/orders_qr/macd_1891886384.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '309', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (9, 1, '2022324695', 'Brijesh', 'null', '7778895926', 'address', 3, '2022-04-23 11:32:57', '0000-00-00 00:00:00', 1, 0, 0, '299', '2022-04-23 11:41:09', NULL, NULL, '', 1, 0, 0, '', 'uploads/orders_qr/macd_1869482602.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '299', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (10, 1, '2022147098', 'Brijesh', 'null', '7778895926', '', 3, '2022-04-23 11:35:38', '0000-00-00 00:00:00', 6, 3, 1, '399', '2022-04-23 11:41:12', NULL, NULL, '', 1, 0, 0, '', 'uploads/orders_qr/macd_34881848.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '399', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (11, 1, '2022038497', 'Brijesh', 'null', '7778895926', '', 1, '2022-04-23 11:36:39', '2022-04-26 10:00:00', 2, 0, 2, '299', '0000-00-00 00:00:00', '2022-04-23 11:41:16', NULL, '', 1, 0, 0, '', 'uploads/orders_qr/macd_2003996822.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '299', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (12, 1, '2022816790', 'Brijesh', 'null', '7778895926', '', 1, '2022-04-23 12:01:34', '0000-00-00 00:00:00', 6, 3, 4, '558', '0000-00-00 00:00:00', '2022-04-23 12:01:56', NULL, '', 1, 0, 0, '', 'uploads/orders_qr/macd_748415097.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '558', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (13, 1, '2022940632', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 12:21:33', '0000-00-00 00:00:00', 6, 3, 3, '698', '0000-00-00 00:00:00', '2022-04-23 12:22:41', '2022-04-23 12:23:05', '', 1, 0, 0, '', 'uploads/orders_qr/macd_93115384.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '698', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (14, 1, '2022594237', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 12:29:07', '0000-00-00 00:00:00', 6, 2, 1, '398', '0000-00-00 00:00:00', '2022-04-23 12:29:45', '2022-04-23 12:29:58', '', 1, 0, 0, '', 'uploads/orders_qr/macd_512428787.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '398', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (15, 1, '2022719803', 'Brijesh', 'null', '7778895926', '', 1, '2022-04-23 12:37:25', '0000-00-00 00:00:00', 6, 3, 1, '568', '0000-00-00 00:00:00', '2022-04-23 12:37:47', NULL, '', 1, 0, 0, '', 'uploads/orders_qr/macd_1535079601.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '568', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (16, 1, '2022357802', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 12:44:21', '0000-00-00 00:00:00', 6, 3, 1, '419', '0000-00-00 00:00:00', '2022-04-23 12:44:48', '2022-04-23 12:45:04', '', 1, 0, 0, '', 'uploads/orders_qr/macd_880015030.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '419', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (17, 1, '2022528943', 'Suraj', 'null', '8160898520', 'Uyhhu', 2, '2022-04-23 12:50:36', '0000-00-00 00:00:00', 1, 0, 0, '798', '0000-00-00 00:00:00', '2022-04-23 12:51:02', '2022-04-23 12:51:29', '', 1, 0, 0, '', 'uploads/orders_qr/macd_1938407131.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 2, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '798', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (18, 1, '2022476512', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 12:56:46', '0000-00-00 00:00:00', 6, 3, 1, '558', '0000-00-00 00:00:00', '2022-04-23 12:57:18', '2022-04-23 12:57:31', '', 1, 0, 0, '', 'uploads/orders_qr/macd_1939741881.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '558', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (19, 1, '2022123980', 'Brijesh', 'null', '7778895926', '', 2, '2022-04-23 13:00:31', '0000-00-00 00:00:00', 6, 2, 3, '698', '0000-00-00 00:00:00', '2022-04-23 13:00:51', '2022-04-23 13:01:01', '', 1, 0, 0, '', 'uploads/orders_qr/macd_1428194649.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 1, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '698', '', NULL, NULL, NULL, 0, '2022-04-23', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (20, 1, '2022294136', 'Sanket Detroja', 'null', '9409596584', '', 2, '2022-04-28 10:16:52', '0000-00-00 00:00:00', 6, 1, 2, '399', '0000-00-00 00:00:00', '2022-04-28 10:19:56', '2022-04-28 10:29:20', '', 1, 0, 0, '', 'uploads/orders_qr/macd_2136059351.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '399', '', NULL, NULL, NULL, 0, '2022-04-28', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (21, 1, '2022128567', 'Sanket Detroja', 'null', '9409596584', 'swswwewe', 2, '2022-04-28 10:30:47', '0000-00-00 00:00:00', 1, 0, 0, '708', '0000-00-00 00:00:00', '2022-04-28 10:36:00', '2022-04-28 10:38:19', '', 1, 0, 0, 'ewewewe', 'uploads/orders_qr/macd_611000438.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '708', '', NULL, NULL, NULL, 0, '2022-04-28', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (22, 1, '2022362710', 'Sanket Detroja', 'null', '9409596584', '', 1, '2022-04-28 10:36:48', '0000-00-00 00:00:00', 6, 1, 2, '434', '0000-00-00 00:00:00', '2022-04-28 10:37:18', NULL, '', 1, 0, 0, 'weqweqw', 'uploads/orders_qr/macd_1655528724.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '434', '', NULL, NULL, NULL, 0, '2022-04-28', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (23, 1, '2022138629', 'Sanket Detroja', 'null', '9409596584', 'asasa', 0, '2022-04-28 10:40:40', '0000-00-00 00:00:00', 1, 0, 0, '648', '0000-00-00 00:00:00', NULL, NULL, '', 1, 0, 0, 'dsdasasd', 'uploads/orders_qr/macd_1868249294.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '648', '', NULL, NULL, NULL, 0, '2022-04-28', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (24, 1, '2022426703', 'Sanket Detroja', 'null', '9409596584', '', 0, '2022-04-28 10:41:33', '2022-04-28 10:00:00', 2, 0, 3, '608', '0000-00-00 00:00:00', NULL, NULL, '', 1, 0, 0, 'dadasdsad', 'uploads/orders_qr/macd_1265441331.png', '0', 0, '', 0, '', '', NULL, 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '608', '', NULL, NULL, NULL, 0, '2022-04-28', 0, '0', 0, 1, '0');
INSERT INTO `order_user_list` (`id`, `shop_id`, `uid`, `name`, `email`, `phone`, `address`, `status`, `created_at`, `reservation_date`, `order_type`, `table_no`, `total_person`, `total`, `cancel_time`, `accept_time`, `completed_time`, `g_map`, `is_ring`, `is_table`, `reservation_type`, `comments`, `qr_link`, `delivery_charge`, `is_payment`, `payment_by`, `pickup_point`, `es_time`, `time_slot`, `estimate_time`, `is_extras`, `delivery_area`, `is_preparing`, `token_number`, `dine_id`, `customer_id`, `dboy_id`, `dboy_status`, `is_picked`, `discount`, `dboy_accept_time`, `dboy_picked_time`, `dboy_completed_time`, `is_db_accept`, `is_db_completed`, `tax_fee`, `sub_total`, `pickup_time`, `customer_rating`, `customer_review`, `rating_time`, `shipping_id`, `pickup_date`, `is_coupon`, `coupon_percent`, `coupon_id`, `use_payment`, `tips`) VALUES (25, 1, '2022764381', 'Sanket Detroja', 'null', '9409596584', 'axasdas', 2, '2022-04-29 09:17:39', '0000-00-00 00:00:00', 1, 0, 0, '399', '0000-00-00 00:00:00', '2022-04-29 09:18:39', '2022-04-29 09:19:00', '', 1, 0, 0, 'czcsfasf', 'uploads/orders_qr/macd_1519462205.png', '0', 0, '', 0, '00:00', '00:00', '0000-00-00 00:00:00', 0, '', 0, NULL, 0, 3, 0, 0, 0, '0', NULL, NULL, NULL, 0, 0, '0', '399', '', NULL, NULL, NULL, 0, '2022-04-29', 0, '0', 0, 1, '0');


#
# TABLE STRUCTURE FOR: packages
#

DROP TABLE IF EXISTS `packages`;

CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_name` varchar(250) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `package_type` varchar(255) NOT NULL DEFAULT 'year',
  `order_limit` int(11) NOT NULL DEFAULT 0,
  `item_limit` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `packages` (`id`, `package_name`, `slug`, `price`, `package_type`, `order_limit`, `item_limit`, `status`, `created_at`) VALUES (1, 'Premium', 'premium', '0', 'fifteen', 0, 0, 1, '2022-04-07 14:16:05');


#
# TABLE STRUCTURE FOR: pages
#

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` longtext NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: payment_info
#

DROP TABLE IF EXISTS `payment_info`;

CREATE TABLE `payment_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `currency_code` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `txn_id` varchar(255) DEFAULT NULL,
  `payment_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `all_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `payment_info` (`id`, `user_id`, `account_type`, `price`, `currency_code`, `status`, `txn_id`, `payment_type`, `created_at`, `all_info`) VALUES (1, 2, 1, '0', 'INR', 'Completed', 'ZbI1203cqsRV8mOW', '0', '2022-04-23 10:53:09', NULL);


#
# TABLE STRUCTURE FOR: payment_method_list
#

DROP TABLE IF EXISTS `payment_method_list`;

CREATE TABLE `payment_method_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `active_slug` varchar(255) DEFAULT NULL,
  `status_slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (1, 'Paypal', 'paypal', 'paypal_status', 'is_paypal', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (2, 'Stripe', 'stripe', 'stripe_status', 'is_stripe', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (3, 'Razorpay', 'razorpay', 'razorpay_status', 'is_razorpay', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (4, 'Stripe FPX', 'stripe_fpx', 'stripe_fpx_status', 'is_fpx', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (5, 'Paytm', 'paytm', 'paytm_status', 'is_paytm', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (6, 'Mercadopago', 'mercado', 'mercado_status', 'is_mercado', 1);
INSERT INTO `payment_method_list` (`id`, `name`, `slug`, `active_slug`, `status_slug`, `status`) VALUES (7, 'Flutterwave', 'flutterwave', 'flutterwave_status', 'is_flutterwave', 1);


#
# TABLE STRUCTURE FOR: permission_list
#

DROP TABLE IF EXISTS `permission_list`;

CREATE TABLE `permission_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (1, 'Add New Item', 'add', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (2, 'Update', 'update', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (3, 'Delete', 'delete', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (4, 'Settings Control', 'setting-control', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (5, 'Order Control', 'order-control', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (6, 'Profile Control', 'profile-control', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (7, 'Change status', 'change-status', 1);
INSERT INTO `permission_list` (`id`, `title`, `slug`, `status`) VALUES (8, 'Order cancel', 'order-cancel', 1);


#
# TABLE STRUCTURE FOR: pickup_points_area
#

DROP TABLE IF EXISTS `pickup_points_area`;

CREATE TABLE `pickup_points_area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `latitude` varchar(255) NOT NULL,
  `longitude` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: portfolio
#

DROP TABLE IF EXISTS `portfolio`;

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `images` varchar(250) DEFAULT NULL,
  `thumb` varchar(250) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `is_video` int(11) NOT NULL DEFAULT 0,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pricing
#

DROP TABLE IF EXISTS `pricing`;

CREATE TABLE `pricing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) DEFAULT NULL,
  `feature_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (10, 1, 1, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (11, 1, 2, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (12, 1, 3, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (13, 1, 4, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (14, 1, 5, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (15, 1, 6, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (16, 1, 7, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (17, 1, 8, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (18, 1, 9, 1, '2022-04-07 14:16:05');
INSERT INTO `pricing` (`id`, `package_id`, `feature_id`, `status`, `created_at`) VALUES (19, 1, 10, 1, '2022-04-07 14:16:05');


#
# TABLE STRUCTURE FOR: privacy
#

DROP TABLE IF EXISTS `privacy`;

CREATE TABLE `privacy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: profile_home
#

DROP TABLE IF EXISTS `profile_home`;

CREATE TABLE `profile_home` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `institution` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `whatsapp_text` text DEFAULT NULL,
  `document` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `google_map` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: reservation_date
#

DROP TABLE IF EXISTS `reservation_date`;

CREATE TABLE `reservation_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `days` int(11) NOT NULL,
  `start_time` varchar(50) NOT NULL,
  `end_time` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (1, 2, 1, 0, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (2, 2, 1, 1, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (3, 2, 1, 2, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (4, 2, 1, 3, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (5, 2, 1, 4, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (6, 2, 1, 5, '8:00', '10:00', '2022-04-07 14:22:56');
INSERT INTO `reservation_date` (`id`, `user_id`, `shop_id`, `days`, `start_time`, `end_time`, `created_at`) VALUES (7, 2, 1, 6, '8:00', '10:00', '2022-04-07 14:22:56');


#
# TABLE STRUCTURE FOR: reservation_types
#

DROP TABLE IF EXISTS `reservation_types`;

CREATE TABLE `reservation_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: restaurant_list
#

DROP TABLE IF EXISTS `restaurant_list`;

CREATE TABLE `restaurant_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `shop_id` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `short_name` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `address` varchar(266) NOT NULL,
  `email` varchar(255) NOT NULL,
  `about` text NOT NULL,
  `about_short` varchar(255) NOT NULL,
  `is_order` int(11) NOT NULL DEFAULT 1,
  `delivery_charge_in` double NOT NULL DEFAULT 0,
  `delivery_charge_out` double NOT NULL DEFAULT 0,
  `timing` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `cover_photo` varchar(255) NOT NULL,
  `cover_photo_thumb` varchar(255) NOT NULL,
  `is_reservation` int(11) NOT NULL DEFAULT 1,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `off_day` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `social_list` text NOT NULL,
  `created_at` datetime NOT NULL,
  `currency_code` varchar(10) NOT NULL,
  `icon` varchar(10) NOT NULL,
  `dial_code` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `is_whatsapp` int(11) NOT NULL DEFAULT 1,
  `paypal_config` varchar(255) NOT NULL,
  `stripe_config` varchar(255) NOT NULL,
  `razorpay_config` varchar(255) NOT NULL,
  `stock_status` int(11) NOT NULL,
  `is_stock_count` int(11) NOT NULL,
  `gmap_key` varchar(255) NOT NULL,
  `is_gmap` int(11) NOT NULL,
  `is_kds` int(11) NOT NULL DEFAULT 1,
  `es_time` int(11) NOT NULL,
  `time_slot` varchar(20) DEFAULT NULL,
  `tax_fee` double NOT NULL,
  `min_order` double NOT NULL,
  `discount` double NOT NULL,
  `pickup_time_slots` text DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `is_review` int(11) NOT NULL DEFAULT 1,
  `is_paypal` int(11) NOT NULL DEFAULT 1,
  `is_stripe` int(11) NOT NULL DEFAULT 1,
  `is_razorpay` int(11) NOT NULL DEFAULT 1,
  `paypal_status` int(11) NOT NULL DEFAULT 1,
  `stripe_status` int(11) NOT NULL DEFAULT 1,
  `razorpay_status` int(11) NOT NULL DEFAULT 1,
  `stripe_fpx_status` int(11) NOT NULL DEFAULT 0,
  `mercado_status` int(11) NOT NULL DEFAULT 0,
  `paytm_status` int(11) NOT NULL DEFAULT 0,
  `flutterwave_status` int(11) NOT NULL DEFAULT 0,
  `is_fpx` int(11) NOT NULL DEFAULT 1,
  `fpx_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_mercado` int(11) NOT NULL DEFAULT 0,
  `mercado_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 0,
  `paytm_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_flutterwave` int(11) NOT NULL DEFAULT 0,
  `flutterwave_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_customer_login` int(11) NOT NULL DEFAULT 1,
  `currency_position` int(11) NOT NULL DEFAULT 1,
  `number_formats` int(11) NOT NULL DEFAULT 1,
  `is_area_delivery` int(11) NOT NULL DEFAULT 0,
  `is_call_waiter` int(11) NOT NULL DEFAULT 1,
  `is_admin_gmap` int(11) NOT NULL DEFAULT 0,
  `whatsapp_number` varchar(255) DEFAULT NULL,
  `whatsapp_msg` text DEFAULT NULL,
  `is_language` int(11) NOT NULL DEFAULT 0,
  `is_pin` int(11) NOT NULL DEFAULT 0,
  `pin_number` varchar(255) DEFAULT NULL,
  `date_format` int(11) NOT NULL DEFAULT 8,
  `time_format` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `restaurant_list` (`id`, `shop_id`, `user_id`, `username`, `phone`, `name`, `short_name`, `location`, `address`, `email`, `about`, `about_short`, `is_order`, `delivery_charge_in`, `delivery_charge_out`, `timing`, `thumb`, `images`, `cover_photo`, `cover_photo_thumb`, `is_reservation`, `start_time`, `end_time`, `off_day`, `status`, `social_list`, `created_at`, `currency_code`, `icon`, `dial_code`, `country_id`, `is_whatsapp`, `paypal_config`, `stripe_config`, `razorpay_config`, `stock_status`, `is_stock_count`, `gmap_key`, `is_gmap`, `is_kds`, `es_time`, `time_slot`, `tax_fee`, `min_order`, `discount`, `pickup_time_slots`, `slogan`, `is_review`, `is_paypal`, `is_stripe`, `is_razorpay`, `paypal_status`, `stripe_status`, `razorpay_status`, `stripe_fpx_status`, `mercado_status`, `paytm_status`, `flutterwave_status`, `is_fpx`, `fpx_config`, `is_mercado`, `mercado_config`, `is_paytm`, `paytm_config`, `is_flutterwave`, `flutterwave_config`, `is_customer_login`, `currency_position`, `number_formats`, `is_area_delivery`, `is_call_waiter`, `is_admin_gmap`, `whatsapp_number`, `whatsapp_msg`, `is_language`, `is_pin`, `pin_number`, `date_format`, `time_format`) VALUES (1, 'DNaLRV', 2, 'macd', '9409596584', 'McDonald\'s', '', 'https://www.google.com/maps/dir/?api=1&destination=22.5422390000,72.9461020000', 'Vallabh Vidyanagar, Anand', 'macd@gmail.com', '', 'Burger, Fast Food, Desserts, Coffee, Beverages', 1, '0', '0', '', 'uploads/thumb/40acafb47f77c75c9c65a720b346796e.png', '', 'uploads/site_banners/4e96e055e7b8bfac627c724452a49840.jpeg', '', 1, '00:00:00', '00:00:00', '', 1, '{\"whatsapp\":\"9409596584\",\"facebook\":\"\",\"instagram\":\"\",\"twitter\":\"\",\"youtube\":\"\",\"website\":\"\"}', '2022-04-28 10:24:38', 'INR', '₹', '+91', 79, 1, '{\"is_live\":0,\"paypal_email\":\"\"}', '{\"public_key\":\"\",\"secret_key\":\"\"}', '{\"razorpay_key\":\"ZYsal6LynZr9YzT0PRbHzuFl\",\"razorpay_key_id\":\"rzp_test_pc1ZjnzaE7KXr9\"}', 0, 0, '', 0, 0, 0, 'minutes', '0', '0', '0', '[\"00:00 - 00:30\",\"00:30 - 01:00\",\"01:00 - 01:30\",\"01:30 - 02:00\",\"02:00 - 02:30\",\"02:30 - 03:00\",\"03:00 - 03:30\",\"03:30 - 04:00\",\"04:00 - 04:30\",\"04:30 - 05:00\",\"05:00 - 05:30\",\"05:30 - 06:00\",\"06:00 - 06:30\",\"06:30 - 07:00\",\"07:00 - 07:30\",\"07:30 - 08:00\",\"08:00 - 08:30\",\"08:30 - 09:00\",\"09:00 - 09:30\",\"09:30 - 10:00\",\"10:00 - 10:30\",\"10:30 - 11:00\",\"11:00 - 11:30\",\"11:30 - 12:00\",\"12:00 - 12:30\",\"12:30 - 13:00\",\"13:00 - 13:30\",\"13:30 - 14:00\",\"14:00 - 14:30\",\"14:30 - 15:00\",\"15:00 - 15:30\",\"15:30 - 16:00\",\"16:00 - 16:30\",\"16:30 - 17:00\",\"17:00 - 17:30\",\"17:30 - 18:00\",\"18:00 - 18:30\",\"18:30 - 19:00\",\"19:00 - 19:30\",\"19:30 - 20:00\",\"20:00 - 20:30\",\"20:30 - 21:00\",\"21:00 - 21:30\",\"21:30 - 22:00\",\"22:00 - 22:30\",\"22:30 - 23:00\"]', 'macd', 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, '{\"fpx_public_key\":null,\"fpx_secret_key\":null}', 0, '{\"mercado_public_key\":null,\"access_token\":null}', 0, '{\"merchant_key\":null,\"merchant_id\":null,\"is_paytm_live\":0}', 0, '{\"fw_public_key\":null,\"fw_secret_key\":null,\"is_flutterwave_live\":0,\"encryption_key\":null}', 1, 1, 1, 0, 1, 0, '9409596584', '\"\\\"Hi, {CUSTOMER_NAME} Your order from {SHOP_NAME} is being preparing.\\r\\nYour Order number is {ORDER_ID}.\\r\\nItems:\\\\r\\\\n{ITEM_LIST}\\r\\nHere is your tracking link: {TRACK_URL}\\\"\"', 0, 0, '', 8, 1);


#
# TABLE STRUCTURE FOR: section_banners
#

DROP TABLE IF EXISTS `section_banners`;

CREATE TABLE `section_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_name` varchar(255) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` text DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (1, 'home', 'Build Your Brand With', 'We are team of talanted designers making websites with Bootstrap', 'uploads/site_banners/17352a0601cfc7d6903ef8ed691a257c.jpg', 1, '2021-02-20 10:35:54');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (3, 'faq', 'FAQ', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', 'uploads/site_banners/db6862f2f5907b6d9a5c7b4b0efe3404.png', 1, '2021-02-25 16:21:58');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (4, 'how_it_works', 'HOW IT WORKS', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:34:33');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (5, 'teams', 'MEET WITH OUR TEAMS', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:35:01');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (6, 'services', 'OUR SERVICES', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 1, '2020-10-01 15:40:10');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (7, 'reviews', 'Reviews', 'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Unde, eum vel recusandae, voluptas dolore dicta! Lorem ipsum dolor sit amet consectetur', NULL, 1, '2020-10-18 10:46:53');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (8, 'pricing', 'Select a package to continue', 'Lorem ipsum dolor sit amet, consectetur adipisicing, elit. Consequatur neque tenetur dolores laudantium quod facere qua', NULL, 0, '2020-10-16 16:29:29');
INSERT INTO `section_banners` (`id`, `section_name`, `heading`, `sub_heading`, `images`, `status`, `created_at`) VALUES (9, 'contacts', 'Contacts', 'Need any help. Please contact with us', NULL, 1, '2021-02-20 17:27:59');


#
# TABLE STRUCTURE FOR: services
#

DROP TABLE IF EXISTS `services`;

CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (1, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (3, 8, 'Click to Call', '<i class=\"fas fa-home\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-13 16:23:00');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (4, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.Your customers will reach you by just tapping on mobile number on vCard. Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (5, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 1, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (6, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 0, '2020-10-12 11:35:47');
INSERT INTO `services` (`id`, `user_id`, `title`, `icon`, `details`, `status`, `created_at`) VALUES (7, 8, 'Click to Call', '<i class=\"fas fa-phone\"></i>', 'Your customers will reach you by just tapping on mobile number on vCard.', 0, '2020-10-12 11:35:47');


#
# TABLE STRUCTURE FOR: settings
#

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_name` varchar(250) NOT NULL,
  `copyright` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `analytics` text NOT NULL,
  `smtp_mail` varchar(255) NOT NULL,
  `email_type` int(11) NOT NULL DEFAULT 1,
  `smtp_config` varchar(255) NOT NULL,
  `subjects` varchar(255) NOT NULL,
  `is_paypal` int(11) NOT NULL DEFAULT 0,
  `paypal_config` varchar(255) NOT NULL,
  `is_stripe` int(11) NOT NULL DEFAULT 0,
  `stripe_config` varchar(255) NOT NULL,
  `is_recaptcha` int(11) NOT NULL DEFAULT 0,
  `recaptcha_config` varchar(255) NOT NULL,
  `social_sites` varchar(255) NOT NULL,
  `pricing_layout` int(11) NOT NULL DEFAULT 1,
  `time_zone` varchar(255) NOT NULL DEFAULT 'Asia/Dhaka',
  `is_registration` tinyint(11) NOT NULL DEFAULT 1,
  `auto_approval` int(11) NOT NULL DEFAULT 1,
  `is_email_verification` int(11) NOT NULL DEFAULT 1,
  `new_user_mail` int(11) NOT NULL DEFAULT 1,
  `is_email_verify_free` int(11) NOT NULL DEFAULT 0,
  `user_invoice` int(11) NOT NULL DEFAULT 1,
  `language` varchar(255) NOT NULL DEFAULT 'english',
  `logo` varchar(255) NOT NULL,
  `favicon` varchar(255) NOT NULL,
  `user_count` int(11) NOT NULL DEFAULT 0,
  `home_banner` varchar(255) NOT NULL,
  `home_banner_thumb` varchar(255) NOT NULL,
  `site_qr_link` varchar(255) NOT NULL,
  `site_qr_logo` varchar(255) NOT NULL,
  `active_code` varchar(255) NOT NULL,
  `site_id` int(11) NOT NULL,
  `version` double NOT NULL,
  `user_id` int(11) NOT NULL,
  `razorpay_key` varchar(255) DEFAULT NULL,
  `razorpay_key_id` varchar(255) DEFAULT NULL,
  `is_razorpay` int(11) NOT NULL DEFAULT 0,
  `currency` int(11) NOT NULL DEFAULT 26,
  `is_ads` int(11) NOT NULL DEFAULT 0,
  `is_rating` int(11) NOT NULL DEFAULT 1,
  `site_info` varchar(255) DEFAULT NULL,
  `purchase_code` varchar(255) NOT NULL,
  `supported_until` datetime DEFAULT NULL,
  `is_user` int(11) NOT NULL DEFAULT 1,
  `is_order_video` int(11) NOT NULL DEFAULT 1,
  `site_url` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `seo_settings` text DEFAULT NULL,
  `active_key` varchar(155) DEFAULT NULL,
  `is_signup` int(11) NOT NULL DEFAULT 1,
  `is_auto_verified` int(11) NOT NULL DEFAULT 0,
  `twillo_sms_settings` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT 15,
  `is_update` int(11) NOT NULL DEFAULT 0,
  `license_name` varchar(255) NOT NULL,
  `is_lang_list` int(11) NOT NULL DEFAULT 1,
  `purchase_date` datetime DEFAULT NULL,
  `license_code` varchar(255) DEFAULT NULL,
  `is_item_search` int(11) NOT NULL DEFAULT 1,
  `environment` varchar(255) NOT NULL DEFAULT 'live',
  `is_landing_page` int(11) NOT NULL DEFAULT 0,
  `landing_page_url` varchar(255) DEFAULT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `paypal_status` int(11) NOT NULL DEFAULT 1,
  `stripe_status` int(11) NOT NULL DEFAULT 1,
  `razorpay_status` int(11) NOT NULL DEFAULT 1,
  `stripe_fpx_status` int(11) NOT NULL DEFAULT 0,
  `mercado_status` int(11) NOT NULL DEFAULT 0,
  `paytm_status` int(11) NOT NULL DEFAULT 0,
  `flutterwave_status` int(11) NOT NULL DEFAULT 0,
  `is_fpx` int(11) NOT NULL DEFAULT 1,
  `fpx_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_mercado` int(11) NOT NULL DEFAULT 0,
  `mercado_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_paytm` int(11) NOT NULL DEFAULT 0,
  `paytm_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_flutterwave` int(11) NOT NULL DEFAULT 0,
  `flutterwave_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `gmap_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_pwa` int(11) NOT NULL DEFAULT 0,
  `pwa_config` text DEFAULT NULL,
  `system_fonts` varchar(255) DEFAULT NULL,
  `custom_css` longtext DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `settings` (`id`, `site_name`, `copyright`, `description`, `analytics`, `smtp_mail`, `email_type`, `smtp_config`, `subjects`, `is_paypal`, `paypal_config`, `is_stripe`, `stripe_config`, `is_recaptcha`, `recaptcha_config`, `social_sites`, `pricing_layout`, `time_zone`, `is_registration`, `auto_approval`, `is_email_verification`, `new_user_mail`, `is_email_verify_free`, `user_invoice`, `language`, `logo`, `favicon`, `user_count`, `home_banner`, `home_banner_thumb`, `site_qr_link`, `site_qr_logo`, `active_code`, `site_id`, `version`, `user_id`, `razorpay_key`, `razorpay_key_id`, `is_razorpay`, `currency`, `is_ads`, `is_rating`, `site_info`, `purchase_code`, `supported_until`, `is_user`, `is_order_video`, `site_url`, `created_at`, `updated_at`, `seo_settings`, `active_key`, `is_signup`, `is_auto_verified`, `twillo_sms_settings`, `country_id`, `is_update`, `license_name`, `is_lang_list`, `purchase_date`, `license_code`, `is_item_search`, `environment`, `is_landing_page`, `landing_page_url`, `pixel_id`, `paypal_status`, `stripe_status`, `razorpay_status`, `stripe_fpx_status`, `mercado_status`, `paytm_status`, `flutterwave_status`, `is_fpx`, `fpx_config`, `is_mercado`, `mercado_config`, `is_paytm`, `paytm_config`, `is_flutterwave`, `flutterwave_config`, `gmap_config`, `is_pwa`, `pwa_config`, `system_fonts`, `custom_css`, `long_description`) VALUES (1, 'WhatsappMenu', '', '', '', 'admin@glysis.com', 1, '', '', 0, '{\"paypal_email\":null,\"is_live\":0}', 0, '{\"public_key\":null,\"secret_key\":null}', 0, '', '', 1, 'Asia/Kolkata', 1, 1, 0, 1, 0, 1, 'english', 'uploads/site_images/f7fb3c6b3c37b22ac6e3e0336c73e893.png', '', 0, '', '', 'uploads/qr_image/site_qr_175631648.png', '', 'GPLLICENSE', 1768, '2.3', 0, 'ZYsal6LynZr9YzT0PRbHzuFl', 'rzp_test_pc1ZjnzaE7KXr9', 1, 79, 0, 1, '526f0a46f67201715d149a0c764cee86', 'aaa', NULL, 1, 1, 'project.glysis.com/', '2022-04-07 14:42:24', NULL, NULL, '1', 1, 0, '', 79, 0, 'extend', 0, '0000-00-00 00:00:00', '526f0a46f67201715d149a0c764cee86', 1, 'live', 0, NULL, '', 0, 0, 1, 0, 0, 0, 0, 0, '{\"fpx_public_key\":null,\"fpx_secret_key\":null}', 0, '{\"mercado_public_key\":null,\"access_token\":null}', 0, '{\"merchant_key\":null,\"merchant_id\":null,\"is_paytm_live\":0}', 0, '{\"fw_public_key\":null,\"fw_secret_key\":null,\"is_flutterwave_live\":0,\"encryption_key\":null}', NULL, 0, NULL, NULL, NULL, '');


#
# TABLE STRUCTURE FOR: shop_location_list
#

DROP TABLE IF EXISTS `shop_location_list`;

CREATE TABLE `shop_location_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

#
# TABLE STRUCTURE FOR: site_features
#

DROP TABLE IF EXISTS `site_features`;

CREATE TABLE `site_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `dir` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (1, 1, 'Choose a name of your  Restaurant', '', '', '<i class=\"icofont-newspaper\"></i>', 'Choose you name and create your restaurant easily', 'left', 1, '2021-02-25 15:54:09');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (2, 1, 'Create Menu', '', '', '<i class=\"icofont-list\"></i>', 'Add to cart your item and make a menu', 'right', 1, '2021-02-25 16:00:05');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (3, 1, 'Make an order', '', '', '<i class=\"icofont-fast-delivery\"></i>', 'After select all items make an order select order type like  booking or home delivery ', 'right', 1, '2021-02-25 16:03:50');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (4, 1, 'Mail verification', '', '', '<i class=\"icofont-envelope-open\"></i>', 'After create you account , verify you account by mail verification', 'left', 1, '2021-02-25 15:55:40');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (6, 1, 'Make  Payment', NULL, NULL, '<i class=\"icofont-pay\"></i>', 'Make a payment if your not a free user. Make payment using Stripe,Paypal,Razorpay', 'left', 1, '2021-02-25 15:56:58');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (7, 1, 'QR code', NULL, NULL, '<i class=\"icofont-qr-code\"></i>', 'After create account dynamically create your account QR code. Share your account via QR code', 'left', 1, '2021-02-25 15:58:46');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (8, 1, 'Ordering via Whatsapp', NULL, NULL, '<i class=\"icofont-wechat\"></i>', 'After complete order confirm order via WhatsApp,  continue chat & finalize order', 'right', 1, '2021-02-25 16:10:34');
INSERT INTO `site_features` (`id`, `user_id`, `title`, `images`, `thumb`, `icon`, `details`, `dir`, `status`, `created_at`) VALUES (9, 1, 'Track your order', NULL, NULL, '<i class=\"icofont-search-restaurant\"></i>', 'Track your order using your phone & Order id or QR code', 'right', 1, '2021-02-25 16:12:15');


#
# TABLE STRUCTURE FOR: site_services
#

DROP TABLE IF EXISTS `site_services`;

CREATE TABLE `site_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(250) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `site_services` (`id`, `title`, `details`, `images`, `thumb`, `status`, `created_at`) VALUES (1, 'Create Your Restaurant Profile', '<p>Make you restaurant profile with unique design, Dynamic color, Social sites.</p>', 'uploads/big/e003eb0309f4315d253ec4ffb31b2ca1.png', 'uploads/thumb/e003eb0309f4315d253ec4ffb31b2ca1.png', 1, '2021-02-25 16:34:19');
INSERT INTO `site_services` (`id`, `title`, `details`, `images`, `thumb`, `status`, `created_at`) VALUES (2, 'Check Order and orders statistics', '<p>Check your order, reservation , revenue and all statistics with strong dashboard  </p>', 'uploads/big/cb082005e089ae453eae2cc6f41f2acd.png', 'uploads/thumb/cb082005e089ae453eae2cc6f41f2acd.png', 1, '2021-02-25 16:36:28');


#
# TABLE STRUCTURE FOR: site_team
#

DROP TABLE IF EXISTS `site_team`;

CREATE TABLE `site_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (7, 1, 'Sanket Detroja', '19IT413', 'uploads/big/d4e2d28b579a56d0d8c4a1f854954c1c.jpg', 'uploads/thumb/d4e2d28b579a56d0d8c4a1f854954c1c.jpg', 1, '2022-04-28 10:59:06');
INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (8, 1, 'Jay Joshi', '19IT415', 'uploads/big/50d0c2dc39f404ffff10d04310b87aa1.jpg', 'uploads/thumb/50d0c2dc39f404ffff10d04310b87aa1.jpg', 1, '2022-05-05 08:23:13');
INSERT INTO `site_team` (`id`, `user_id`, `name`, `designation`, `images`, `thumb`, `status`, `created_at`) VALUES (9, 1, 'Badal Gajera', '19IT421', 'uploads/big/5a5bc00d8aac68fc4b7ae574c7e4fb0f.jpg', 'uploads/thumb/5a5bc00d8aac68fc4b7ae574c7e4fb0f.jpg', 1, '2022-05-05 08:23:35');


#
# TABLE STRUCTURE FOR: social_sites
#

DROP TABLE IF EXISTS `social_sites`;

CREATE TABLE `social_sites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `link` varchar(255) NOT NULL,
  `color` varchar(50) DEFAULT NULL,
  `bg_color` varchar(50) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (1, 8, 'facebook', '<i class=\"fa fa-facebook\" aria-hidden=\"true\"></i>', '', 'https://www.facebook.com/nazmul.nm/', NULL, NULL, 1, '2020-10-12 10:59:05');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (2, 8, 'twitter', '<i class=\"fa fa-twitter\" aria-hidden=\"true\"></i>', 'others', 'https://www.twitter.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:16');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (3, 8, 'instagram', '<i class=\"fa fa-instagram\" aria-hidden=\"true\"></i>', '', 'https://www.twitter.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:30');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (4, 8, 'github', '<i class=\"fa fa-github\" aria-hidden=\"true\"></i>', '', 'https://www.github.com/nazmul.nm/', NULL, NULL, 1, '2020-11-01 17:55:40');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (5, 8, 'youtube', '<i class=\"fa fa-youtube\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:32:02');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (6, 8, 'whatsapp', '<i class=\"fa fa-whatsapp\" aria-hidden=\"true\"></i>', 'whatsapp', '01745419093', NULL, NULL, 1, '2020-11-01 17:55:53');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (7, 8, 'behance', '<i class=\"fa fa-behance\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:33:19');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (8, 8, 'dribbble', '<i class=\"fa fa-dribbble\" aria-hidden=\"true\"></i>', '', '', NULL, NULL, 1, '2019-12-03 16:34:32');
INSERT INTO `social_sites` (`id`, `user_id`, `name`, `icon`, `type`, `link`, `color`, `bg_color`, `status`, `created_at`) VALUES (10, 8, 'pinterest', '<i class=\"fab fa-pinterest-p\"></i>', 'others', '', NULL, NULL, 1, '2020-10-12 10:55:02');


#
# TABLE STRUCTURE FOR: staff_list
#

DROP TABLE IF EXISTS `staff_list`;

CREATE TABLE `staff_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `last_login` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `images` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT 'staff',
  `country_id` varchar(5) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `gmap_link` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `staff_list` (`id`, `user_id`, `uid`, `name`, `email`, `phone`, `password`, `status`, `last_login`, `created_at`, `permission`, `thumb`, `images`, `role`, `country_id`, `address`, `gmap_link`) VALUES (1, 0, NULL, 'Brijesh', NULL, '7778895926', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '2022-04-07 15:11:29', NULL, NULL, NULL, 'customer', '79', '', '');
INSERT INTO `staff_list` (`id`, `user_id`, `uid`, `name`, `email`, `phone`, `password`, `status`, `last_login`, `created_at`, `permission`, `thumb`, `images`, `role`, `country_id`, `address`, `gmap_link`) VALUES (2, 0, NULL, 'Suraj', NULL, '8160898520', '069059b7ef840f0c74a814ec9237b6ec', 1, NULL, '2022-04-23 12:48:58', NULL, NULL, NULL, 'customer', '79', NULL, NULL);
INSERT INTO `staff_list` (`id`, `user_id`, `uid`, `name`, `email`, `phone`, `password`, `status`, `last_login`, `created_at`, `permission`, `thumb`, `images`, `role`, `country_id`, `address`, `gmap_link`) VALUES (3, 0, NULL, 'Sanket Detroja', NULL, '9409596584', 'e10adc3949ba59abbe56e057f20f883e', 1, NULL, '2022-04-28 10:16:27', NULL, NULL, NULL, 'customer', '79', NULL, NULL);


#
# TABLE STRUCTURE FOR: table_areas
#

DROP TABLE IF EXISTS `table_areas`;

CREATE TABLE `table_areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

INSERT INTO `table_areas` (`id`, `area_name`, `user_id`, `shop_id`) VALUES (1, 'Left', 2, 1);
INSERT INTO `table_areas` (`id`, `area_name`, `user_id`, `shop_id`) VALUES (2, 'Center', 2, 1);
INSERT INTO `table_areas` (`id`, `area_name`, `user_id`, `shop_id`) VALUES (3, 'Right', 2, 1);


#
# TABLE STRUCTURE FOR: table_list
#

DROP TABLE IF EXISTS `table_list`;

CREATE TABLE `table_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `area_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `size` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (1, 2, 1, 1, 'Left 1', 4, 1, '2022-04-07 14:26:19');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (2, 2, 1, 1, 'Left 2', 6, 1, '2022-04-07 14:26:32');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (3, 2, 1, 1, 'Left 3', 6, 1, '2022-04-07 14:26:52');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (4, 2, 1, 2, 'Center', 8, 1, '2022-04-07 14:27:20');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (5, 2, 1, 3, 'Right 1', 4, 1, '2022-04-07 14:27:42');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (6, 2, 1, 3, 'Right 2', 6, 1, '2022-04-07 14:27:59');
INSERT INTO `table_list` (`id`, `user_id`, `shop_id`, `area_id`, `name`, `size`, `status`, `created_at`) VALUES (7, 2, 1, 3, 'Right', 6, 1, '2022-04-07 14:28:17');


#
# TABLE STRUCTURE FOR: team
#

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `images` varchar(200) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: terms
#

DROP TABLE IF EXISTS `terms`;

CREATE TABLE `terms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: user_settings
#

DROP TABLE IF EXISTS `user_settings`;

CREATE TABLE `user_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `preloader` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime DEFAULT NULL,
  `is_download` int(11) NOT NULL DEFAULT 0,
  `smtp_mail` varchar(255) DEFAULT NULL,
  `smtp_config` text DEFAULT NULL,
  `email_type` int(11) NOT NULL DEFAULT 1,
  `is_facebook` int(11) NOT NULL DEFAULT 1,
  `seo_settings` text DEFAULT NULL,
  `twillo_sms_settings` text DEFAULT NULL,
  `pixel_id` varchar(255) DEFAULT NULL,
  `analytics_id` varchar(255) DEFAULT NULL,
  `icon_settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `qr_config` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `pwa_config` text DEFAULT NULL,
  `table_qr_config` longtext DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `user_settings` (`id`, `user_id`, `preloader`, `status`, `created_at`, `is_download`, `smtp_mail`, `smtp_config`, `email_type`, `is_facebook`, `seo_settings`, `twillo_sms_settings`, `pixel_id`, `analytics_id`, `icon_settings`, `qr_config`, `pwa_config`, `table_qr_config`) VALUES (1, 2, 2, 1, NULL, 0, 'macd@gmail.com', NULL, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `country` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `address` mediumtext DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `user_role` int(11) NOT NULL,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_verify` int(11) NOT NULL DEFAULT 0,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  `is_expired` int(11) NOT NULL DEFAULT 0,
  `is_request` int(11) NOT NULL DEFAULT 0,
  `designation` varchar(250) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `thumb` varchar(255) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `verify_time` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `theme` int(11) NOT NULL DEFAULT 1,
  `documents` varchar(255) DEFAULT NULL,
  `theme_color` int(11) NOT NULL DEFAULT 0,
  `colors` varchar(255) NOT NULL DEFAULT '29c7ac',
  `cover_photo` varchar(255) DEFAULT NULL,
  `vcf_qr` varchar(255) DEFAULT NULL,
  `qr_link` varchar(255) DEFAULT NULL,
  `share_link` int(11) NOT NULL,
  `is_deactived` int(11) NOT NULL DEFAULT 0,
  `site_info` varchar(255) NOT NULL,
  `dial_code` varchar(20) NOT NULL,
  `hit` int(11) NOT NULL DEFAULT 0,
  `menu_style` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `country`, `password`, `gender`, `address`, `account_type`, `user_role`, `is_active`, `is_verify`, `is_payment`, `is_expired`, `is_request`, `designation`, `website`, `thumb`, `start_date`, `end_date`, `last_login`, `verify_time`, `created_at`, `theme`, `documents`, `theme_color`, `colors`, `cover_photo`, `vcf_qr`, `qr_link`, `share_link`, `is_deactived`, `site_info`, `dial_code`, `hit`, `menu_style`) VALUES (1, 'briijesh', 'Sanket', 'sanket@gmail.com', '9409596584', 79, 'e10adc3949ba59abbe56e057f20f883e', 'Male', 'Vinayak Heights, Zanzarada Road, Junagadh', NULL, 1, 1, 1, 1, 0, 0, 'CEO', '', 'uploads/thumb/d5e78f3e89a1eeb5e18fa788beea791d.jpeg', NULL, NULL, '2022-05-08 20:38:09', NULL, '2022-04-07 14:40:34', 1, NULL, 0, '29c7ac', NULL, NULL, NULL, 0, 0, '', '+91', 0, 1);
INSERT INTO `users` (`id`, `username`, `name`, `email`, `phone`, `country`, `password`, `gender`, `address`, `account_type`, `user_role`, `is_active`, `is_verify`, `is_payment`, `is_expired`, `is_request`, `designation`, `website`, `thumb`, `start_date`, `end_date`, `last_login`, `verify_time`, `created_at`, `theme`, `documents`, `theme_color`, `colors`, `cover_photo`, `vcf_qr`, `qr_link`, `share_link`, `is_deactived`, `site_info`, `dial_code`, `hit`, `menu_style`) VALUES (2, 'macd', NULL, 'macd@gmail.com', NULL, NULL, 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 1, 0, 1, 1, 1, 0, 0, NULL, NULL, 'uploads/thumb/04accbd2d4f28b40216a50c9ceffbeed.png', '2022-04-23 10:53:09', '2022-05-08 23:59:59', '2022-05-08 09:41:05', '2022-04-07 14:14:22', NULL, 2, NULL, 0, '29c7ac', NULL, NULL, 'uploads/qr_image/macd_790010756.png', 0, 0, '', '', 28, 1);


#
# TABLE STRUCTURE FOR: users_active_features
#

DROP TABLE IF EXISTS `users_active_features`;

CREATE TABLE `users_active_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feature_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `heading` varchar(255) DEFAULT NULL,
  `sub_heading` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (1, 1, 2, 'Welcome Page', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (2, 2, 2, 'Menu ', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (3, 3, 2, 'Packages', '', 0);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (4, 4, 2, 'specialities', '', 0);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (5, 5, 2, 'Qr code', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (6, 6, 2, 'Whatsapp Order', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (7, 7, 2, 'Online Order', '', 0);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (8, 8, 2, 'Reservation', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (9, 9, 2, 'Contacts', '', 1);
INSERT INTO `users_active_features` (`id`, `feature_id`, `user_id`, `heading`, `sub_heading`, `status`) VALUES (10, 10, 2, 'Digital Payment', '', 0);


#
# TABLE STRUCTURE FOR: users_active_order_types
#

DROP TABLE IF EXISTS `users_active_order_types`;

CREATE TABLE `users_active_order_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `shop_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `is_payment` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (1, 2, 1, 1, 1, '2022-04-07 14:17:39', 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (2, 2, 1, 2, 1, '2022-04-07 14:17:39', 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (3, 2, 1, 3, 1, '2022-04-07 14:17:39', 0);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (4, 2, 1, 4, 1, '2022-04-07 14:17:39', 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (5, 2, 1, 5, 1, '2022-04-07 14:17:39', 1);
INSERT INTO `users_active_order_types` (`id`, `user_id`, `shop_id`, `type_id`, `status`, `created_at`, `is_payment`) VALUES (6, 2, 1, 6, 0, '2022-04-07 14:17:39', 1);


#
# TABLE STRUCTURE FOR: users_rating
#

DROP TABLE IF EXISTS `users_rating`;

CREATE TABLE `users_rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_id` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `rating` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `msg` text DEFAULT NULL,
  `rating_type` int(11) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
