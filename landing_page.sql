CREATE TABLE maintain
(
    id int(11) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    content text,
    created_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL,
    updated_at timestamp DEFAULT CURRENT_TIMESTAMP NOT NULL
);
INSERT INTO maintain (id, content, created_at, updated_at) VALUES (2, 'Tiáº¿p tá»¥c chuá»—i sá»± kiá»‡n tuáº§n trÆ°á»›c vÃ  nháº±m Ä‘áº£m báº£o tá»‘t hÆ¡n cháº¥t lÆ°á»£ng cá»§a dá»‹ch vá»¥, cÅ©ng nhÆ° Ä‘á»ƒ ngÆ°á»i chÆ¡i tráº£i nghiá»‡m tá»‘t hÆ¡n khi tham gia Re:Monster, BQT xin tiáº¿n hÃ nh báº£o trÃ¬ há»‡ thá»‘ng, Ä‘á»“ng thá»i má»Ÿ ra ná»™i dung má»›i nhÆ° sau:
<br>Thá»i gian báº£o trÃ¬ dá»± kiáº¿n:
<br>Báº¯t Ä‘áº§u:  09:00 ngÃ y 13/10/2018
<br>Káº¿t thÃºc: 12:00 ngÃ y 13/10/2018
<br>Ná»™i dung chi tiáº¿t báº£o trÃ¬ vui lÃ²ng theo dÃµi táº¡i trang chá»§ hoáº·c Fanpage.
<br>- Trong thá»i gian báº£o trÃ¬, ngÆ°á»i chÆ¡i vui lÃ²ng khÃ´ng Ä‘Äƒng nháº­p game nháº­p vÃ o game Ä‘á»ƒ trÃ¡nh sá»± cá»‘ xáº£y ra.
<br>- Sau khi báº£o trÃ¬ xong, báº¡n sáº½ cÃ³ thá»ƒ Ä‘Äƒng nháº­p vÃ o game bÃ¬nh thÆ°á»ng Ä‘á»ƒ tham gia cÃ¡c hoáº¡t Ä‘á»™ng trong game.
<br>- Táº¥t cáº£ cÃ¡c sá»± kiá»‡n nÃªu trÃªn Ä‘á»u chá»‰ báº¯t Ä‘áº§u tá»« sau khi káº¿t thÃºc báº£o trÃ¬.
<br>BQT vÃ´ cÃ¹ng xin lá»—i vÃ¬ sá»± báº¥t tiá»‡n nÃ y!', '2018-10-22 22:07:23', null);
CREATE TABLE wp_commentmeta
(
    meta_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comment_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    meta_key varchar(255),
    meta_value longtext
);
CREATE INDEX comment_id ON wp_commentmeta (comment_id);
CREATE INDEX meta_key ON wp_commentmeta (meta_key);
CREATE TABLE wp_comments
(
    comment_ID bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    comment_post_ID bigint(20) unsigned DEFAULT '0' NOT NULL,
    comment_author tinytext NOT NULL,
    comment_author_email varchar(100) DEFAULT '' NOT NULL,
    comment_author_url varchar(200) DEFAULT '' NOT NULL,
    comment_author_IP varchar(100) DEFAULT '' NOT NULL,
    comment_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    comment_date_gmt datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    comment_content text NOT NULL,
    comment_karma int(11) DEFAULT '0' NOT NULL,
    comment_approved varchar(20) DEFAULT '1' NOT NULL,
    comment_agent varchar(255) DEFAULT '' NOT NULL,
    comment_type varchar(20) DEFAULT '' NOT NULL,
    comment_parent bigint(20) unsigned DEFAULT '0' NOT NULL,
    user_id bigint(20) unsigned DEFAULT '0' NOT NULL
);
CREATE INDEX comment_post_ID ON wp_comments (comment_post_ID);
CREATE INDEX comment_author_email ON wp_comments (comment_author_email);
CREATE INDEX comment_date_gmt ON wp_comments (comment_date_gmt);
CREATE INDEX comment_approved_date_gmt ON wp_comments (comment_approved, comment_date_gmt);
CREATE INDEX comment_parent ON wp_comments (comment_parent);
INSERT INTO wp_comments (comment_ID, comment_post_ID, comment_author, comment_author_email, comment_author_url, comment_author_IP, comment_date, comment_date_gmt, comment_content, comment_karma, comment_approved, comment_agent, comment_type, comment_parent, user_id) VALUES (1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-09-25 09:21:03', '2018-09-25 09:21:03', 'Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);
CREATE TABLE wp_links
(
    link_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    link_url varchar(255) DEFAULT '' NOT NULL,
    link_name varchar(255) DEFAULT '' NOT NULL,
    link_image varchar(255) DEFAULT '' NOT NULL,
    link_target varchar(25) DEFAULT '' NOT NULL,
    link_description varchar(255) DEFAULT '' NOT NULL,
    link_visible varchar(20) DEFAULT 'Y' NOT NULL,
    link_owner bigint(20) unsigned DEFAULT '1' NOT NULL,
    link_rating int(11) DEFAULT '0' NOT NULL,
    link_updated datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    link_rel varchar(255) DEFAULT '' NOT NULL,
    link_notes mediumtext NOT NULL,
    link_rss varchar(255) DEFAULT '' NOT NULL
);
CREATE INDEX link_visible ON wp_links (link_visible);
CREATE TABLE wp_options
(
    option_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    option_name varchar(191) DEFAULT '' NOT NULL,
    option_value longtext NOT NULL,
    autoload varchar(20) DEFAULT 'yes' NOT NULL
);
CREATE UNIQUE INDEX option_name ON wp_options (option_name);
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (1, 'siteurl', 'http://yume100.vn', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (2, 'home', 'http://yume100.vn', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (3, 'blogname', 'Landing page', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (4, 'blogdescription', 'Just another WordPress site', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (5, 'users_can_register', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (6, 'admin_email', 'dam.le@fujitechjsc.com', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (7, 'start_of_week', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (8, 'use_balanceTags', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (9, 'use_smilies', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (10, 'require_name_email', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (11, 'comments_notify', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (12, 'posts_per_rss', '10', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (13, 'rss_use_excerpt', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (14, 'mailserver_url', 'mail.example.com', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (15, 'mailserver_login', 'login@example.com', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (16, 'mailserver_pass', 'password', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (17, 'mailserver_port', '110', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (18, 'default_category', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (19, 'default_comment_status', 'open', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (20, 'default_ping_status', 'open', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (21, 'default_pingback_flag', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (22, 'posts_per_page', '10', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (23, 'date_format', 'F j, Y', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (24, 'time_format', 'g:i a', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (25, 'links_updated_date_format', 'F j, Y g:i a', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (26, 'comment_moderation', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (27, 'moderation_notify', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (29, 'rewrite_rules', 'a:89:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (30, 'hack_file', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (31, 'blog_charset', 'UTF-8', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (32, 'moderation_keys', '', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (33, 'active_plugins', 'a:2:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:55:"any-mobile-theme-switcher/any-mobile-theme-switcher.php";}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (34, 'category_base', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (36, 'comment_max_links', '2', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (37, 'gmt_offset', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (38, 'default_email_category', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (39, 'recently_edited', 'a:5:{i:0;s:54:"/var/www/html/landing/wp-content/themes/yume/index.php";i:2;s:54:"/var/www/html/landing/wp-content/themes/yume/style.css";i:3;s:71:"/var/www/html/landing/wp-content/plugins/advanced-custom-fields/acf.php";i:4;s:68:"C:\\xampp\\htdocs\\www\\wordpress/wp-content/plugins/akismet/akismet.php";i:5;s:0:"";}', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (40, 'template', 'yume', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (41, 'stylesheet', 'yume', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (42, 'comment_whitelist', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (43, 'blacklist_keys', '', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (44, 'comment_registration', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (45, 'html_type', 'text/html', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (46, 'use_trackback', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (47, 'default_role', 'subscriber', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (48, 'db_version', '38590', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (49, 'uploads_use_yearmonth_folders', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (50, 'upload_path', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (51, 'blog_public', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (52, 'default_link_category', '2', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (53, 'show_on_front', 'posts', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (54, 'tag_base', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (55, 'show_avatars', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (56, 'avatar_rating', 'G', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (57, 'upload_url_path', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (58, 'thumbnail_size_w', '150', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (59, 'thumbnail_size_h', '150', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (60, 'thumbnail_crop', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (61, 'medium_size_w', '300', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (62, 'medium_size_h', '300', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (63, 'avatar_default', 'mystery', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (64, 'large_size_w', '1024', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (65, 'large_size_h', '1024', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (66, 'image_default_link_type', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (67, 'image_default_size', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (68, 'image_default_align', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (69, 'close_comments_for_old_posts', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (70, 'close_comments_days_old', '14', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (71, 'thread_comments', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (72, 'thread_comments_depth', '5', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (73, 'page_comments', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (74, 'comments_per_page', '50', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (75, 'default_comments_page', 'newest', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (76, 'comment_order', 'asc', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (77, 'sticky_posts', 'a:0:{}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (81, 'uninstall_plugins', 'a:0:{}', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (82, 'timezone_string', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (83, 'page_for_posts', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (84, 'page_on_front', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (85, 'default_post_format', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (86, 'link_manager_enabled', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (87, 'finished_splitting_shared_terms', '1', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (88, 'site_icon', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (89, 'medium_large_size_w', '768', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (90, 'medium_large_size_h', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (91, 'wp_page_for_privacy_policy', '3', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (92, 'show_comments_cookies_opt_in', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (93, 'initial_db_version', '38590', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (94, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (95, 'fresh_site', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (96, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (101, 'sidebars_widgets', 'a:2:{s:19:"wp_inactive_widgets";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (102, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (103, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (104, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (105, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (106, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (107, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (108, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (109, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (110, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (111, 'cron', 'a:5:{i:1540275665;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1540286465;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1540286490;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1540351217;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (112, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1537867555;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (116, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.9.8.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.9.8-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.9.8-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.9.8";s:7:"version";s:5:"4.9.8";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1540257843;s:15:"version_checked";s:5:"4.9.8";s:12:"translations";a:0:{}}', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (125, 'can_compress_scripts', '1', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (141, 'recently_activated', 'a:0:{}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (144, 'current_theme', 'Yume', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (145, 'theme_mods_yume', 'a:3:{i:0;b:0;s:18:"nav_menu_locations";a:0:{}s:18:"custom_css_post_id";i:-1;}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (146, 'theme_switched', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (218, 'mobile_view_theme_link_text', 'Switch To Mobile Version', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (219, 'desktop_view_theme_link_text', 'Switch To Desktop Version', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (220, 'show_switch_link_for_desktop', 'no', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (221, 'forced_layout_expire_time', '0', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (222, 'iphone_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (223, 'ipad_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (224, 'android_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (225, 'android_tab_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (226, 'blackberry_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (227, 'windows_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (228, 'opera_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (229, 'parm_os_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (230, 'other_theme', 'Yume Mobile', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (307, 'category_children', 'a:0:{}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (337, 'WPLANG', '', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (338, 'new_admin_email', 'dam.le@fujitechjsc.com', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (353, 'ftp_credentials', 'a:3:{s:8:"hostname";s:10:"yume100.vn";s:8:"username";s:7:"landing";s:15:"connection_type";s:3:"ftp";}', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (357, 'acf_version', '5.7.7', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (358, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1540257864;s:7:"checked";a:5:{s:30:"advanced-custom-fields/acf.php";s:5:"5.7.7";s:19:"akismet/akismet.php";s:5:"4.0.8";s:55:"any-mobile-theme-switcher/any-mobile-theme-switcher.php";s:3:"2.1";s:9:"hello.php";s:3:"1.7";s:37:"wp-mobile-detect/wp-mobile-detect.php";s:3:"2.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"5.7.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.7.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:19:"akismet/akismet.php";O:8:"stdClass":9:{s:2:"id";s:21:"w.org/plugins/akismet";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"4.0.8";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip";s:5:"icons";a:2:{s:2:"2x";s:59:"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272";s:2:"1x";s:59:"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272";}s:7:"banners";a:1:{s:2:"1x";s:61:"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904";}s:11:"banners_rtl";a:0:{}}s:55:"any-mobile-theme-switcher/any-mobile-theme-switcher.php";O:8:"stdClass":9:{s:2:"id";s:39:"w.org/plugins/any-mobile-theme-switcher";s:4:"slug";s:25:"any-mobile-theme-switcher";s:6:"plugin";s:55:"any-mobile-theme-switcher/any-mobile-theme-switcher.php";s:11:"new_version";s:3:"2.1";s:3:"url";s:56:"https://wordpress.org/plugins/any-mobile-theme-switcher/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/any-mobile-theme-switcher.2.1.zip";s:5:"icons";a:1:{s:2:"1x";s:78:"https://ps.w.org/any-mobile-theme-switcher/assets/icon-128x128.png?rev=1109204";}s:7:"banners";a:1:{s:2:"1x";s:80:"https://ps.w.org/any-mobile-theme-switcher/assets/banner-772x250.png?rev=1109204";}s:11:"banners_rtl";a:0:{}}s:9:"hello.php";O:8:"stdClass":9:{s:2:"id";s:25:"w.org/plugins/hello-dolly";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";s:5:"icons";a:2:{s:2:"2x";s:63:"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907";s:2:"1x";s:63:"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907";}s:7:"banners";a:1:{s:2:"1x";s:65:"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342";}s:11:"banners_rtl";a:0:{}}s:37:"wp-mobile-detect/wp-mobile-detect.php";O:8:"stdClass":9:{s:2:"id";s:30:"w.org/plugins/wp-mobile-detect";s:4:"slug";s:16:"wp-mobile-detect";s:6:"plugin";s:37:"wp-mobile-detect/wp-mobile-detect.php";s:11:"new_version";s:3:"2.0";s:3:"url";s:47:"https://wordpress.org/plugins/wp-mobile-detect/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/wp-mobile-detect.2.0.zip";s:5:"icons";a:1:{s:7:"default";s:60:"https://s.w.org/plugins/geopattern-icon/wp-mobile-detect.svg";}s:7:"banners";a:0:{}s:11:"banners_rtl";a:0:{}}}}', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (575, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1540257864;s:7:"checked";a:5:{s:13:"twentyfifteen";s:3:"2.0";s:15:"twentyseventeen";s:3:"1.7";s:13:"twentysixteen";s:3:"1.5";s:4:"yume";s:3:"2.0";s:10:"yumemobile";s:3:"2.0";}s:8:"response";a:1:{s:4:"yume";a:4:{s:5:"theme";s:4:"yume";s:11:"new_version";s:3:"2.3";s:3:"url";s:34:"https://wordpress.org/themes/yume/";s:7:"package";s:50:"https://downloads.wordpress.org/theme/yume.2.3.zip";}}s:12:"translations";a:0:{}}', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (577, '_transient_doing_cron', '1540346138.3740780353546142578125', 'yes');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (591, '_site_transient_timeout_theme_roots', '1540323620', 'no');
INSERT INTO wp_options (option_id, option_name, option_value, autoload) VALUES (592, '_site_transient_theme_roots', 'a:6:{s:10:"New folder";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";s:4:"yume";s:7:"/themes";s:10:"yumemobile";s:7:"/themes";}', 'no');
CREATE TABLE wp_postmeta
(
    meta_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    post_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    meta_key varchar(255),
    meta_value longtext
);
CREATE INDEX post_id ON wp_postmeta (post_id);
CREATE INDEX meta_key ON wp_postmeta (meta_key);
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (1, 2, '_wp_page_template', 'default');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (2, 3, '_wp_page_template', 'default');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (3, 6, '_wp_attached_file', '2018/09/avatar.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (4, 6, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:155;s:6:"height";i:156;s:4:"file";s:18:"2018/09/avatar.png";s:5:"sizes";a:1:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"avatar-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (5, 5, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (6, 5, '_edit_lock', '1538036845:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (11, 10, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (12, 10, '_edit_lock', '1538022245:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (15, 12, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (16, 12, '_edit_lock', '1538022261:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (19, 14, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (20, 14, '_edit_lock', '1538022287:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (23, 16, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (24, 16, '_edit_lock', '1538990317:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (29, 23, '_edit_lock', '1539009749:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (30, 25, '_edit_lock', '1539048961:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (31, 25, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (36, 28, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7.zip');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (37, 28, '_wp_attachment_context', 'upgrader');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (38, 29, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7-1.zip');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (39, 29, '_wp_attachment_context', 'upgrader');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (40, 30, '_edit_lock', '1539050158:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (41, 30, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (42, 30, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (43, 30, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (44, 32, '_edit_lock', '1539050706:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (45, 32, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (46, 32, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (47, 32, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (48, 34, '_edit_lock', '1539050973:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (49, 34, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (50, 34, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (51, 34, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (52, 36, '_edit_lock', '1539051113:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (53, 36, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (54, 36, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (55, 36, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (56, 38, '_edit_lock', '1539051412:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (57, 38, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (58, 39, '_wp_attached_file', '2018/10/advanced-custom-fields.5.7.7-2.zip');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (59, 39, '_wp_attachment_context', 'upgrader');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (62, 41, '_edit_lock', '1539051907:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (63, 38, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (64, 38, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (65, 41, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (66, 45, '_edit_lock', '1539051666:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (67, 45, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (68, 45, '_pingme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (69, 45, '_encloseme', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (70, 45, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (71, 45, '_thumb_img', 'field_5bbc105b34c34');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (72, 45, '_', 'field_5bbc107734c35');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (73, 46, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (74, 46, '_thumb_img', 'field_5bbc105b34c34');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (75, 47, '_edit_lock', '1539051918:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (76, 47, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (77, 55, '_edit_lock', '1539055408:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (78, 55, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (79, 50, '_edit_lock', '1539070072:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (81, 50, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (90, 75, '_edit_lock', '1539053314:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (91, 76, '_edit_lock', '1539053379:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (92, 76, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (95, 76, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (96, 76, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (97, 77, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (98, 77, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (99, 78, '_edit_lock', '1539053840:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (100, 78, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (103, 78, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (104, 78, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (105, 79, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (106, 79, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (109, 81, '_edit_lock', '1539056657:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (110, 81, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (113, 81, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (114, 81, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (115, 82, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (116, 82, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (117, 83, '_edit_lock', '1539053917:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (118, 83, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (121, 83, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (122, 83, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (123, 84, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (124, 84, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (127, 85, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (128, 85, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (131, 55, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (132, 55, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (133, 86, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (134, 86, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (137, 88, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (138, 88, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (143, 89, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (144, 89, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (146, 91, '_edit_lock', '1539057316:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (147, 92, '_wp_attached_file', '2018/10/logo.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (148, 92, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:519;s:6:"height";i:408;s:4:"file";s:16:"2018/10/logo.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (149, 91, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (152, 91, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (153, 91, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (154, 93, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (155, 93, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (158, 94, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (159, 94, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (160, 95, '_edit_lock', '1539155986:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (161, 95, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (162, 96, '_wp_attached_file', '2018/10/30742208_1664479413607836_2593000755184124530_n.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (163, 96, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:410;s:6:"height";i:520;s:4:"file";s:59:"2018/10/30742208_1664479413607836_2593000755184124530_n.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (166, 95, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (167, 95, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (168, 97, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (169, 97, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (170, 99, '_wp_attached_file', '2018/10/pri_00023_full.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (171, 99, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:512;s:6:"height";i:1150;s:4:"file";s:26:"2018/10/pri_00023_full.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (174, 100, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (175, 100, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (176, 101, '_wp_attached_file', '2018/10/pri_00137_full.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (177, 101, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:378;s:6:"height";i:1126;s:4:"file";s:26:"2018/10/pri_00137_full.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (180, 102, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (181, 102, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (182, 103, '_edit_lock', '1539057725:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (183, 103, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (186, 103, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (187, 103, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (188, 104, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (189, 104, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (192, 105, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (193, 105, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (196, 106, 'thumb_img', '92');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (197, 106, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (198, 108, '_edit_lock', '1539068031:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (199, 108, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (200, 109, '_wp_attached_file', '2018/10/1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (201, 109, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:266;s:6:"height";i:426;s:4:"file";s:13:"2018/10/1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (202, 110, '_wp_attached_file', '2018/10/2.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (203, 110, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:506;s:6:"height";i:377;s:4:"file";s:13:"2018/10/2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (204, 111, '_wp_attached_file', '2018/10/3.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (205, 111, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:596;s:6:"height";i:302;s:4:"file";s:13:"2018/10/3.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (208, 108, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (209, 108, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (210, 112, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (211, 112, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (214, 113, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (215, 113, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (216, 114, '_edit_lock', '1539068925:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (217, 114, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (218, 115, '_wp_attached_file', '2018/10/1-1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (219, 115, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:661;s:6:"height";i:771;s:4:"file";s:15:"2018/10/1-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (220, 116, '_wp_attached_file', '2018/10/2.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (221, 116, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:265;s:6:"height";i:447;s:4:"file";s:13:"2018/10/2.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (222, 117, '_wp_attached_file', '2018/10/3.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (223, 117, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:847;s:6:"height";i:341;s:4:"file";s:13:"2018/10/3.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (226, 114, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (227, 114, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (228, 118, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (229, 118, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (230, 119, '_edit_lock', '1539156403:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (231, 119, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (234, 119, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (235, 119, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (236, 120, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (237, 120, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (238, 121, '_edit_lock', '1539073716:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (239, 121, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (242, 121, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (243, 121, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (244, 122, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (245, 122, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (248, 123, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (249, 123, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (252, 124, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (253, 124, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (256, 125, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (257, 125, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (260, 126, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (261, 126, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (262, 128, '_edit_lock', '1539152282:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (263, 128, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (264, 129, '_wp_attached_file', '2018/10/1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (265, 129, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:630;s:4:"file";s:13:"2018/10/1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (266, 130, '_wp_attached_file', '2018/10/a2.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (267, 130, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:363;s:6:"height";i:633;s:4:"file";s:14:"2018/10/a2.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (268, 131, '_wp_attached_file', '2018/10/a3.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (269, 131, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:634;s:4:"file";s:14:"2018/10/a3.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (270, 132, '_wp_attached_file', '2018/10/a4.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (271, 132, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:634;s:4:"file";s:14:"2018/10/a4.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (274, 128, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (275, 128, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (276, 133, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (277, 133, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (278, 134, '_edit_lock', '1539152779:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (279, 134, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (280, 135, '_wp_attached_file', '2018/10/a1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (281, 135, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:365;s:6:"height";i:637;s:4:"file";s:14:"2018/10/a1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (282, 136, '_wp_attached_file', '2018/10/a2-1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (283, 136, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:289;s:6:"height";i:506;s:4:"file";s:16:"2018/10/a2-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (284, 137, '_wp_attached_file', '2018/10/a3.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (285, 137, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:270;s:6:"height";i:478;s:4:"file";s:14:"2018/10/a3.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (286, 138, '_wp_attached_file', '2018/10/a5.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (287, 138, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:634;s:4:"file";s:14:"2018/10/a5.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (290, 134, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (291, 134, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (292, 139, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (293, 139, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (294, 140, '_edit_lock', '1539153200:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (295, 140, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (296, 141, '_wp_attached_file', '2018/10/a1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (297, 141, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:634;s:4:"file";s:14:"2018/10/a1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (298, 142, '_wp_attached_file', '2018/10/a2.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (299, 142, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:631;s:4:"file";s:14:"2018/10/a2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (300, 143, '_wp_attached_file', '2018/10/a3-1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (301, 143, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:639;s:4:"file";s:16:"2018/10/a3-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (304, 140, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (305, 140, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (306, 144, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (307, 144, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (310, 145, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (311, 145, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (312, 146, '_edit_lock', '1539153299:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (313, 146, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (314, 147, '_wp_attached_file', '2018/10/a1-1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (315, 147, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:358;s:6:"height";i:631;s:4:"file";s:16:"2018/10/a1-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (316, 148, '_wp_attached_file', '2018/10/a2-1.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (317, 148, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:358;s:6:"height";i:631;s:4:"file";s:16:"2018/10/a2-1.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (320, 146, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (321, 146, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (322, 149, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (323, 149, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (324, 150, '_edit_lock', '1539153577:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (325, 150, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (326, 151, '_wp_attached_file', '2018/10/a1-2.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (327, 151, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:631;s:4:"file";s:16:"2018/10/a1-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (328, 152, '_wp_attached_file', '2018/10/a2-2.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (329, 152, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:361;s:6:"height";i:630;s:4:"file";s:16:"2018/10/a2-2.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (332, 150, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (333, 150, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (334, 153, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (335, 153, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (338, 154, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (339, 154, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (340, 155, '_edit_lock', '1539154153:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (341, 155, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (342, 156, '_wp_attached_file', '2018/10/a1-3.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (343, 156, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:365;s:6:"height";i:637;s:4:"file";s:16:"2018/10/a1-3.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (344, 157, '_wp_attached_file', '2018/10/a2-3.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (345, 157, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:634;s:4:"file";s:16:"2018/10/a2-3.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (348, 155, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (349, 155, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (350, 158, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (351, 158, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (352, 159, '_edit_lock', '1539154397:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (353, 159, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (354, 160, '_wp_attached_file', '2018/10/a1-4.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (355, 160, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:365;s:6:"height";i:637;s:4:"file";s:16:"2018/10/a1-4.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (356, 161, '_wp_attached_file', '2018/10/a2-2.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (357, 161, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:364;s:6:"height";i:634;s:4:"file";s:16:"2018/10/a2-2.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (360, 159, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (361, 159, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (362, 162, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (363, 162, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (364, 163, '_edit_lock', '1539154834:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (365, 163, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (366, 164, '_wp_attached_file', '2018/10/a1-5.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (367, 164, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:633;s:4:"file";s:16:"2018/10/a1-5.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (368, 165, '_wp_attached_file', '2018/10/a2-3.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (369, 165, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:356;s:6:"height";i:632;s:4:"file";s:16:"2018/10/a2-3.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (370, 166, '_wp_attached_file', '2018/10/a3-1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (371, 166, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:360;s:6:"height";i:636;s:4:"file";s:16:"2018/10/a3-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (374, 163, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (375, 163, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (376, 167, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (377, 167, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (378, 168, '_edit_lock', '1539155387:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (379, 168, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (380, 169, '_wp_attached_file', '2018/10/a1-6.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (381, 169, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:635;s:4:"file";s:16:"2018/10/a1-6.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (382, 170, '_wp_attached_file', '2018/10/a2-4.jpg');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (383, 170, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:356;s:6:"height";i:632;s:4:"file";s:16:"2018/10/a2-4.jpg";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (384, 171, '_wp_attached_file', '2018/10/a3-2.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (385, 171, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:364;s:6:"height";i:633;s:4:"file";s:16:"2018/10/a3-2.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (388, 168, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (389, 168, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (390, 172, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (391, 172, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (394, 173, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (395, 173, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (396, 174, '_edit_lock', '1539319534:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (397, 174, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (398, 175, '_wp_attached_file', '2018/10/a1-1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (399, 175, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:359;s:6:"height";i:630;s:4:"file";s:16:"2018/10/a1-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (400, 176, '_wp_attached_file', '2018/10/a2-4.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (401, 176, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:362;s:6:"height";i:632;s:4:"file";s:16:"2018/10/a2-4.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (402, 177, '_wp_attached_file', '2018/10/3-1.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (403, 177, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:267;s:6:"height";i:469;s:4:"file";s:15:"2018/10/3-1.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (404, 178, '_wp_attached_file', '2018/10/4.png');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (405, 178, '_wp_attachment_metadata', 'a:4:{s:5:"width";i:361;s:6:"height";i:633;s:4:"file";s:13:"2018/10/4.png";s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (408, 174, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (409, 174, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (410, 179, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (411, 179, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (412, 180, '_edit_lock', '1539156034:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (413, 180, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (416, 180, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (417, 180, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (418, 181, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (419, 181, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (422, 183, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (423, 183, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (426, 184, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (427, 184, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (428, 185, '_edit_lock', '1539156946:3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (429, 185, '_edit_last', '3');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (432, 185, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (433, 185, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (434, 186, 'thumb_img', '');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (435, 186, '_thumb_img', 'field_5bbc14d28457a');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (436, 187, '_edit_lock', '1539339039:1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (437, 187, '_edit_last', '1');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (474, 187, '_wp_trash_meta_status', 'publish');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (475, 187, '_wp_trash_meta_time', '1539653604');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (476, 187, '_wp_desired_post_slug', 'huong-dan-test');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (477, 95, '_wp_trash_meta_status', 'publish');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (478, 95, '_wp_trash_meta_time', '1539653644');
INSERT INTO wp_postmeta (meta_id, post_id, meta_key, meta_value) VALUES (479, 95, '_wp_desired_post_slug', 'vuon-mat-trang');
CREATE TABLE wp_posts
(
    ID bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    post_author bigint(20) unsigned DEFAULT '0' NOT NULL,
    post_date datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    post_date_gmt datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    post_content longtext NOT NULL,
    post_title text NOT NULL,
    post_excerpt text NOT NULL,
    post_status varchar(20) DEFAULT 'publish' NOT NULL,
    comment_status varchar(20) DEFAULT 'open' NOT NULL,
    ping_status varchar(20) DEFAULT 'open' NOT NULL,
    post_password varchar(255) DEFAULT '' NOT NULL,
    post_name varchar(200) DEFAULT '' NOT NULL,
    to_ping text NOT NULL,
    pinged text NOT NULL,
    post_modified datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    post_modified_gmt datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    post_content_filtered longtext NOT NULL,
    post_parent bigint(20) unsigned DEFAULT '0' NOT NULL,
    guid varchar(255) DEFAULT '' NOT NULL,
    menu_order int(11) DEFAULT '0' NOT NULL,
    post_type varchar(20) DEFAULT 'post' NOT NULL,
    post_mime_type varchar(100) DEFAULT '' NOT NULL,
    comment_count bigint(20) DEFAULT '0' NOT NULL
);
CREATE INDEX post_author ON wp_posts (post_author);
CREATE INDEX post_name ON wp_posts (post_name);
CREATE INDEX post_parent ON wp_posts (post_parent);
CREATE INDEX type_status_date ON wp_posts (post_type, post_status, post_date, ID);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (48, 3, '2018-10-09 02:23:28', '2018-10-09 02:23:28', '<span style="font-weight: 400;">Bước 1: Tại màn hình chính chọn nhiệm vụ.</span>

[Ảnh 1]

<span style="font-weight: 400;">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</span>

[Ảnh][Ảnh]', 'Hướng dẫn MISSION', '', 'publish', 'open', 'open', '', 'huong-dan-mission', '', '', '2018-10-09 02:23:28', '2018-10-09 02:23:28', '', 0, 'http://yume100.vn/?p=45', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (49, 3, '2018-10-09 02:23:28', '2018-10-09 02:23:28', '<span style="font-weight: 400;">Bước 1: Tại màn hình chính chọn nhiệm vụ.</span>

[Ảnh 1]

<span style="font-weight: 400;">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</span>

[Ảnh][Ảnh]', 'Hướng dẫn MISSION', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2018-10-09 02:23:28', '2018-10-09 02:23:28', '', 45, 'http://yume100.vn/2018/10/09/45-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (50, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Thumb image', 'thumb-image', 'publish', 'closed', 'closed', '', 'group_5bbc0ffd9e19b', '', '', '2018-10-09 03:26:15', '2018-10-09 03:26:15', '', 0, 'http://yume100.vn/?post_type=acf-field-group&#038;p=41', 0, 'acf-field-group', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (51, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:6:"medium";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'thumb img', 'thumb_img', 'publish', 'closed', 'closed', '', 'field_5bbc105b34c34', '', '', '2018-10-09 02:20:44', '2018-10-09 02:20:44', '', 41, 'http://yume100.vn/?post_type=acf-field&p=43', 0, 'acf-field', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (52, 1, '2018-10-09 02:20:44', '2018-10-09 02:20:44', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', '', '', 'publish', 'closed', 'closed', '', 'field_5bbc107734c35', '', '', '2018-10-09 02:20:44', '2018-10-09 02:20:44', '', 41, 'http://yume100.vn/?post_type=acf-field&p=44', 1, 'acf-field', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (53, 3, '2018-10-09 02:19:15', '2018-10-09 02:19:15', '<b>Bước 1: </b><span style="font-weight: 400;">Khi bạn đạt rank 5. Tại màn hình chính chọn “</span><b>THỬ THÁCH ĐIỂM</b><span style="font-weight: 400;">”</span>

[Ảnh 1]

<b>Bước 2: </b><span style="font-weight: 400;">Click vào</span><b> “THỬ SỨC”</b>

[Ảnh 2]

<b>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</b>

[Ảnh 3]', 'Hướng dẫn thử thách điểm.', '', 'publish', 'open', 'open', '', 'huong-dan-thu-thach-diem', '', '', '2018-10-09 02:19:15', '2018-10-09 02:19:15', '', 0, 'http://yume100.vn/?p=38', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (55, 3, '2018-10-09 02:56:49', '2018-10-09 02:56:49', '<strong>Bước 1</strong>: <span style="font-weight: 400;">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”

<strong>Bước 2</strong>: <span style="font-weight: 400;">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”

<strong>Bước 3</strong>: <span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style="font-weight: 400;">mà bạn muốn chơi.</span>

&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'publish', 'open', 'open', '', 'huong-dan-vuon-mat-trang', '', '', '2018-10-09 03:08:26', '2018-10-09 03:08:26', '', 0, 'http://yume100.vn/?p=55', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (80, 3, '2018-10-09 02:56:49', '2018-10-09 02:56:49', '<b>Bước 1: </b><span style="font-weight: 400;">Tại màn hình chính chọn</span><b> “Truyện”</b>

<b>Bước 2: </b><span style="font-weight: 400;">Tại bản đồ thể giới chọn</span><b> “Vườn mặt trăng”</b>

<b>Bước 3: </b><span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style="font-weight: 400;">mà bạn muốn chơi. </span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 02:56:49', '2018-10-09 02:56:49', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (81, 3, '2018-10-09 02:57:59', '2018-10-09 02:57:59', 'Chào các bạn ,

Để giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.

Phần I : Lập tài khoản Fuji Game:

Những lợi ích khi bạn có tài khoản Fuji Game :
- Lưu trữ dữ liệu trong game của bạn

- Dễ dàng quản lý số Fcoin của tài khoản

- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game

Ngoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :

- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn

- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn

&nbsp;

Bước 1: Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản

Bước 2: Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.

Bước 3: Nhập mã bảo vệ.... ...và đánh dấu chọn mục "Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản", nhấp chọn nút "Đăng ký" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:

Bước 4: Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.

Bước 5: Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!

&nbsp;

Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.

&nbsp;

Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.

&nbsp;

&nbsp;', 'Hướng dẫn đăng ký tài khoản Fuji', '', 'publish', 'open', 'open', '', 'huong-dan-dang-ky-tai-khoan-fuji', '', '', '2018-10-09 02:57:59', '2018-10-09 02:57:59', '', 0, 'http://yume100.vn/?p=81', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (82, 3, '2018-10-09 02:57:59', '2018-10-09 02:57:59', 'Chào các bạn ,

Để giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.

Phần I : Lập tài khoản Fuji Game:

Những lợi ích khi bạn có tài khoản Fuji Game :
- Lưu trữ dữ liệu trong game của bạn

- Dễ dàng quản lý số Fcoin của tài khoản

- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game

Ngoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :

- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn

- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn

&nbsp;

Bước 1: Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản

Bước 2: Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.

Bước 3: Nhập mã bảo vệ.... ...và đánh dấu chọn mục "Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản", nhấp chọn nút "Đăng ký" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:

Bước 4: Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.

Bước 5: Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!

&nbsp;

Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.

&nbsp;

Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.

&nbsp;

&nbsp;', 'Hướng dẫn đăng ký tài khoản Fuji', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2018-10-09 02:57:59', '2018-10-09 02:57:59', '', 81, 'http://yume100.vn/2018/10/09/81-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (86, 1, '2018-10-09 03:01:27', '2018-10-09 03:01:27', '<b>Bước 1: </b><span style="font-weight: 400;">Tại màn hình chính chọn</span><b> “Truyện”</b>

<b>Bước 2: </b><span style="font-weight: 400;">Tại bản đồ thể giới chọn</span><b> “Vườn mặt trăng”</b>

<b>Bước 3: </b><span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style="font-weight: 400;">mà bạn muốn chơi.</span>

<b>Bước 4: </b><span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span><b> “Vườn mặt trăng” </b><span style="font-weight: 400;">mà bạn muốn chơi.</span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:01:27', '2018-10-09 03:01:27', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (87, 1, '2018-10-09 03:08:12', '2018-10-09 03:08:12', '<p><strong>Bước 1</strong>: <span style="font-weight: 400;">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”</p>\\n

<p><strong>Bước 2</strong>: <span style="font-weight: 400;">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”</p>

<p><strong>Bước 3</strong>: <span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style="font-weight: 400;">mà bạn muốn chơi.</span></p>

&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-autosave-v1', '', '', '2018-10-09 03:08:12', '2018-10-09 03:08:12', '', 55, 'http://yume100.vn/2018/10/09/55-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (88, 1, '2018-10-09 03:05:10', '2018-10-09 03:05:10', 'Bước 1: <span style="font-weight: 400;">Tại màn hình chính chọn</span> “Truyện”

Bước 2: <span style="font-weight: 400;">Tại bản đồ thể giới chọn</span> “Vườn sao băng”

Bước 3: <span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span> “Vườn mặt trăng” <span style="font-weight: 400;">mà bạn muốn chơi.</span>

Bước 4: <span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span> “Vườn mặt trăng” <span style="font-weight: 400;">mà bạn muốn chơi.</span>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:05:10', '2018-10-09 03:05:10', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (89, 1, '2018-10-09 03:08:26', '2018-10-09 03:08:26', '<p><strong>Bước 1</strong>: <span style="font-weight: 400;">Tại màn hình chính chọn</span> “<strong>Truyện</strong>”</p>\\n

<p><strong>Bước 2</strong>: <span style="font-weight: 400;">Tại bản đồ thể giới chọn</span> “<strong>Vườn sao băng</strong>”</p>

<p><strong>Bước 3</strong>: <span style="font-weight: 400;">Sau đó bạn chọn vào sự kiện trong</span> “<strong>Vườn mặt trăng</strong>” <span style="font-weight: 400;">mà bạn muốn chơi.</span></p>

&nbsp;', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2018-10-09 03:08:26', '2018-10-09 03:08:26', '', 55, 'http://yume100.vn/2018/10/09/55-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (92, 1, '2018-10-09 03:26:43', '2018-10-09 03:26:43', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-10-09 03:26:43', '2018-10-09 03:26:43', '', 91, 'http://yume100.vn/wp-content/uploads/2018/10/logo.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (95, 3, '2018-10-09 03:48:00', '2018-10-09 03:48:00', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”.</strong>

<img class=" wp-image-101 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png" alt="" width="132" height="393" />

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'trash', 'open', 'open', '', 'vuon-mat-trang__trashed', '', '', '2018-10-16 01:34:04', '2018-10-16 01:34:04', '', 0, 'http://yume100.vn/?p=95', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (96, 3, '2018-10-09 03:47:49', '2018-10-09 03:47:49', '', '30742208_1664479413607836_2593000755184124530_n', '', 'inherit', 'open', 'closed', '', '30742208_1664479413607836_2593000755184124530_n', '', '', '2018-10-09 03:47:49', '2018-10-09 03:47:49', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (97, 3, '2018-10-09 03:48:00', '2018-10-09 03:48:00', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:48:00', '2018-10-09 03:48:00', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (98, 3, '2018-10-09 03:51:33', '2018-10-09 03:51:33', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>

<img class="size-full wp-image-101 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png" alt="" width="378" height="1126" />

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-autosave-v1', '', '', '2018-10-09 03:51:33', '2018-10-09 03:51:33', '', 95, 'http://yume100.vn/2018/10/09/95-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (99, 3, '2018-10-09 03:49:41', '2018-10-09 03:49:41', '', 'pri_00023_full', '', 'inherit', 'open', 'closed', '', 'pri_00023_full', '', '', '2018-10-09 03:49:41', '2018-10-09 03:49:41', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (100, 3, '2018-10-09 03:50:17', '2018-10-09 03:50:17', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:50:17', '2018-10-09 03:50:17', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (101, 3, '2018-10-09 03:50:56', '2018-10-09 03:50:56', '', 'pri_00137_full', '', 'inherit', 'open', 'closed', '', 'pri_00137_full', '', '', '2018-10-09 03:50:56', '2018-10-09 03:50:56', '', 95, 'http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (102, 3, '2018-10-09 03:51:47', '2018-10-09 03:51:47', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong>

<img class=" wp-image-101 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png" alt="" width="132" height="393" />

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 03:51:47', '2018-10-09 03:51:47', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (105, 1, '2018-10-09 06:10:55', '2018-10-09 06:10:55', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng” Bước 3: Sau đó bạn chọn vào sự kiện trong “Vườn mặt trăng” mà bạn muốn chơi.</strong>

<img class=" wp-image-101 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png" alt="" width="132" height="393" />

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 06:10:55', '2018-10-09 06:10:55', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (106, 1, '2018-10-09 06:11:38', '2018-10-09 06:11:38', '<strong>Hướng dẫn “Vườn mặt trăng”</strong>

<strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong>

<strong><img class="wp-image-99 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00023_full.png" alt="" width="201" height="452" /></strong>

<strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”.</strong>

<img class=" wp-image-101 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/pri_00137_full.png" alt="" width="132" height="393" />

<strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.

<strong> </strong>', 'VUON MAT TRANG', '', 'inherit', 'closed', 'closed', '', '95-revision-v1', '', '', '2018-10-09 06:11:38', '2018-10-09 06:11:38', '', 95, 'http://yume100.vn/2018/10/09/95-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (108, 3, '2018-10-09 06:52:04', '2018-10-09 06:52:04', 'Chào các bạn,

- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất, team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.

<strong>Phần I :</strong> Lập tài khoản Fuji Game:

Những lợi ích khi bạn có tài khoản Fuji Game:
- Lưu trữ dữ liệu trong game của bạn.

- Dễ dàng quản lý số Fcoin của tài khoản.

- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.

Ngoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :

- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.

- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.

<span style="font-weight: 400;"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>

<img class="size-full wp-image-109 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1.jpg" alt="" width="266" height="426" />

<span style="font-weight: 400;"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>

<img class="size-full wp-image-110 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/2.jpg" alt="" width="506" height="377" />

<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục "Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản", nhấp chọn nút "Đăng ký" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:

<img class="size-full wp-image-111 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/3.jpg" alt="" width="596" height="302" />

<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.

<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!

<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>

<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'publish', 'open', 'open', '', 'huong-dan-dang-ky-tai-khoan', '', '', '2018-10-09 06:55:30', '2018-10-09 06:55:30', '', 0, 'http://yume100.vn/?p=108', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (109, 3, '2018-10-09 06:49:08', '2018-10-09 06:49:08', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-10-09 06:49:08', '2018-10-09 06:49:08', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (110, 3, '2018-10-09 06:50:19', '2018-10-09 06:50:19', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-10-09 06:50:19', '2018-10-09 06:50:19', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (111, 3, '2018-10-09 06:51:06', '2018-10-09 06:51:06', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-10-09 06:51:06', '2018-10-09 06:51:06', '', 108, 'http://yume100.vn/wp-content/uploads/2018/10/3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (112, 3, '2018-10-09 06:52:04', '2018-10-09 06:52:04', 'Chào các bạn,

- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất , team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.

<strong>Phần I :</strong> Lập tài khoản Fuji Game:

Những lợi ích khi bạn có tài khoản Fuji Game :
- Lưu trữ dữ liệu trong game của bạn.

- Dễ dàng quản lý số Fcoin của tài khoản.

- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.

Ngoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :

- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.

- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.

<span style="font-weight: 400;"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>

<img class="size-full wp-image-109 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1.jpg" alt="" width="266" height="426" />

<span style="font-weight: 400;"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>

<img class="size-full wp-image-110 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/2.jpg" alt="" width="506" height="377" />

<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục "Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản", nhấp chọn nút "Đăng ký" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:

<img class="size-full wp-image-111 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/3.jpg" alt="" width="596" height="302" />

<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.

<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!

<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>

<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-10-09 06:52:04', '2018-10-09 06:52:04', '', 108, 'http://yume100.vn/2018/10/09/108-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (113, 3, '2018-10-09 06:55:30', '2018-10-09 06:55:30', 'Chào các bạn,

- Để giúp các bạn có thể trải nghiệm game một cách tốt nhất, team Yume100 xin được gửi đến các bạn một số hướng dẫn cơ bản trước khi bắt đầu chơi game.

<strong>Phần I :</strong> Lập tài khoản Fuji Game:

Những lợi ích khi bạn có tài khoản Fuji Game:
- Lưu trữ dữ liệu trong game của bạn.

- Dễ dàng quản lý số Fcoin của tài khoản.

- Nhận gift code khủng chỉ dành riêng cho tài khoản Fuji Game.

Ngoài ra, khi bạn có tài khoản Fuji Game, là bạn cũng đang giúp cho đội ngũ Admin :

- Hỗ trợ các vấn đề trong game của bạn một cách dễ dàng hơn.

- Tiện lợi hơn trong việc trao thưởng quà sự kiện cho các bạn.

<span style="font-weight: 400;"><strong>Bước 1:</strong> Truy cập vào trang chủ của Fuji Game tại địa chỉ http://fujigame.vn/homepage/ . Click vào liên kết Đăng ký trong ô Đăng nhập để vào chức năng đăng ký tài khoản.</span>

<img class="size-full wp-image-109 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1.jpg" alt="" width="266" height="426" />

<span style="font-weight: 400;"><strong>Bước 2:</strong> Khai báo đầy đủ các thông tin ở phần bắt buộc, bao gồm: Tên đăng nhập, mật khẩu và xác nhận mật khẩu, địa chỉ email.</span>

<img class="size-full wp-image-110 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/2.jpg" alt="" width="506" height="377" />

<strong>Bước 3:</strong> Nhập mã bảo vệ.... ...và đánh dấu chọn mục "Tôi đồng ý chấp thuận các điều khoản khi đăng ký tài khoản", nhấp chọn nút "Đăng ký" để tiến hành đăng ký tài khoản và sẽ hiện ra thông báo như sau:

<img class="size-full wp-image-111 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/3.jpg" alt="" width="596" height="302" />

<strong>Bước 4:</strong> Sau ít phút, bạn sẽ nhận được email từ hệ thống thông báo kích hoạt tài khoản. Hãy nhấp vào liên kết trong mail để kích hoạt tài khoản của mình.

<strong>Bước 5:</strong> Chúc mừng bạn đã đăng ký thành công tài khoản Fuji Game!

<em>Xong rồi ! Bắt đầu trải nghiệm Yume 100 ngay nào các bạn.</em>

<em>Thay mặt Team Yume 100, mình xin được chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kì sau.</em>', 'Hướng dẫn đăng ký tài khoản', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2018-10-09 06:55:30', '2018-10-09 06:55:30', '', 108, 'http://yume100.vn/2018/10/09/108-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (114, 3, '2018-10-09 07:04:30', '2018-10-09 07:04:30', '- Trong <strong>Yume100</strong>, Thạch Anh là đơn vị tài nguyên trung gian trong các giao dịch. Sở hữu Thạch Anh cho phép bạn có thể dễ dàng Hồi phục thể lực, Quay Gacha để nhận những hoàng tử cấp hiếm cao... để sở hữu Thạch Anh các bạn có thể lựa chọn một trong các phương án mà FujiGame cung cấp.

<img class="wp-image-115 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg" alt="" width="402" height="469" />

<span style="font-weight: 400;">- Thanh toán qua Appstore / Google Play.</span>

<span style="font-weight: 400;">- </span><span style="font-weight: 400;">Thanh toán bằng </span><b>Fcoin.</b>

Trong đó, việc thanh toán bằng <strong>Fcoin</strong> vô cùng dễ dàng, đồng thời giúp giúp các bạn dễ dàng quản lý số dư tài khoản của mình.
<p style="text-align: center;"><em>"Fcoin là đơn vị tài nguyên trung gian giúp bạn sử dụng và trải nghiệm tất cả các sản phẩm &amp; dịch vụ mà FujiGame cung cấp!"</em></p>
<em> </em>Để có Fcoin, các bạn có thể thực hiện theo 1 trong các cách sau:
<h3><strong>1. FCOIN MIỄN PHÍ</strong></h3>
Truy cập và theo dõi các hoạt động, sự kiện của <strong>FujiGame</strong> trên fanpage chính thức <a href="https://www.facebook.com/fujigame.vn">https://www.facebook.com/fujigame.vn</a>
<h3><strong>2. NẠP FCOIN</strong></h3>
<em><strong>Bước 1:</strong> </em>Truy cập <a href="https://fujigame.vn/">https://fujigame.vn</a>

<em><strong>Bước 2:</strong> </em>Đăng nhập bằng tài khoản của bạn.

<img class="size-full wp-image-116 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/2.png" alt="" width="265" height="447" />

<em><strong>Bước 3:</strong> </em>Lựa chọn một trong các hình thức nạp tiền phù hợp.

<strong>- Nạp tiền qua ngân hàng.</strong>

<strong>- Nạp tiền qua tin nhắn SMS.</strong>

<strong>- Nạp tiền qua thẻ cào Appota Card.</strong>

<img class="alignnone size-full wp-image-117" src="http://yume100.vn/wp-content/uploads/2018/10/3.png" alt="" width="847" height="341" />
<p style="text-align: center;"><strong>Chúc các bạn chơi game vui vẻ!</strong></p>
<p style="text-align: right;"></p>
<strong> </strong>', 'Hướng dẫn nạp tiền.', '', 'publish', 'open', 'open', '', 'huong-dan-nap-tien', '', '', '2018-10-09 07:04:30', '2018-10-09 07:04:30', '', 0, 'http://yume100.vn/?p=114', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (115, 3, '2018-10-09 06:59:28', '2018-10-09 06:59:28', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2018-10-09 06:59:28', '2018-10-09 06:59:28', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (116, 3, '2018-10-09 07:02:26', '2018-10-09 07:02:26', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-10-09 07:02:26', '2018-10-09 07:02:26', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (117, 3, '2018-10-09 07:03:35', '2018-10-09 07:03:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-10-09 07:03:35', '2018-10-09 07:03:35', '', 114, 'http://yume100.vn/wp-content/uploads/2018/10/3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (118, 3, '2018-10-09 07:04:30', '2018-10-09 07:04:30', '- Trong <strong>Yume100</strong>, Thạch Anh là đơn vị tài nguyên trung gian trong các giao dịch. Sở hữu Thạch Anh cho phép bạn có thể dễ dàng Hồi phục thể lực, Quay Gacha để nhận những hoàng tử cấp hiếm cao... để sở hữu Thạch Anh các bạn có thể lựa chọn một trong các phương án mà FujiGame cung cấp.

<img class="wp-image-115 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1-1.jpg" alt="" width="402" height="469" />

<span style="font-weight: 400;">- Thanh toán qua Appstore / Google Play.</span>

<span style="font-weight: 400;">- </span><span style="font-weight: 400;">Thanh toán bằng </span><b>Fcoin.</b>

Trong đó, việc thanh toán bằng <strong>Fcoin</strong> vô cùng dễ dàng, đồng thời giúp giúp các bạn dễ dàng quản lý số dư tài khoản của mình.
<p style="text-align: center;"><em>"Fcoin là đơn vị tài nguyên trung gian giúp bạn sử dụng và trải nghiệm tất cả các sản phẩm &amp; dịch vụ mà FujiGame cung cấp!"</em></p>
<em> </em>Để có Fcoin, các bạn có thể thực hiện theo 1 trong các cách sau:
<h3><strong>1. FCOIN MIỄN PHÍ</strong></h3>
Truy cập và theo dõi các hoạt động, sự kiện của <strong>FujiGame</strong> trên fanpage chính thức <a href="https://www.facebook.com/fujigame.vn">https://www.facebook.com/fujigame.vn</a>
<h3><strong>2. NẠP FCOIN</strong></h3>
<em><strong>Bước 1:</strong> </em>Truy cập <a href="https://fujigame.vn/">https://fujigame.vn</a>

<em><strong>Bước 2:</strong> </em>Đăng nhập bằng tài khoản của bạn.

<img class="size-full wp-image-116 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/2.png" alt="" width="265" height="447" />

<em><strong>Bước 3:</strong> </em>Lựa chọn một trong các hình thức nạp tiền phù hợp.

<strong>- Nạp tiền qua ngân hàng.</strong>

<strong>- Nạp tiền qua tin nhắn SMS.</strong>

<strong>- Nạp tiền qua thẻ cào Appota Card.</strong>

<img class="alignnone size-full wp-image-117" src="http://yume100.vn/wp-content/uploads/2018/10/3.png" alt="" width="847" height="341" />
<p style="text-align: center;"><strong>Chúc các bạn chơi game vui vẻ!</strong></p>
<p style="text-align: right;"></p>
<strong> </strong>', 'Hướng dẫn nạp tiền.', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2018-10-09 07:04:30', '2018-10-09 07:04:30', '', 114, 'http://yume100.vn/2018/10/09/114-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (119, 3, '2018-10-09 07:11:52', '2018-10-09 07:11:52', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

&nbsp;

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'publish', 'open', 'open', '', 'huong-dan-lien-ket-tai-khoan', '', '', '2018-10-10 07:22:21', '2018-10-10 07:22:21', '', 0, 'http://yume100.vn/?p=119', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (120, 3, '2018-10-09 07:11:52', '2018-10-09 07:11:52', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

<span style="font-weight: 400;">[Ảnh1]</span>

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 07:11:52', '2018-10-09 07:11:52', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (124, 3, '2018-10-09 10:29:25', '2018-10-09 10:29:25', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

<img class="alignnone size-full wp-image-96 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg" alt="" width="410" height="520" />

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:29:25', '2018-10-09 10:29:25', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (125, 3, '2018-10-09 10:30:11', '2018-10-09 10:30:11', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

<img class="size-full wp-image-96 alignleft" src="http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg" alt="" width="410" height="520" />

&nbsp;

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:30:11', '2018-10-09 10:30:11', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (126, 3, '2018-10-09 10:30:31', '2018-10-09 10:30:31', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

<img class="size-full wp-image-96 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/30742208_1664479413607836_2593000755184124530_n.jpg" alt="" width="410" height="520" />

&nbsp;

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-09 10:30:31', '2018-10-09 10:30:31', '', 119, 'http://yume100.vn/2018/10/09/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (128, 3, '2018-10-10 06:16:37', '2018-10-10 06:16:37', '<b><i>- </i></b>Từ Màn hình chính, chọn nút Gacha để mở giao diện quay gacha.

<img class="size-full wp-image-129 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1.png" alt="" width="359" height="630" />

Có 3 loại Gacha:
- Gacha Hoàng Tử: Quay bằng Thạch Anh, 1 lần 5 đá. 10 lần 50 đá, chắc chắn sẽ đc 1 hoàng tử 4 sao, khi quay gacha sẽ nhận được các hoàng tử, các loại tiên và goldie.

<img class="size-full wp-image-130 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2.png" alt="" width="363" height="633" />

- Gacha Sự kiện: Gacha này chỉ mở theo sự kiện, trong các sự kiện đặc biệt có Gacha đặc biệt sẽ mở ở phần này. Khi quay gacha này sẽ nhận được Hoàng tử sự kiện, các loại tiên và goldie…

<img class="size-full wp-image-131 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3.png" alt="" width="360" height="634" />

- Gacha Bạn bè: Sử dụng xu bạn bè để quay Gacha, quay gacha loại này sẽ nhận được rất nhiều Goldie và các loại tiên, cùng với các hoàng tử 2*.

<img class="size-full wp-image-132 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a4.png" alt="" width="360" height="634" />
<h3 style="text-align: center;"><strong> Chúc các bạn chơi game vui vẻ!</strong></h3>', 'Hướng dẫn quay gacha', '', 'publish', 'open', 'open', '', 'huong-dan-quay-gacha', '', '', '2018-10-10 06:16:37', '2018-10-10 06:16:37', '', 0, 'http://yume100.vn/?p=128', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (129, 3, '2018-10-10 06:13:51', '2018-10-10 06:13:51', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2018-10-10 06:13:51', '2018-10-10 06:13:51', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (130, 3, '2018-10-10 06:14:41', '2018-10-10 06:14:41', '
', 'a2', '', 'inherit', 'open', 'closed', '', 'a2', '', '', '2018-10-10 06:14:41', '2018-10-10 06:14:41', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (131, 3, '2018-10-10 06:15:22', '2018-10-10 06:15:22', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3', '', '', '2018-10-10 06:15:22', '2018-10-10 06:15:22', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (132, 3, '2018-10-10 06:15:54', '2018-10-10 06:15:54', '', 'a4', '', 'inherit', 'open', 'closed', '', 'a4', '', '', '2018-10-10 06:15:54', '2018-10-10 06:15:54', '', 128, 'http://yume100.vn/wp-content/uploads/2018/10/a4.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (133, 3, '2018-10-10 06:16:37', '2018-10-10 06:16:37', '<b><i>- </i></b>Từ Màn hình chính, chọn nút Gacha để mở giao diện quay gacha.

<img class="size-full wp-image-129 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/1.png" alt="" width="359" height="630" />

Có 3 loại Gacha:
- Gacha Hoàng Tử: Quay bằng Thạch Anh, 1 lần 5 đá. 10 lần 50 đá, chắc chắn sẽ đc 1 hoàng tử 4 sao, khi quay gacha sẽ nhận được các hoàng tử, các loại tiên và goldie.

<img class="size-full wp-image-130 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2.png" alt="" width="363" height="633" />

- Gacha Sự kiện: Gacha này chỉ mở theo sự kiện, trong các sự kiện đặc biệt có Gacha đặc biệt sẽ mở ở phần này. Khi quay gacha này sẽ nhận được Hoàng tử sự kiện, các loại tiên và goldie…

<img class="size-full wp-image-131 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3.png" alt="" width="360" height="634" />

- Gacha Bạn bè: Sử dụng xu bạn bè để quay Gacha, quay gacha loại này sẽ nhận được rất nhiều Goldie và các loại tiên, cùng với các hoàng tử 2*.

<img class="size-full wp-image-132 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a4.png" alt="" width="360" height="634" />
<h3 style="text-align: center;"><strong> Chúc các bạn chơi game vui vẻ!</strong></h3>', 'Hướng dẫn quay gacha', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2018-10-10 06:16:37', '2018-10-10 06:16:37', '', 128, 'http://yume100.vn/2018/10/10/128-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (134, 3, '2018-10-10 06:24:33', '2018-10-10 06:24:33', '<h3 style="text-align: center;"><em><strong>Bước 1:</strong> </em>Tại màn hình chính click vào “Cửa hàng”</h3>
<img class="size-full wp-image-135 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1.png" alt="" width="365" height="637" />
<h3 style="text-align: center;"><em><strong>Bước 2:</strong></em> chọn vật phẩm mà bạn muốn mua</h3>
<img class=" wp-image-136 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-1.png" alt="" width="353" height="618" />
<h3 style="text-align: center;"><em><strong>Bước 3: </strong></em>Chọn số lượng cần mua sau có click vào “<strong>MUA HÀNG</strong>”</h3>
<img class=" wp-image-137 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3.jpg" alt="" width="355" height="629" />

<strong>Lưu ý: </strong>Các bạn có thể vào phần xem video để nhận thưởng “<strong>THẠCH ANH</strong>” hoặc “<strong>VÀNG</strong>”

<img class="size-full wp-image-138 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a5.jpg" alt="" width="359" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cash Shop”', '', 'publish', 'open', 'open', '', 'huong-dan-cash-shop', '', '', '2018-10-10 06:24:33', '2018-10-10 06:24:33', '', 0, 'http://yume100.vn/?p=134', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (135, 3, '2018-10-10 06:19:08', '2018-10-10 06:19:08', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1', '', '', '2018-10-10 06:19:08', '2018-10-10 06:19:08', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (136, 3, '2018-10-10 06:20:46', '2018-10-10 06:20:46', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-2', '', '', '2018-10-10 06:20:46', '2018-10-10 06:20:46', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a2-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (137, 3, '2018-10-10 06:22:24', '2018-10-10 06:22:24', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-2', '', '', '2018-10-10 06:22:24', '2018-10-10 06:22:24', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (138, 3, '2018-10-10 06:24:02', '2018-10-10 06:24:02', '', 'a5', '', 'inherit', 'open', 'closed', '', 'a5', '', '', '2018-10-10 06:24:02', '2018-10-10 06:24:02', '', 134, 'http://yume100.vn/wp-content/uploads/2018/10/a5.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (139, 3, '2018-10-10 06:24:33', '2018-10-10 06:24:33', '<h3 style="text-align: center;"><em><strong>Bước 1:</strong> </em>Tại màn hình chính click vào “Cửa hàng”</h3>
<img class="size-full wp-image-135 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1.png" alt="" width="365" height="637" />
<h3 style="text-align: center;"><em><strong>Bước 2:</strong></em> chọn vật phẩm mà bạn muốn mua</h3>
<img class=" wp-image-136 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-1.png" alt="" width="353" height="618" />
<h3 style="text-align: center;"><em><strong>Bước 3: </strong></em>Chọn số lượng cần mua sau có click vào “<strong>MUA HÀNG</strong>”</h3>
<img class=" wp-image-137 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3.jpg" alt="" width="355" height="629" />

<strong>Lưu ý: </strong>Các bạn có thể vào phần xem video để nhận thưởng “<strong>THẠCH ANH</strong>” hoặc “<strong>VÀNG</strong>”

<img class="size-full wp-image-138 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a5.jpg" alt="" width="359" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cash Shop”', '', 'inherit', 'closed', 'closed', '', '134-revision-v1', '', '', '2018-10-10 06:24:33', '2018-10-10 06:24:33', '', 134, 'http://yume100.vn/2018/10/10/134-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (140, 3, '2018-10-10 06:31:14', '2018-10-10 06:31:14', '<h3 style="text-align: center;"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></h3>
<img class="size-full wp-image-141 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1.jpg" alt="" width="359" height="634" />
<h3 style="text-align: center;"><strong>Bước 2: Click vào “THỬ SỨC”</strong></h3>
<img class="size-full wp-image-142 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2.jpg" alt="" width="360" height="631" />
<h3 style="text-align: center;"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></h3>
<img class="size-full wp-image-143 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg" alt="" width="360" height="639" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'publish', 'open', 'open', '', 'huong-dan-thu-thach-diem-2', '', '', '2018-10-10 06:32:08', '2018-10-10 06:32:08', '', 0, 'http://yume100.vn/?p=140', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (141, 3, '2018-10-10 06:28:58', '2018-10-10 06:28:58', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-2', '', '', '2018-10-10 06:28:58', '2018-10-10 06:28:58', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (142, 3, '2018-10-10 06:29:40', '2018-10-10 06:29:40', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-3', '', '', '2018-10-10 06:29:40', '2018-10-10 06:29:40', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (143, 3, '2018-10-10 06:30:10', '2018-10-10 06:30:10', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-3', '', '', '2018-10-10 06:30:10', '2018-10-10 06:30:10', '', 140, 'http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (144, 3, '2018-10-10 06:31:14', '2018-10-10 06:31:14', '<p style="text-align: center;"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></p>
<img class="size-full wp-image-141 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1.jpg" alt="" width="359" height="634" />
<p style="text-align: center;"><strong>Bước 2: Click vào “THỬ SỨC”</strong></p>
<img class="size-full wp-image-142 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2.jpg" alt="" width="360" height="631" />
<p style="text-align: center;"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></p>
<img class="size-full wp-image-143 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg" alt="" width="360" height="639" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-10-10 06:31:14', '2018-10-10 06:31:14', '', 140, 'http://yume100.vn/2018/10/10/140-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (145, 3, '2018-10-10 06:32:08', '2018-10-10 06:32:08', '<h3 style="text-align: center;"><strong>Bước 1: Khi bạn đạt rank 5. Tại màn hình chính chọn “THỬ THÁCH ĐIỂM”</strong></h3>
<img class="size-full wp-image-141 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1.jpg" alt="" width="359" height="634" />
<h3 style="text-align: center;"><strong>Bước 2: Click vào “THỬ SỨC”</strong></h3>
<img class="size-full wp-image-142 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2.jpg" alt="" width="360" height="631" />
<h3 style="text-align: center;"><strong>Bước 3: 1 trong 3 thử thách mà bạn muốn thử sức và bắt đầu chiến thôi…</strong></h3>
<img class="size-full wp-image-143 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-1.jpg" alt="" width="360" height="639" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn thử thách điểm.', '', 'inherit', 'closed', 'closed', '', '140-revision-v1', '', '', '2018-10-10 06:32:08', '2018-10-10 06:32:08', '', 140, 'http://yume100.vn/2018/10/10/140-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (146, 3, '2018-10-10 06:36:15', '2018-10-10 06:36:15', '<h3 style="text-align: center;">Bước 1: Tại màn hình chính chọn nhiệm vụ.</h3>
<img class="size-full wp-image-147 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg" alt="" width="358" height="631" />
<h4 style="text-align: center;">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</h4>
<img class="size-full wp-image-148 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg" alt="" width="358" height="631" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn MISSION', '', 'publish', 'open', 'open', '', 'huong-dan-mission-2', '', '', '2018-10-10 06:36:15', '2018-10-10 06:36:15', '', 0, 'http://yume100.vn/?p=146', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (147, 3, '2018-10-10 06:33:52', '2018-10-10 06:33:52', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-3', '', '', '2018-10-10 06:33:52', '2018-10-10 06:33:52', '', 146, 'http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (148, 3, '2018-10-10 06:35:21', '2018-10-10 06:35:21', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-4', '', '', '2018-10-10 06:35:21', '2018-10-10 06:35:21', '', 146, 'http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (149, 3, '2018-10-10 06:36:15', '2018-10-10 06:36:15', '<h3 style="text-align: center;">Bước 1: Tại màn hình chính chọn nhiệm vụ.</h3>
<img class="size-full wp-image-147 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.jpg" alt="" width="358" height="631" />
<h4 style="text-align: center;">Bước 2: Lựa chọn một trong 3 mục trong khung đỏ và hoàn thành các yêu cầu nhiệm vụ bên dưới để nhận thưởng.</h4>
<img class="size-full wp-image-148 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-1.jpg" alt="" width="358" height="631" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn MISSION', '', 'inherit', 'closed', 'closed', '', '146-revision-v1', '', '', '2018-10-10 06:36:15', '2018-10-10 06:36:15', '', 146, 'http://yume100.vn/2018/10/10/146-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (150, 3, '2018-10-10 06:40:33', '2018-10-10 06:40:33', '<h4 style="text-align: center;"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h4>
<p style="text-align: center;"><img class="size-full wp-image-151 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg" alt="" width="359" height="631" /></p>

<h4 style="text-align: center;"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h4>
<img class="wp-image-152 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-2.png" alt="" width="361" height="630" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'publish', 'open', 'open', '', 'huong-dan-tiec-chao-mung', '', '', '2018-10-10 06:41:02', '2018-10-10 06:41:02', '', 0, 'http://yume100.vn/?p=150', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (151, 3, '2018-10-10 06:38:32', '2018-10-10 06:38:32', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-4', '', '', '2018-10-10 06:38:32', '2018-10-10 06:38:32', '', 150, 'http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (152, 3, '2018-10-10 06:39:11', '2018-10-10 06:39:11', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-5', '', '', '2018-10-10 06:39:11', '2018-10-10 06:39:11', '', 150, 'http://yume100.vn/wp-content/uploads/2018/10/a2-2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (153, 3, '2018-10-10 06:40:33', '2018-10-10 06:40:33', '<h3 style="text-align: center;"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h3>
<p style="text-align: center;"><img class="size-full wp-image-151 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg" alt="" width="359" height="631" /></p>

<h3 style="text-align: center;"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h3>
<img class="wp-image-152 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-2.png" alt="" width="361" height="630" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2018-10-10 06:40:33', '2018-10-10 06:40:33', '', 150, 'http://yume100.vn/2018/10/10/150-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (154, 3, '2018-10-10 06:41:02', '2018-10-10 06:41:02', '<h4 style="text-align: center;"><strong>Bước 1 : Tại màn hình chính chọn “Tiệc chào mừng”</strong></h4>
<p style="text-align: center;"><img class="size-full wp-image-151 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-2.jpg" alt="" width="359" height="631" /></p>

<h4 style="text-align: center;"><strong>Bước 2: Chọn tiệc mà bạn được mời và nhận Xu thôi !!</strong></h4>
<img class="wp-image-152 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-2.png" alt="" width="361" height="630" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Tiệc chào mừng”', '', 'inherit', 'closed', 'closed', '', '150-revision-v1', '', '', '2018-10-10 06:41:02', '2018-10-10 06:41:02', '', 150, 'http://yume100.vn/2018/10/10/150-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (155, 3, '2018-10-10 06:48:00', '2018-10-10 06:48:00', '<h3 style="text-align: center;"><strong><em>Bước 1:</em> </strong>Khi đạt Rank 5 tại màn hình chính chọn<strong> “Cộng đồng”</strong></h3>
<img class="size-full wp-image-156 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg" alt="" width="365" height="637" />
<h3 style="text-align: center;"><strong><em>Bước 2:</em> </strong>Tại màn hình này. Bạn có thể tìm hiểu về cộng đồng là gì? Cũng như cách tham gia hay tạo 1 cộng đồng hoặc mời bạn bè vào cộng đồng của mình.</h3>
<img class="size-full wp-image-157 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-3.png" alt="" width="360" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cộng đồng”', '', 'publish', 'open', 'open', '', 'huong-dan-cong-dong', '', '', '2018-10-10 06:48:00', '2018-10-10 06:48:00', '', 0, 'http://yume100.vn/?p=155', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (156, 3, '2018-10-10 06:45:53', '2018-10-10 06:45:53', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-5', '', '', '2018-10-10 06:45:53', '2018-10-10 06:45:53', '', 155, 'http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (157, 3, '2018-10-10 06:46:51', '2018-10-10 06:46:51', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-6', '', '', '2018-10-10 06:46:51', '2018-10-10 06:46:51', '', 155, 'http://yume100.vn/wp-content/uploads/2018/10/a2-3.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (158, 3, '2018-10-10 06:48:00', '2018-10-10 06:48:00', '<h3 style="text-align: center;"><strong><em>Bước 1:</em> </strong>Khi đạt Rank 5 tại màn hình chính chọn<strong> “Cộng đồng”</strong></h3>
<img class="size-full wp-image-156 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-3.jpg" alt="" width="365" height="637" />
<h3 style="text-align: center;"><strong><em>Bước 2:</em> </strong>Tại màn hình này. Bạn có thể tìm hiểu về cộng đồng là gì? Cũng như cách tham gia hay tạo 1 cộng đồng hoặc mời bạn bè vào cộng đồng của mình.</h3>
<img class="size-full wp-image-157 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-3.png" alt="" width="360" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Cộng đồng”', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2018-10-10 06:48:00', '2018-10-10 06:48:00', '', 155, 'http://yume100.vn/2018/10/10/155-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (159, 3, '2018-10-10 06:51:41', '2018-10-10 06:51:41', '<h3 style="text-align: center;"><strong>Bước 1: </strong>sau khi nhận thưởng các bạn về màn hình chính và chọn hộp quà.</h3>
<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />
<h3 style="text-align: center;"><strong>Bước 2: </strong>Tại đây sẽ xuất hiện những phần thưởng mà bạn được nhận. Click vào ô nhận tất cả để nhận.</h3>
<img class="size-full wp-image-161 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg" alt="" width="364" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Nhận quà”', '', 'publish', 'open', 'open', '', 'huong-dan-nhan-qua', '', '', '2018-10-10 06:51:41', '2018-10-10 06:51:41', '', 0, 'http://yume100.vn/?p=159', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (160, 3, '2018-10-10 06:50:29', '2018-10-10 06:50:29', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-6', '', '', '2018-10-10 06:50:29', '2018-10-10 06:50:29', '', 159, 'http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (161, 3, '2018-10-10 06:51:03', '2018-10-10 06:51:03', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-7', '', '', '2018-10-10 06:51:03', '2018-10-10 06:51:03', '', 159, 'http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (162, 3, '2018-10-10 06:51:41', '2018-10-10 06:51:41', '<h3 style="text-align: center;"><strong>Bước 1: </strong>sau khi nhận thưởng các bạn về màn hình chính và chọn hộp quà.</h3>
<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />
<h3 style="text-align: center;"><strong>Bước 2: </strong>Tại đây sẽ xuất hiện những phần thưởng mà bạn được nhận. Click vào ô nhận tất cả để nhận.</h3>
<img class="size-full wp-image-161 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-2.jpg" alt="" width="364" height="634" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Nhận quà”', '', 'inherit', 'closed', 'closed', '', '159-revision-v1', '', '', '2018-10-10 06:51:41', '2018-10-10 06:51:41', '', 159, 'http://yume100.vn/2018/10/10/159-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (163, 3, '2018-10-10 06:58:45', '2018-10-10 06:58:45', '<p style="text-align: center;"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></p>
<img class="size-full wp-image-164 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg" alt="" width="360" height="633" />
<p style="text-align: center;"><strong>Bước 2: Tại bản đồ thế giới chọn vào Vương quốc.</strong></p>
<img class="size-full wp-image-165 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg" alt="" width="356" height="632" />
<p style="text-align: center;"><strong>Bước 3: Sau đó cùng các hoàng tử vượt ải nhé các bạn !!!!!</strong></p>
<p style="text-align: center;"><strong>CHÚ Ý: </strong>Khi vượt qua các ải của vương quốc đầu tiên thì  các vương quốc sau mới được mở.</p>
<img class="size-full wp-image-166 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-1.png" alt="" width="360" height="636" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vượt ải (Story)”', '', 'publish', 'open', 'open', '', 'huong-dan-vuot-ai-story', '', '', '2018-10-10 06:58:45', '2018-10-10 06:58:45', '', 0, 'http://yume100.vn/?p=163', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (164, 3, '2018-10-10 06:56:59', '2018-10-10 06:56:59', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-7', '', '', '2018-10-10 06:56:59', '2018-10-10 06:56:59', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (165, 3, '2018-10-10 06:57:30', '2018-10-10 06:57:30', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-8', '', '', '2018-10-10 06:57:30', '2018-10-10 06:57:30', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (166, 3, '2018-10-10 06:57:59', '2018-10-10 06:57:59', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-4', '', '', '2018-10-10 06:57:59', '2018-10-10 06:57:59', '', 163, 'http://yume100.vn/wp-content/uploads/2018/10/a3-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (167, 3, '2018-10-10 06:58:45', '2018-10-10 06:58:45', '<p style="text-align: center;"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></p>
<img class="size-full wp-image-164 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-5.jpg" alt="" width="360" height="633" />
<p style="text-align: center;"><strong>Bước 2: Tại bản đồ thế giới chọn vào Vương quốc.</strong></p>
<img class="size-full wp-image-165 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-3.jpg" alt="" width="356" height="632" />
<p style="text-align: center;"><strong>Bước 3: Sau đó cùng các hoàng tử vượt ải nhé các bạn !!!!!</strong></p>
<p style="text-align: center;"><strong>CHÚ Ý: </strong>Khi vượt qua các ải của vương quốc đầu tiên thì  các vương quốc sau mới được mở.</p>
<img class="size-full wp-image-166 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-1.png" alt="" width="360" height="636" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vượt ải (Story)”', '', 'inherit', 'closed', 'closed', '', '163-revision-v1', '', '', '2018-10-10 06:58:45', '2018-10-10 06:58:45', '', 163, 'http://yume100.vn/2018/10/10/163-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (168, 3, '2018-10-10 07:06:46', '2018-10-10 07:06:46', '<h3 style="text-align: center;"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-169" src="http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg" alt="" width="359" height="635" /></p>

<h3 style="text-align: center;"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>
<img class="size-full wp-image-170 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg" alt="" width="356" height="632" />
<h3 style="text-align: center;"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.</h3>
<h3 style="text-align: center;"><img class="size-full wp-image-171 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-2.png" alt="" width="364" height="633" /></h3>
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'publish', 'open', 'open', '', 'huong-dan-vuon-mat-trang-2', '', '', '2018-10-10 07:08:11', '2018-10-10 07:08:11', '', 0, 'http://yume100.vn/?p=168', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (169, 3, '2018-10-10 07:04:50', '2018-10-10 07:04:50', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-8', '', '', '2018-10-10 07:04:50', '2018-10-10 07:04:50', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (170, 3, '2018-10-10 07:05:18', '2018-10-10 07:05:18', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-9', '', '', '2018-10-10 07:05:18', '2018-10-10 07:05:18', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (171, 3, '2018-10-10 07:05:49', '2018-10-10 07:05:49', '', 'a3', '', 'inherit', 'open', 'closed', '', 'a3-5', '', '', '2018-10-10 07:05:49', '2018-10-10 07:05:49', '', 168, 'http://yume100.vn/wp-content/uploads/2018/10/a3-2.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (172, 3, '2018-10-10 07:06:46', '2018-10-10 07:06:46', '<h3 style="text-align: center;"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-169" src="http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg" alt="" width="359" height="635" /></p>

<h3 style="text-align: center;"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>
<img class="size-full wp-image-170 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg" alt="" width="356" height="632" />
<h3 style="text-align: center;"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.<img class="size-full wp-image-171 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-2.png" alt="" width="364" height="633" /></h3>
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-10-10 07:06:46', '2018-10-10 07:06:46', '', 168, 'http://yume100.vn/2018/10/10/168-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (173, 3, '2018-10-10 07:08:11', '2018-10-10 07:08:11', '<h3 style="text-align: center;"><strong>Bước 1: </strong>Tại màn hình chính chọn<strong> “Truyện”</strong></h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-169" src="http://yume100.vn/wp-content/uploads/2018/10/a1-6.jpg" alt="" width="359" height="635" /></p>

<h3 style="text-align: center;"><strong>Bước 2: </strong>Tại bản đồ thể giới chọn<strong> “Vườn mặt trăng”</strong></h3>
<img class="size-full wp-image-170 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a2-4.jpg" alt="" width="356" height="632" />
<h3 style="text-align: center;"><strong>Bước 3: </strong>Sau đó bạn chọn vào sự kiện trong<strong> “Vườn mặt trăng” </strong>mà bạn muốn chơi.</h3>
<h3 style="text-align: center;"><img class="size-full wp-image-171 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a3-2.png" alt="" width="364" height="633" /></h3>
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn “Vườn mặt trăng”', '', 'inherit', 'closed', 'closed', '', '168-revision-v1', '', '', '2018-10-10 07:08:11', '2018-10-10 07:08:11', '', 168, 'http://yume100.vn/2018/10/10/168-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (174, 3, '2018-10-10 07:13:00', '2018-10-10 07:13:00', '<h3 style="text-align: center;">Bước 1: Tại màn hình chính chọn nút “Truyện”</h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-175" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.png" alt="" width="359" height="630" /></p>

<h3 style="text-align: center;">Bước 2: Tích vào “Danh mục truyện”</h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-176" src="http://yume100.vn/wp-content/uploads/2018/10/a2-4.png" alt="" width="362" height="632" /></p>

<h3 style="text-align: center;">Bước 3: Tích vào “Danh mục truyện đã đọc”</h3>
<p style="text-align: center;"><img class="alignnone  wp-image-177" src="http://yume100.vn/wp-content/uploads/2018/10/3-1.png" alt="" width="361" height="634" /></p>

<h4 style="text-align: center;">Bước 4: Chọn hoàng tử mà bạn muốn đọc truyện lại. Ví dụ: Trong hình ảnh mình chọn Avi.</h4>
<img class="alignnone size-full wp-image-178 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/4.png" alt="" width="361" height="633" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn xem log truyện – Những truyện đã đọc', '', 'publish', 'open', 'open', '', 'huong-dan-xem-log-truyen-nhung-truyen-da-doc', '', '', '2018-10-10 07:13:00', '2018-10-10 07:13:00', '', 0, 'http://yume100.vn/?p=174', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (175, 3, '2018-10-10 07:10:36', '2018-10-10 07:10:36', '', 'a1', '', 'inherit', 'open', 'closed', '', 'a1-9', '', '', '2018-10-10 07:10:36', '2018-10-10 07:10:36', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/a1-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (176, 3, '2018-10-10 07:11:12', '2018-10-10 07:11:12', '', 'a2', '', 'inherit', 'open', 'closed', '', 'a2-10', '', '', '2018-10-10 07:11:12', '2018-10-10 07:11:12', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/a2-4.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (177, 3, '2018-10-10 07:11:35', '2018-10-10 07:11:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2018-10-10 07:11:35', '2018-10-10 07:11:35', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/3-1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (178, 3, '2018-10-10 07:12:07', '2018-10-10 07:12:07', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-10-10 07:12:07', '2018-10-10 07:12:07', '', 174, 'http://yume100.vn/wp-content/uploads/2018/10/4.png', 0, 'attachment', 'image/png', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (179, 3, '2018-10-10 07:13:00', '2018-10-10 07:13:00', '<h3 style="text-align: center;">Bước 1: Tại màn hình chính chọn nút “Truyện”</h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-175" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.png" alt="" width="359" height="630" /></p>

<h3 style="text-align: center;">Bước 2: Tích vào “Danh mục truyện”</h3>
<p style="text-align: center;"><img class="alignnone size-full wp-image-176" src="http://yume100.vn/wp-content/uploads/2018/10/a2-4.png" alt="" width="362" height="632" /></p>

<h3 style="text-align: center;">Bước 3: Tích vào “Danh mục truyện đã đọc”</h3>
<p style="text-align: center;"><img class="alignnone  wp-image-177" src="http://yume100.vn/wp-content/uploads/2018/10/3-1.png" alt="" width="361" height="634" /></p>

<h4 style="text-align: center;">Bước 4: Chọn hoàng tử mà bạn muốn đọc truyện lại. Ví dụ: Trong hình ảnh mình chọn Avi.</h4>
<img class="alignnone size-full wp-image-178 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/4.png" alt="" width="361" height="633" />
<h1 style="text-align: center;">Chúc các bạn chơi game vui vẻ!</h1>', 'Hướng dẫn xem log truyện – Những truyện đã đọc', '', 'inherit', 'closed', 'closed', '', '174-revision-v1', '', '', '2018-10-10 07:13:00', '2018-10-10 07:13:00', '', 174, 'http://yume100.vn/2018/10/10/174-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (180, 3, '2018-10-10 07:16:40', '2018-10-10 07:16:40', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>
<ul>
 	<li><b>Fanpage: </b><a href="https://www.facebook.com/vn.yume100/"><b>https://www.facebook.com/vn.yume100/</b></a></li>
 	<li><b>Group: <a href="https://www.facebook.com/groups/yume100vn/?ref=br_rs">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>
 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>
 	<li><b>Email: </b><a href="mailto:support@fujigame.vn"><b>support@fujigame.vn</b></a></li>
</ul>
&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'publish', 'open', 'open', '', 'huong-dan-ho-tro-hoi-dap', '', '', '2018-10-10 07:19:05', '2018-10-10 07:19:05', '', 0, 'http://yume100.vn/?p=180', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (181, 3, '2018-10-10 07:16:40', '2018-10-10 07:16:40', '<b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b>

&nbsp;
<ul>
 	<li><b>Fanpage:</b></li>
</ul>
&nbsp;

<a href="https://www.facebook.com/vn.yume100/"><b>https://www.facebook.com/vn.yume100/</b></a>

&nbsp;
<ul>
 	<li><b>Group: <a href="https://www.facebook.com/groups/yume100vn/?ref=br_rs">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>
</ul>
<ul>
 	<li>Hotline:</li>
</ul>
&nbsp;

<b>0946.153.466</b>

<b>Email: </b><a href="mailto:support@fujigame.vn"><b>support@fujigame.vn</b></a>', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-10-10 07:16:40', '2018-10-10 07:16:40', '', 180, 'http://yume100.vn/2018/10/10/180-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (182, 3, '2018-10-10 07:18:56', '2018-10-10 07:18:56', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>
<ul>
 	<li><b>Fanpage: </b><a href="https://www.facebook.com/vn.yume100/"><b>https://www.facebook.com/vn.yume100/</b></a></li>
 	<li><b>Group: <a href="https://www.facebook.com/groups/yume100vn/?ref=br_rs">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>
 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>
 	<li><b>Email: </b><a href="mailto:support@fujigame.vn"><b>support@fujigame.vn</b></a></li>
</ul>
&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-autosave-v1', '', '', '2018-10-10 07:18:56', '2018-10-10 07:18:56', '', 180, 'http://yume100.vn/2018/10/10/180-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (183, 3, '2018-10-10 07:19:05', '2018-10-10 07:19:05', '<h4><b>Trong trường hợp các bạn cần hỗ trợ hãy liên lạc với bọn mình qua một trong các cách sau.</b></h4>
<ul>
 	<li><b>Fanpage: </b><a href="https://www.facebook.com/vn.yume100/"><b>https://www.facebook.com/vn.yume100/</b></a></li>
 	<li><b>Group: <a href="https://www.facebook.com/groups/yume100vn/?ref=br_rs">https://www.facebook.com/groups/yume100vn/?ref=br_rs</a></b></li>
 	<li><strong>Hotline: <b>0946.153.466</b></strong></li>
 	<li><b>Email: </b><a href="mailto:support@fujigame.vn"><b>support@fujigame.vn</b></a></li>
</ul>
&nbsp;', 'Hướng dẫn hỗ trợ, hỏi đáp', '', 'inherit', 'closed', 'closed', '', '180-revision-v1', '', '', '2018-10-10 07:19:05', '2018-10-10 07:19:05', '', 180, 'http://yume100.vn/2018/10/10/180-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (184, 3, '2018-10-10 07:22:21', '2018-10-10 07:22:21', '<span style="font-weight: 400;">Để liên kết tài khoản chơi game hiện tại với tài khoản FujiGame của bạn, bạn chỉ cần đăng nhập bằng tài khoản FujiGame hoặc đăng nhập thông qua Google+ và Facebook.</span>

&nbsp;

<b>Chú ý:</b> <span style="font-weight: 400;">Nếu đã chơi game khi chưa đăng nhập, bạn vui lòng không lựa chọn đăng nhập tại màn hình khởi động.</span>

<span style="font-weight: 400;">(Khi đăng nhập ngay tại đây các bạn sẽ bị mất tài khoản game đã chơi trước đó).</span>

<span style="font-weight: 400;">Để liên kết với tài khoản Fuji các bạn vui lòng tới màn hình thông tin tài khoản có trong mục cài đặt. Bạn sẽ được chuyển đến một màn hình đăng nhập (nếu chưa đăng nhập vào game trước đó)</span>

<span style="font-weight: 400;">[Ảnh 2]</span>

<span style="font-weight: 400;">Sau đó bạn có thể đăng nhập tài khoản như bình thường để liên kết với tài khoản game đã chơi. Như vậy, bạn sẽ có thể lưu trữ dữ liệu chơi game của mình và chuyển dữ liệu chơi giữa các thiết bị đang dùng để chơi game dễ dàng hơn.</span>

<b>Chúc các bạn chơi game vui vẻ!</b>', 'Hướng dẫn liên kết tài khoản.', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2018-10-10 07:22:21', '2018-10-10 07:22:21', '', 119, 'http://yume100.vn/2018/10/10/119-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (185, 3, '2018-10-10 07:38:08', '2018-10-10 07:38:08', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>

<span style="font-weight: 400;">      1. Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
<p style="text-align: center;">Ảnh</p>

<ol start="2">
 	<li><span style="font-weight: 400;"> Cài đặt trên PC:</span></li>
</ol>
<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><span style="font-weight: 400;"><b>Dream Kingdoom - Yume 100</b></span><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>
<p style="text-align: center;">ẢNH</p>
<b>    3. ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Vào appstore tìm <b>Dream Kingdoom - Yume 100</b></span>

Bước 2: Án vào nút tải.', 'Hướng dẫn tải game', '', 'publish', 'open', 'open', '', 'huong-dan-tai-game', '', '', '2018-10-10 07:38:08', '2018-10-10 07:38:08', '', 0, 'http://yume100.vn/?p=185', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (186, 3, '2018-10-10 07:38:08', '2018-10-10 07:38:08', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>

<span style="font-weight: 400;">      1. Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
<p style="text-align: center;">Ảnh</p>

<ol start="2">
 	<li><span style="font-weight: 400;"> Cài đặt trên PC:</span></li>
</ol>
<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><span style="font-weight: 400;"><b>Dream Kingdoom - Yume 100</b></span><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>
<p style="text-align: center;">ẢNH</p>
<b>    3. ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Vào appstore tìm <b>Dream Kingdoom - Yume 100</b></span>

Bước 2: Án vào nút tải.', 'Hướng dẫn tải game', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2018-10-10 07:38:08', '2018-10-10 07:38:08', '', 185, 'http://yume100.vn/2018/10/10/185-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (187, 3, '2018-10-12 03:59:46', '2018-10-12 03:59:46', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>

<img class="size-full wp-image-175 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.png" alt="" width="359" height="630" />
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'trash', 'open', 'open', '', 'huong-dan-test__trashed', '', '', '2018-10-16 01:33:24', '2018-10-16 01:33:24', '', 0, 'http://yume100.vn/?p=187', 0, 'post', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (188, 3, '2018-10-12 03:59:46', '2018-10-12 03:59:46', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
&nbsp;
<ol start="2">
 	<li><span style="font-weight: 400;"> Cài đặt trên PC:</span></li>
</ol>
<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 03:59:46', '2018-10-12 03:59:46', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (189, 3, '2018-10-12 04:00:53', '2018-10-12 04:00:53', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.
</span><span style="font-weight: 400;">Cài đặt trên PC:</span></li>
</ul>
<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-autosave-v1', '', '', '2018-10-12 04:00:53', '2018-10-12 04:00:53', '', 187, 'http://yume100.vn/2018/10/12/187-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (190, 3, '2018-10-12 04:01:19', '2018-10-12 04:01:19', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:01:19', '2018-10-12 04:01:19', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (191, 3, '2018-10-12 04:02:33', '2018-10-12 04:02:33', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:02:33', '2018-10-12 04:02:33', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (193, 1, '2018-10-12 04:25:39', '2018-10-12 04:25:39', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-175 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.png" alt="" width="359" height="630" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:25:39', '2018-10-12 04:25:39', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (194, 1, '2018-10-12 04:25:58', '2018-10-12 04:25:58', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:25:58', '2018-10-12 04:25:58', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (195, 1, '2018-10-12 04:28:02', '2018-10-12 04:28:02', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:28:02', '2018-10-12 04:28:02', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (196, 1, '2018-10-12 04:29:17', '2018-10-12 04:29:17', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

&nbsp;

&nbsp;

&nbsp;

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:17', '2018-10-12 04:29:17', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (197, 1, '2018-10-12 04:29:36', '2018-10-12 04:29:36', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:36', '2018-10-12 04:29:36', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (198, 1, '2018-10-12 06:20:00', '2018-10-12 06:20:00', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

&nbsp;

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>

&nbsp;

&nbsp;
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

&nbsp;

&nbsp;

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

&nbsp;

&nbsp;

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-autosave-v1', '', '', '2018-10-12 06:20:00', '2018-10-12 06:20:00', '', 187, 'http://yume100.vn/2018/10/12/187-autosave-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (199, 1, '2018-10-12 04:29:58', '2018-10-12 04:29:58', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC"&lt;br&gt;"

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:29:58', '2018-10-12 04:29:58', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (200, 1, '2018-10-12 04:30:18', '2018-10-12 04:30:18', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC&lt;br&gt;

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:30:18', '2018-10-12 04:30:18', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (201, 1, '2018-10-12 04:30:30', '2018-10-12 04:30:30', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<img class="size-full wp-image-160 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-4.jpg" alt="" width="365" height="637" />

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:30:30', '2018-10-12 04:30:30', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (202, 1, '2018-10-12 04:46:37', '2018-10-12 04:46:37', 'a

a

a

a

a

aa

asdsadsad

as

dsadsadsad

asdadsad

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:46:37', '2018-10-12 04:46:37', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (203, 1, '2018-10-12 04:47:12', '2018-10-12 04:47:12', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 04:47:12', '2018-10-12 04:47:12', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (204, 1, '2018-10-12 06:07:44', '2018-10-12 06:07:44', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

&nbsp;

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:07:44', '2018-10-12 06:07:44', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (205, 1, '2018-10-12 06:20:05', '2018-10-12 06:20:05', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

&nbsp;

&nbsp;

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>

&nbsp;

&nbsp;
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

&nbsp;

&nbsp;

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

&nbsp;

&nbsp;

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

&nbsp;

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

&nbsp;

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

&nbsp;

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

&nbsp;

&nbsp;

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:20:05', '2018-10-12 06:20:05', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (206, 1, '2018-10-12 06:20:55', '2018-10-12 06:20:55', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:20:55', '2018-10-12 06:20:55', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
INSERT INTO wp_posts (ID, post_author, post_date, post_date_gmt, post_content, post_title, post_excerpt, post_status, comment_status, ping_status, post_password, post_name, to_ping, pinged, post_modified, post_modified_gmt, post_content_filtered, post_parent, guid, menu_order, post_type, post_mime_type, comment_count) VALUES (207, 1, '2018-10-12 06:23:01', '2018-10-12 06:23:01', '<b>Yume100</b><span style="font-weight: 400;"> đã bước vào giai đoạn Closed Beta test, các bạn muốn tham gia trải nghiệm phiên bản Việt hóa của trò chơi vui lòng làm theo hướng dẫn dưới đây. Bài viết này sẽ được cập nhật nội dung khi trò chơi chính thức được phát hành.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ ANDROID.</b>

<span style="font-weight: 400;">1.Cài đặt cho Mobile:</span>

<img class="size-full wp-image-175 aligncenter" src="http://yume100.vn/wp-content/uploads/2018/10/a1-1.png" alt="" width="359" height="630" />
<ul>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Bạn tải file APK tại đây : Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Sau đó chọn cài đặt file APK như một ứng dụng bình thường.</span></li>
 	<li style="font-weight: 400;"><span style="font-weight: 400;">Khi cài đặt hoàn tất, biểu tượng game sẽ xuất hiện trên menu và màn hình ngoài của bạn, bạn đã có thể tham gia trải nghiệm game.</span></li>
</ul>
2. Cài đặt trên PC

<span style="font-weight: 400;">- Bạn cần tải và cài đặt phần mềm giả lập Android trên máy tính. Các phần mềm được khuyến khích sử dụng: Nox Player, KOPLAYER, Droid4X... các bạn có thể tìm kiếm trên Google, sau đó tải về và cài đặt trên máy.</span>

<span style="font-weight: 400;">- Bạn tải file APK tại đây: Link </span><a href="https://play.google.com/store/apps/details?id=vn.fujigame.remonster"><span style="font-weight: 400;">Google Store</span></a><span style="font-weight: 400;"> - Link tải trực tiếp APK.</span>

<span style="font-weight: 400;">- Sau đó chọn "Mở file APK" vừa tải xong bằng chương trình giả lập và chờ đợi ít phút để hệ thống tự cài đặt </span><b>Re:Monster</b><span style="font-weight: 400;"> - </span><b>Hồi Sinh Thành Quái Vật</b><span style="font-weight: 400;"> (Lưu ý: Các bạn cần xóa tất cả các phiên bản trước đó: phiên bản Test hoặc phiên bản Nhật thì mới có thể tiến hành cài đặt bình thường.)</span>

<span style="font-weight: 400;">- Sau khi cài đặt xong sẽ xuất hiện biểu tượng game ở giao diện chính. Các bạn có thể nhấp vào và bắt đầu trải nghiệm.</span>

<b>ĐỐI VỚI CÁC THIẾT BỊ IOS</b>

<span style="font-weight: 400;">Bước 1: Cung cấp tài khoản Apple ID mà bạn muốn dùng để trải nghiệm phiên bản "</span><b>Yume100</b><span style="font-weight: 400;"> (thử nghiệm)" tại fanpage chính thức của trò chơi hoặc các kênh hỗ trợ tại http://fujigame.vn:</span>

<span style="font-weight: 400;">Bước 2: Từ Appstore tải về TestFlight</span>

<span style="font-weight: 400;">Bước 3: Chờ mail kích hoạt gửi về email bạn đã đăng ký tại Bước 1.</span>

<span style="font-weight: 400;">Bước 4: Đăng nhập TestFlight bằng tài khoản Apple ID bạn đã đăng ký và tải game về máy.</span>

<span style="font-weight: 400;">Chúc các bạn chơi game vui vẻ, hẹn gặp lại vào kỳ sau !</span>

<b>BQT</b>

&nbsp;', 'Hướng dẫn Test', '', 'inherit', 'closed', 'closed', '', '187-revision-v1', '', '', '2018-10-12 06:23:01', '2018-10-12 06:23:01', '', 187, 'http://yume100.vn/2018/10/12/187-revision-v1/', 0, 'revision', '', 0);
CREATE TABLE wp_term_relationships
(
    object_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    term_taxonomy_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    term_order int(11) DEFAULT '0' NOT NULL,
    CONSTRAINT `PRIMARY` PRIMARY KEY (object_id, term_taxonomy_id)
);
CREATE INDEX term_taxonomy_id ON wp_term_relationships (term_taxonomy_id);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (1, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (5, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (10, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (12, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (14, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (16, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (25, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (30, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (32, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (34, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (36, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (38, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (45, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (47, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (55, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (76, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (78, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (81, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (83, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (91, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (95, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (103, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (108, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (114, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (119, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (121, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (128, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (134, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (140, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (146, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (150, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (155, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (159, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (163, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (168, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (174, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (180, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (185, 1, 0);
INSERT INTO wp_term_relationships (object_id, term_taxonomy_id, term_order) VALUES (187, 1, 0);
CREATE TABLE wp_term_taxonomy
(
    term_taxonomy_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    term_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    taxonomy varchar(32) DEFAULT '' NOT NULL,
    description longtext NOT NULL,
    parent bigint(20) unsigned DEFAULT '0' NOT NULL,
    count bigint(20) DEFAULT '0' NOT NULL
);
CREATE UNIQUE INDEX term_id_taxonomy ON wp_term_taxonomy (term_id, taxonomy);
CREATE INDEX taxonomy ON wp_term_taxonomy (taxonomy);
INSERT INTO wp_term_taxonomy (term_taxonomy_id, term_id, taxonomy, description, parent, count) VALUES (1, 1, 'category', '', 0, 17);
CREATE TABLE wp_termmeta
(
    meta_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    term_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    meta_key varchar(255),
    meta_value longtext
);
CREATE INDEX term_id ON wp_termmeta (term_id);
CREATE INDEX meta_key ON wp_termmeta (meta_key);
CREATE TABLE wp_terms
(
    term_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    name varchar(200) DEFAULT '' NOT NULL,
    slug varchar(200) DEFAULT '' NOT NULL,
    term_group bigint(10) DEFAULT '0' NOT NULL
);
CREATE INDEX name ON wp_terms (name);
CREATE INDEX slug ON wp_terms (slug);
INSERT INTO wp_terms (term_id, name, slug, term_group) VALUES (1, 'Uncategorized', 'uncategorized', 0);
CREATE TABLE wp_usermeta
(
    umeta_id bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_id bigint(20) unsigned DEFAULT '0' NOT NULL,
    meta_key varchar(255),
    meta_value longtext
);
CREATE INDEX user_id ON wp_usermeta (user_id);
CREATE INDEX meta_key ON wp_usermeta (meta_key);
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (1, 1, 'nickname', 'Le Xuan Dam');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (2, 1, 'first_name', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (3, 1, 'last_name', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (4, 1, 'description', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (5, 1, 'rich_editing', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (6, 1, 'syntax_highlighting', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (7, 1, 'comment_shortcuts', 'false');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (8, 1, 'admin_color', 'fresh');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (9, 1, 'use_ssl', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (10, 1, 'show_admin_bar_front', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (11, 1, 'locale', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (13, 1, 'wp_user_level', '10');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (14, 1, 'dismissed_wp_pointers', 'wp496_privacy,plugin_editor_notice,theme_editor_notice');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (15, 1, 'show_welcome_panel', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (17, 1, 'wp_dashboard_quick_press_last_post_id', '208');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (18, 1, 'wp_user-settings', 'mfold=o&libraryContent=browse');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (19, 1, 'wp_user-settings-time', '1538018510');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (20, 1, 'show_try_gutenberg_panel', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (22, 2, 'nickname', 'admin');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (23, 2, 'first_name', 'admin');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (24, 2, 'last_name', 'yume');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (25, 2, 'description', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (26, 2, 'rich_editing', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (27, 2, 'syntax_highlighting', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (28, 2, 'comment_shortcuts', 'false');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (29, 2, 'admin_color', 'fresh');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (30, 2, 'use_ssl', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (31, 2, 'show_admin_bar_front', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (32, 2, 'locale', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (33, 2, 'wp_capabilities', 'a:1:{s:10:"subscriber";b:1;}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (34, 2, 'wp_user_level', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (35, 2, 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (38, 2, 'wp_user-settings', 'mfold=f');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (39, 2, 'wp_user-settings-time', '1538381660');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (41, 3, 'nickname', 'admin');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (42, 3, 'first_name', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (43, 3, 'last_name', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (44, 3, 'description', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (45, 3, 'rich_editing', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (46, 3, 'syntax_highlighting', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (47, 3, 'comment_shortcuts', 'false');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (48, 3, 'admin_color', 'fresh');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (49, 3, 'use_ssl', '0');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (50, 3, 'show_admin_bar_front', 'true');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (51, 3, 'locale', '');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (52, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (53, 3, 'wp_user_level', '10');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (54, 3, 'dismissed_wp_pointers', 'wp496_privacy');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (56, 3, 'wp_dashboard_quick_press_last_post_id', '127');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (57, 3, 'session_tokens', 'a:4:{s:64:"70ceb9cb2b0bd145c2170c4c58972b7006c48aa80d8441261fc3c51b6c82a157";a:4:{s:10:"expiration";i:1539669879;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1538460279;}s:64:"78b282db18b590e0f8067c7262248aa10da7ae2b6f2cca41a16dfeb55fb7de17";a:4:{s:10:"expiration";i:1539670652;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1538461052;}s:64:"9710165775da5b35e7c664f5bf545ad5b59592010b5454f862fb1a9b69791e1a";a:4:{s:10:"expiration";i:1539912214;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1538702614;}s:64:"73152e17735cda1b1e84df981f59240eaaa788d2c637edf62fc71f21dc5d0cce";a:4:{s:10:"expiration";i:1540189358;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1538979758;}}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (58, 1, 'session_tokens', 'a:3:{s:64:"e0e825790b05a5efb84bc0fc999ab251287354e7335b72a42c7030b209f744da";a:4:{s:10:"expiration";i:1540527895;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1539318295;}s:64:"1e6f59dd04b4dbe337a2a6b368a451e23cf9c69f482be60d2510b89a997556dc";a:4:{s:10:"expiration";i:1540880041;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1539670441;}s:64:"c37538e6e56d64f93c0f57d4cf523cd9606b02b4037c8ec9dbd0ed58507902cf";a:4:{s:10:"expiration";i:1540349386;s:2:"ip";s:12:"123.25.30.88";s:2:"ua";s:115:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36";s:5:"login";i:1540176586;}}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (59, 3, 'wp_user-settings', 'editor=tinymce&libraryContent=browse');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (60, 3, 'wp_user-settings-time', '1539056881');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (61, 1, 'wp_media_library_mode', 'list');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (62, 1, 'closedpostboxes_post', 'a:0:{}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (63, 1, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (64, 3, 'closedpostboxes_post', 'a:1:{i:0;s:23:"acf-group_5bbc0ffd9e19b";}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (65, 3, 'metaboxhidden_post', 'a:5:{i:0;s:11:"postexcerpt";i:1;s:13:"trackbacksdiv";i:2;s:16:"commentstatusdiv";i:3;s:7:"slugdiv";i:4;s:9:"authordiv";}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (66, 1, 'closedpostboxes_acf-field-group', 'a:0:{}');
INSERT INTO wp_usermeta (umeta_id, user_id, meta_key, meta_value) VALUES (67, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:"slugdiv";}');
CREATE TABLE wp_users
(
    ID bigint(20) unsigned PRIMARY KEY NOT NULL AUTO_INCREMENT,
    user_login varchar(60) DEFAULT '' NOT NULL,
    user_pass varchar(255) DEFAULT '' NOT NULL,
    user_nicename varchar(50) DEFAULT '' NOT NULL,
    user_email varchar(100) DEFAULT '' NOT NULL,
    user_url varchar(100) DEFAULT '' NOT NULL,
    user_registered datetime DEFAULT CURRENT_TIMESTAMP NOT NULL,
    user_activation_key varchar(255) DEFAULT '' NOT NULL,
    user_status int(11) DEFAULT '0' NOT NULL,
    display_name varchar(250) DEFAULT '' NOT NULL
);
CREATE INDEX user_login_key ON wp_users (user_login);
CREATE INDEX user_nicename ON wp_users (user_nicename);
CREATE INDEX user_email ON wp_users (user_email);
INSERT INTO wp_users (ID, user_login, user_pass, user_nicename, user_email, user_url, user_registered, user_activation_key, user_status, display_name) VALUES (1, 'Le Xuan Dam', '$P$BAafbIsla3XBcu8FvHhRnuLlStx4/f0', 'le-xuan-dam', 'dam.le@fujitechjsc.com', '', '2018-09-25 09:21:02', '', 0, 'Le Xuan Dam');
INSERT INTO wp_users (ID, user_login, user_pass, user_nicename, user_email, user_url, user_registered, user_activation_key, user_status, display_name) VALUES (3, 'admin', '$P$Ba3vbqe1CkwiKmOzah/AGAcPSn2ifA0', 'admin', 'admin@gmail.com', '', '2018-10-01 08:15:36', '1538381736:$P$BAxbgol7p9gD/DZ2JJtj2EsQ9.cvcP1', 0, 'admin');