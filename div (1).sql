-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 21, 2017 at 09:03 AM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `div`
--

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_cache`
--

CREATE TABLE IF NOT EXISTS `g5_apms_cache` (
  `c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_text` text NOT NULL,
  `c_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_data`
--

CREATE TABLE IF NOT EXISTS `g5_apms_data` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `data_q` varchar(255) NOT NULL DEFAULT '',
  `data_1` varchar(255) NOT NULL DEFAULT '',
  `data_2` varchar(255) NOT NULL DEFAULT '',
  `data_3` varchar(255) NOT NULL DEFAULT '',
  `data_4` varchar(255) NOT NULL DEFAULT '',
  `data_5` varchar(255) NOT NULL DEFAULT '',
  `data_6` varchar(255) NOT NULL DEFAULT '',
  `data_7` varchar(255) NOT NULL DEFAULT '',
  `data_8` varchar(255) NOT NULL DEFAULT '',
  `data_9` varchar(255) NOT NULL DEFAULT '',
  `data_10` varchar(255) NOT NULL DEFAULT '',
  `data_set` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_event`
--

CREATE TABLE IF NOT EXISTS `g5_apms_event` (
  `ev_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `ev_point` int(11) NOT NULL DEFAULT '0',
  `ev_win` tinyint(4) NOT NULL DEFAULT '0',
  `ev_confirm` tinyint(4) NOT NULL DEFAULT '0',
  `ev_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_like`
--

CREATE TABLE IF NOT EXISTS `g5_apms_like` (
  `id` int(11) NOT NULL,
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `to_id` varchar(255) NOT NULL DEFAULT '',
  `flag` varchar(20) NOT NULL DEFAULT '',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_page`
--

CREATE TABLE IF NOT EXISTS `g5_apms_page` (
  `id` int(11) NOT NULL,
  `gr_id` varchar(20) NOT NULL DEFAULT '',
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `html_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `as_html` tinyint(4) NOT NULL DEFAULT '1',
  `as_file` varchar(255) NOT NULL DEFAULT '',
  `as_title` varchar(255) NOT NULL DEFAULT '',
  `as_desc` varchar(255) NOT NULL DEFAULT '',
  `as_icon` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_icon` varchar(255) NOT NULL DEFAULT '',
  `as_link` varchar(255) NOT NULL DEFAULT '',
  `as_target` varchar(255) NOT NULL DEFAULT '',
  `as_head` varchar(255) NOT NULL DEFAULT '',
  `as_hcolor` varchar(255) NOT NULL DEFAULT '',
  `as_skin` varchar(255) NOT NULL DEFAULT '',
  `as_line` varchar(255) NOT NULL DEFAULT '',
  `as_sp` tinyint(4) NOT NULL DEFAULT '0',
  `as_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_order` tinyint(4) NOT NULL DEFAULT '0',
  `as_menu` tinyint(4) NOT NULL DEFAULT '0',
  `as_menu_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_grade` tinyint(4) NOT NULL DEFAULT '0',
  `as_equal` tinyint(4) NOT NULL DEFAULT '0',
  `as_wide` tinyint(4) NOT NULL DEFAULT '0',
  `as_partner` tinyint(4) NOT NULL DEFAULT '0',
  `as_min` int(11) NOT NULL DEFAULT '0',
  `as_max` int(11) NOT NULL DEFAULT '0',
  `as_code` int(11) NOT NULL DEFAULT '0',
  `as_content` text NOT NULL,
  `as_mobile_content` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_apms_page`
--

INSERT INTO `g5_apms_page` (`id`, `gr_id`, `co_id`, `html_id`, `bo_subject`, `bo_mobile_subject`, `bo_device`, `as_html`, `as_file`, `as_title`, `as_desc`, `as_icon`, `as_mobile_icon`, `as_link`, `as_target`, `as_head`, `as_hcolor`, `as_skin`, `as_line`, `as_sp`, `as_show`, `as_order`, `as_menu`, `as_menu_show`, `as_grade`, `as_equal`, `as_wide`, `as_partner`, `as_min`, `as_max`, `as_code`, `as_content`, `as_mobile_content`) VALUES
(1, '', '', 'login', '로그인', '', 'both', 0, 'bbs/login.php', '{아이콘:user} Login', '회원 로그인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(2, '', '', 'reg', '회원가입', '', 'both', 0, 'bbs/register.php', '{아이콘:sign-in} Register', '회원가입안내', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(3, '', '', 'regform', '가입양식', '', 'both', 0, '', '{아이콘:file-text} Register Form', '회원가입 신청서 작성', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(4, '', '', 'regresult', '가입완료', '', 'both', 0, '', '{아이콘:leaf} Congratulations!', '회원가입을 축하드립니다.', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(5, '', '', 'regmail', '메일변경', '', 'both', 0, '', '{아이콘:envelope-o} E-mail Certify', '메일인증 메일주소 변경', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(6, '', '', 'confirm', '회원확인', '', 'both', 0, '', '{아이콘:check-circle} Confirm', '회원 비밀번호 확인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(7, '', '', 'password', '비밀번호', '', 'both', 0, '', '{아이콘:unlock-o} Password', '비밀번호 확인', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(8, '', '', 'faq', 'FAQ', '', 'both', 0, 'bbs/faq.php', '{아이콘:exclamation-circle} FAQ', '자주하는 질문', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(9, '', '', 'secret', '1:1 문의', '', 'both', 0, 'bbs/qalist.php', '{아이콘:exclamation-circle} Secret', '1:1 문의', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(10, '', '', 'search', '게시물검색', '', 'both', 0, 'bbs/search.php', '{아이콘:search} Post Search', '포스트 검색', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(11, '', '', 'new', '새글모음', '', 'both', 0, 'bbs/new.php', '{아이콘:refresh} New Post', '새글모음', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(12, '', '', 'connect', '현재접속자', '', 'both', 0, 'bbs/current_connect.php', '{아이콘:link} Connect', '현재접속자', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(13, '', '', 'tag', '태그박스', '', 'both', 0, 'bbs/tag.php', '{아이콘:tags} Tag Box', '태그박스', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(14, '', '', 'mypage', '마이페이지', '', 'both', 0, 'bbs/mypage.php', '{아이콘:user} My Page', '마이페이지', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(15, '', '', 'intro', '사이트 소개', '', 'both', 1, 'intro.php', '{아이콘:leaf} Introduction', '사이트 소개', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(16, '', '', 'provision', '이용약관', '', 'both', 1, 'provision.php', '{아이콘:check-circle} Provision', '사이트 이용약관', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(17, '', '', 'privacy', '개인정보처리방침', '', 'both', 1, 'privacy.php', '{아이콘:plus-circle} Privacy', '사이트 개인정보처리방침', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(18, '', '', 'noemail', '이메일 무단수집 거부', '', 'both', 1, 'noemail.php', '{아이콘:ban} Rejection of E-mail Collection', '이메일 무단수집 거부', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(19, '', '', 'disclaimer', '책임의 한계와 법적고지', '', 'both', 1, 'disclaimer.php', '{아이콘:minus-circle} Lines of Responsibility', '책임의 한계와 법적고지', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', ''),
(20, '', '', 'guide', '이용안내', '', 'both', 1, 'guide.php', '{아이콘:info-circle} User Guide', '사이트 이용안내', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_playlist`
--

CREATE TABLE IF NOT EXISTS `g5_apms_playlist` (
  `pl_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `pl_order` int(11) NOT NULL DEFAULT '0',
  `pl_flag` tinyint(4) NOT NULL DEFAULT '0',
  `pl_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_poll`
--

CREATE TABLE IF NOT EXISTS `g5_apms_poll` (
  `po_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `po_subject` varchar(255) NOT NULL DEFAULT '',
  `po_poll1` varchar(255) NOT NULL DEFAULT '',
  `po_poll2` varchar(255) NOT NULL DEFAULT '',
  `po_poll3` varchar(255) NOT NULL DEFAULT '',
  `po_poll4` varchar(255) NOT NULL DEFAULT '',
  `po_poll5` varchar(255) NOT NULL DEFAULT '',
  `po_poll6` varchar(255) NOT NULL DEFAULT '',
  `po_poll7` varchar(255) NOT NULL DEFAULT '',
  `po_poll8` varchar(255) NOT NULL DEFAULT '',
  `po_poll9` varchar(255) NOT NULL DEFAULT '',
  `po_score` int(11) NOT NULL DEFAULT '0',
  `po_cnt` int(11) NOT NULL DEFAULT '0',
  `po_cnt1` int(11) NOT NULL DEFAULT '0',
  `po_cnt2` int(11) NOT NULL DEFAULT '0',
  `po_cnt3` int(11) NOT NULL DEFAULT '0',
  `po_cnt4` int(11) NOT NULL DEFAULT '0',
  `po_cnt5` int(11) NOT NULL DEFAULT '0',
  `po_cnt6` int(11) NOT NULL DEFAULT '0',
  `po_cnt7` int(11) NOT NULL DEFAULT '0',
  `po_cnt8` int(11) NOT NULL DEFAULT '0',
  `po_cnt9` int(11) NOT NULL DEFAULT '0',
  `po_use` tinyint(4) NOT NULL DEFAULT '0',
  `po_type` tinyint(4) NOT NULL DEFAULT '0',
  `po_ans` tinyint(4) NOT NULL DEFAULT '0',
  `po_end` tinyint(4) NOT NULL DEFAULT '0',
  `po_level` tinyint(4) NOT NULL DEFAULT '0',
  `po_join` int(11) NOT NULL DEFAULT '0',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_endtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_ips` mediumtext NOT NULL,
  `mb_ids` text NOT NULL,
  `po_content` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_response`
--

CREATE TABLE IF NOT EXISTS `g5_apms_response` (
  `id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `co_id` int(11) NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `my_id` varchar(255) NOT NULL DEFAULT '',
  `my_name` varchar(255) NOT NULL DEFAULT '',
  `reply_cnt` int(11) NOT NULL DEFAULT '0',
  `comment_cnt` int(11) NOT NULL DEFAULT '0',
  `comment_reply_cnt` int(11) NOT NULL DEFAULT '0',
  `good_cnt` int(11) NOT NULL DEFAULT '0',
  `nogood_cnt` int(11) NOT NULL DEFAULT '0',
  `use_cnt` int(11) NOT NULL DEFAULT '0',
  `qa_cnt` int(11) NOT NULL DEFAULT '0',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `confirm` tinyint(4) NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_shingo`
--

CREATE TABLE IF NOT EXISTS `g5_apms_shingo` (
  `id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  `datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(20) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_tag`
--

CREATE TABLE IF NOT EXISTS `g5_apms_tag` (
  `id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `idx` varchar(10) NOT NULL DEFAULT '',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `cnt` int(11) NOT NULL DEFAULT '0',
  `desc` text NOT NULL,
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_tag_log`
--

CREATE TABLE IF NOT EXISTS `g5_apms_tag_log` (
  `id` int(11) NOT NULL,
  `it_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `tag_id` int(11) NOT NULL DEFAULT '0',
  `tag` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(255) NOT NULL DEFAULT '',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `it_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_apms_xp`
--

CREATE TABLE IF NOT EXISTS `g5_apms_xp` (
  `xp_now` tinyint(4) NOT NULL DEFAULT '0',
  `xp_point` int(11) NOT NULL DEFAULT '1000',
  `xp_rate` decimal(9,3) NOT NULL DEFAULT '0.100',
  `xp_max` int(11) NOT NULL DEFAULT '99',
  `xp_icon` varchar(20) NOT NULL DEFAULT 'txt',
  `xp_icon_skin` varchar(255) NOT NULL DEFAULT 'zb4',
  `xp_icon_css` varchar(255) NOT NULL DEFAULT 'basic',
  `xp_icon_admin` varchar(255) NOT NULL DEFAULT 'M',
  `xp_icon_guest` varchar(255) NOT NULL DEFAULT 'G',
  `xp_icon_special` varchar(255) NOT NULL DEFAULT 'S',
  `xp_special` varchar(255) NOT NULL DEFAULT '',
  `xp_except` varchar(255) NOT NULL DEFAULT '',
  `xp_designer` varchar(255) NOT NULL DEFAULT '',
  `xp_manager` varchar(255) NOT NULL DEFAULT '',
  `xp_photo` int(11) NOT NULL DEFAULT '80',
  `xp_photo_url` varchar(255) NOT NULL DEFAULT '',
  `xp_grade1` varchar(255) NOT NULL DEFAULT '비회원',
  `xp_grade2` varchar(255) NOT NULL DEFAULT '실버',
  `xp_grade3` varchar(255) NOT NULL DEFAULT '골드',
  `xp_grade4` varchar(255) NOT NULL DEFAULT '로열',
  `xp_grade5` varchar(255) NOT NULL DEFAULT '프렌드',
  `xp_grade6` varchar(255) NOT NULL DEFAULT '패밀리',
  `xp_grade7` varchar(255) NOT NULL DEFAULT '스페셜',
  `xp_grade8` varchar(255) NOT NULL DEFAULT '운영자',
  `xp_grade9` varchar(255) NOT NULL DEFAULT '관리자',
  `xp_grade10` varchar(255) NOT NULL DEFAULT '최고관리자',
  `xp_auto1` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto2` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto3` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto4` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto5` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto6` smallint(6) NOT NULL DEFAULT '0',
  `xp_auto7` smallint(6) NOT NULL DEFAULT '0',
  `xp_from` tinyint(4) NOT NULL DEFAULT '0',
  `xp_to` tinyint(4) NOT NULL DEFAULT '0',
  `exp_point` tinyint(4) NOT NULL DEFAULT '0',
  `exp_login` tinyint(4) NOT NULL DEFAULT '1',
  `exp_write` tinyint(4) NOT NULL DEFAULT '1',
  `exp_comment` tinyint(4) NOT NULL DEFAULT '1',
  `exp_read` tinyint(4) NOT NULL DEFAULT '0',
  `exp_good` tinyint(4) NOT NULL DEFAULT '0',
  `exp_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `exp_chulsuk` tinyint(4) NOT NULL DEFAULT '0',
  `exp_delivery` tinyint(4) NOT NULL DEFAULT '1',
  `item_cnt` tinyint(4) NOT NULL DEFAULT '0',
  `https_url` tinyint(4) NOT NULL DEFAULT '0',
  `editor_img` tinyint(4) NOT NULL DEFAULT '1',
  `comment_limit` int(11) NOT NULL DEFAULT '0',
  `lucky_point` int(11) NOT NULL DEFAULT '50',
  `lucky_dice` tinyint(4) NOT NULL DEFAULT '10',
  `lucky_msg` text NOT NULL,
  `auto_size` varchar(255) NOT NULL DEFAULT '800px',
  `jwplayer_key` varchar(255) NOT NULL DEFAULT '',
  `facebook_token` varchar(255) NOT NULL DEFAULT '',
  `google_map_key` varchar(255) NOT NULL DEFAULT '',
  `seo_img` varchar(255) NOT NULL DEFAULT '',
  `seo_key` text NOT NULL,
  `seo_desc` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_apms_xp`
--

INSERT INTO `g5_apms_xp` (`xp_now`, `xp_point`, `xp_rate`, `xp_max`, `xp_icon`, `xp_icon_skin`, `xp_icon_css`, `xp_icon_admin`, `xp_icon_guest`, `xp_icon_special`, `xp_special`, `xp_except`, `xp_designer`, `xp_manager`, `xp_photo`, `xp_photo_url`, `xp_grade1`, `xp_grade2`, `xp_grade3`, `xp_grade4`, `xp_grade5`, `xp_grade6`, `xp_grade7`, `xp_grade8`, `xp_grade9`, `xp_grade10`, `xp_auto1`, `xp_auto2`, `xp_auto3`, `xp_auto4`, `xp_auto5`, `xp_auto6`, `xp_auto7`, `xp_from`, `xp_to`, `exp_point`, `exp_login`, `exp_write`, `exp_comment`, `exp_read`, `exp_good`, `exp_nogood`, `exp_chulsuk`, `exp_delivery`, `item_cnt`, `https_url`, `editor_img`, `comment_limit`, `lucky_point`, `lucky_dice`, `lucky_msg`, `auto_size`, `jwplayer_key`, `facebook_token`, `google_map_key`, `seo_img`, `seo_key`, `seo_desc`) VALUES
(0, 1000, '0.100', 99, 'txt', 'zb4', 'basic', 'M', 'G', 'S', '', '', '', '', 80, '', '비회원', '실버', '골드', '로열', '프렌드', '패밀리', '스페셜', '운영자', '관리자', '최고관리자', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 1, 0, 0, 1, 0, 50, 10, '', '800px', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_auth`
--

CREATE TABLE IF NOT EXISTS `g5_auth` (
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `au_menu` varchar(20) NOT NULL DEFAULT '',
  `au_auth` set('r','w','d') NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_autosave`
--

CREATE TABLE IF NOT EXISTS `g5_autosave` (
  `as_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL,
  `as_uid` bigint(20) unsigned NOT NULL,
  `as_subject` varchar(255) NOT NULL,
  `as_content` text NOT NULL,
  `as_datetime` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board`
--

CREATE TABLE IF NOT EXISTS `g5_board` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `bo_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_subject` varchar(255) NOT NULL DEFAULT '',
  `bo_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `bo_admin` varchar(255) NOT NULL DEFAULT '',
  `bo_list_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_write_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_reply_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_comment_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_upload_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_download_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_html_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_link_level` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_delete` tinyint(4) NOT NULL DEFAULT '0',
  `bo_count_modify` tinyint(4) NOT NULL DEFAULT '0',
  `bo_read_point` int(11) NOT NULL DEFAULT '0',
  `bo_write_point` int(11) NOT NULL DEFAULT '0',
  `bo_comment_point` int(11) NOT NULL DEFAULT '0',
  `bo_download_point` int(11) NOT NULL DEFAULT '0',
  `bo_use_category` tinyint(4) NOT NULL DEFAULT '0',
  `bo_category_list` text NOT NULL,
  `bo_use_sideview` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_file_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_secret` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_dhtml_editor` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_rss_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_good` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_nogood` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_name` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_ip_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_view` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_file` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_list_content` tinyint(4) NOT NULL DEFAULT '0',
  `bo_table_width` int(11) NOT NULL DEFAULT '0',
  `bo_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `bo_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `bo_new` int(11) NOT NULL DEFAULT '0',
  `bo_hot` int(11) NOT NULL DEFAULT '0',
  `bo_image_width` int(11) NOT NULL DEFAULT '0',
  `bo_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `bo_include_head` varchar(255) NOT NULL DEFAULT '',
  `bo_include_tail` varchar(255) NOT NULL DEFAULT '',
  `bo_content_head` text NOT NULL,
  `bo_mobile_content_head` text NOT NULL,
  `bo_content_tail` text NOT NULL,
  `bo_mobile_content_tail` text NOT NULL,
  `bo_insert_content` text NOT NULL,
  `bo_gallery_cols` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_width` int(11) NOT NULL DEFAULT '0',
  `bo_mobile_gallery_height` int(11) NOT NULL DEFAULT '0',
  `bo_upload_size` int(11) NOT NULL DEFAULT '0',
  `bo_reply_order` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_search` tinyint(4) NOT NULL DEFAULT '0',
  `bo_order` int(11) NOT NULL DEFAULT '0',
  `bo_count_write` int(11) NOT NULL DEFAULT '0',
  `bo_count_comment` int(11) NOT NULL DEFAULT '0',
  `bo_write_min` int(11) NOT NULL DEFAULT '0',
  `bo_write_max` int(11) NOT NULL DEFAULT '0',
  `bo_comment_min` int(11) NOT NULL DEFAULT '0',
  `bo_comment_max` int(11) NOT NULL DEFAULT '0',
  `bo_notice` text NOT NULL,
  `bo_upload_count` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `bo_use_cert` enum('','cert','adult','hp-cert','hp-adult') NOT NULL DEFAULT '',
  `bo_use_sns` tinyint(4) NOT NULL DEFAULT '0',
  `bo_sort_field` varchar(255) NOT NULL DEFAULT '',
  `bo_1_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_2_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_3_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_4_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_5_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_6_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_7_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_8_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_9_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_10_subj` varchar(255) NOT NULL DEFAULT '',
  `bo_1` varchar(255) NOT NULL DEFAULT '',
  `bo_2` varchar(255) NOT NULL DEFAULT '',
  `bo_3` varchar(255) NOT NULL DEFAULT '',
  `bo_4` varchar(255) NOT NULL DEFAULT '',
  `bo_5` varchar(255) NOT NULL DEFAULT '',
  `bo_6` varchar(255) NOT NULL DEFAULT '',
  `bo_7` varchar(255) NOT NULL DEFAULT '',
  `bo_8` varchar(255) NOT NULL DEFAULT '',
  `bo_9` varchar(255) NOT NULL DEFAULT '',
  `bo_10` varchar(255) NOT NULL DEFAULT '',
  `as_title` varchar(255) NOT NULL DEFAULT '',
  `as_desc` varchar(255) NOT NULL DEFAULT '',
  `as_icon` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_icon` varchar(255) NOT NULL DEFAULT '',
  `as_main` varchar(255) NOT NULL DEFAULT '',
  `as_link` varchar(255) NOT NULL DEFAULT '',
  `as_target` varchar(255) NOT NULL DEFAULT '',
  `as_line` varchar(255) NOT NULL DEFAULT '',
  `as_sp` tinyint(4) NOT NULL DEFAULT '0',
  `as_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_order` int(11) NOT NULL DEFAULT '0',
  `as_menu` tinyint(4) NOT NULL DEFAULT '0',
  `as_menu_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_grade` tinyint(4) NOT NULL DEFAULT '0',
  `as_equal` tinyint(4) NOT NULL DEFAULT '0',
  `as_wide` tinyint(4) NOT NULL DEFAULT '0',
  `as_partner` tinyint(4) NOT NULL DEFAULT '0',
  `as_autoplay` tinyint(4) NOT NULL DEFAULT '0',
  `as_torrent` tinyint(4) NOT NULL DEFAULT '0',
  `as_shingo` tinyint(4) NOT NULL DEFAULT '0',
  `as_level` tinyint(4) NOT NULL DEFAULT '0',
  `as_lucky` tinyint(4) NOT NULL DEFAULT '0',
  `as_good` tinyint(4) NOT NULL DEFAULT '0',
  `as_save` tinyint(4) NOT NULL DEFAULT '0',
  `as_code` tinyint(4) NOT NULL DEFAULT '0',
  `as_exif` tinyint(4) NOT NULL DEFAULT '0',
  `as_loc` tinyint(4) NOT NULL DEFAULT '0',
  `as_new` tinyint(4) NOT NULL DEFAULT '0',
  `as_notice` tinyint(4) NOT NULL DEFAULT '0',
  `as_search` tinyint(4) NOT NULL DEFAULT '0',
  `as_lightbox` tinyint(4) NOT NULL DEFAULT '0',
  `as_rev_cmt` tinyint(4) NOT NULL DEFAULT '0',
  `as_best_cmt` tinyint(4) NOT NULL DEFAULT '0',
  `as_rank_cmt` tinyint(4) NOT NULL DEFAULT '3',
  `as_purifier` tinyint(4) NOT NULL DEFAULT '0',
  `as_resize` int(11) NOT NULL DEFAULT '0',
  `as_resize_kb` int(11) NOT NULL DEFAULT '0',
  `as_min` int(11) NOT NULL DEFAULT '0',
  `as_max` int(11) NOT NULL DEFAULT '0',
  `as_comment_rows` int(11) NOT NULL DEFAULT '0',
  `as_comment_mobile_rows` int(11) NOT NULL DEFAULT '0',
  `as_editor` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_editor` varchar(255) NOT NULL DEFAULT '',
  `as_set` text NOT NULL,
  `as_mobile_set` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_file`
--

CREATE TABLE IF NOT EXISTS `g5_board_file` (
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `bf_no` int(11) NOT NULL DEFAULT '0',
  `bf_source` varchar(255) NOT NULL DEFAULT '',
  `bf_file` varchar(255) NOT NULL DEFAULT '',
  `bf_download` int(11) NOT NULL,
  `bf_content` text NOT NULL,
  `bf_filesize` int(11) NOT NULL DEFAULT '0',
  `bf_width` int(11) NOT NULL DEFAULT '0',
  `bf_height` smallint(6) NOT NULL DEFAULT '0',
  `bf_type` tinyint(4) NOT NULL DEFAULT '0',
  `bf_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_good`
--

CREATE TABLE IF NOT EXISTS `g5_board_good` (
  `bg_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bg_flag` varchar(255) NOT NULL DEFAULT '',
  `bg_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_board_new`
--

CREATE TABLE IF NOT EXISTS `g5_board_new` (
  `bn_id` int(11) NOT NULL,
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` int(11) NOT NULL DEFAULT '0',
  `wr_parent` int(11) NOT NULL DEFAULT '0',
  `bn_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `as_type` tinyint(4) NOT NULL DEFAULT '0',
  `as_list` tinyint(4) NOT NULL DEFAULT '0',
  `as_secret` tinyint(4) NOT NULL DEFAULT '0',
  `as_publish` tinyint(4) NOT NULL DEFAULT '0',
  `as_extra` tinyint(4) NOT NULL DEFAULT '0',
  `as_comment` int(11) NOT NULL DEFAULT '0',
  `as_hit` int(11) NOT NULL DEFAULT '0',
  `as_good` int(11) NOT NULL DEFAULT '0',
  `as_nogood` int(11) NOT NULL DEFAULT '0',
  `as_download` int(11) NOT NULL DEFAULT '0',
  `as_link` int(11) NOT NULL DEFAULT '0',
  `as_poll` int(11) NOT NULL DEFAULT '0',
  `as_event` int(11) NOT NULL DEFAULT '0',
  `as_lucky` int(11) NOT NULL DEFAULT '0',
  `as_reply` varchar(10) NOT NULL DEFAULT '',
  `as_re_mb` varchar(255) NOT NULL DEFAULT '',
  `as_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_cert_history`
--

CREATE TABLE IF NOT EXISTS `g5_cert_history` (
  `cr_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `cr_company` varchar(255) NOT NULL DEFAULT '',
  `cr_method` varchar(255) NOT NULL DEFAULT '',
  `cr_ip` varchar(255) NOT NULL DEFAULT '',
  `cr_date` date NOT NULL DEFAULT '0000-00-00',
  `cr_time` time NOT NULL DEFAULT '00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_config`
--

CREATE TABLE IF NOT EXISTS `g5_config` (
  `cf_title` varchar(255) NOT NULL DEFAULT '',
  `cf_theme` varchar(255) NOT NULL DEFAULT '',
  `cf_admin` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email` varchar(255) NOT NULL DEFAULT '',
  `cf_admin_email_name` varchar(255) NOT NULL DEFAULT '',
  `cf_add_script` text NOT NULL,
  `cf_use_point` tinyint(4) NOT NULL DEFAULT '0',
  `cf_point_term` int(11) NOT NULL DEFAULT '0',
  `cf_use_copy_log` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_email_certify` tinyint(4) NOT NULL DEFAULT '0',
  `cf_login_point` int(11) NOT NULL DEFAULT '0',
  `cf_cut_name` tinyint(4) NOT NULL DEFAULT '0',
  `cf_nick_modify` int(11) NOT NULL DEFAULT '0',
  `cf_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_new_rows` int(11) NOT NULL DEFAULT '0',
  `cf_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_read_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_point` int(11) NOT NULL DEFAULT '0',
  `cf_comment_point` int(11) NOT NULL DEFAULT '0',
  `cf_download_point` int(11) NOT NULL DEFAULT '0',
  `cf_write_pages` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_pages` int(11) NOT NULL DEFAULT '0',
  `cf_link_target` varchar(255) NOT NULL DEFAULT '',
  `cf_delay_sec` int(11) NOT NULL DEFAULT '0',
  `cf_filter` text NOT NULL,
  `cf_possible_ip` text NOT NULL,
  `cf_intercept_ip` text NOT NULL,
  `cf_analytics` text NOT NULL,
  `cf_add_meta` text NOT NULL,
  `cf_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_use_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_homepage` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_tel` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_addr` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_signature` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_req_profile` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_register_point` int(11) NOT NULL DEFAULT '0',
  `cf_icon_level` tinyint(4) NOT NULL DEFAULT '0',
  `cf_use_recommend` tinyint(4) NOT NULL DEFAULT '0',
  `cf_recommend_point` int(11) NOT NULL DEFAULT '0',
  `cf_leave_day` int(11) NOT NULL DEFAULT '0',
  `cf_search_part` int(11) NOT NULL DEFAULT '0',
  `cf_email_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_group_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_board_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_write` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_wr_comment_all` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_mb_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_email_po_super_admin` tinyint(4) NOT NULL DEFAULT '0',
  `cf_prohibit_id` text NOT NULL,
  `cf_prohibit_email` text NOT NULL,
  `cf_new_del` int(11) NOT NULL DEFAULT '0',
  `cf_memo_del` int(11) NOT NULL DEFAULT '0',
  `cf_visit_del` int(11) NOT NULL DEFAULT '0',
  `cf_popular_del` int(11) NOT NULL DEFAULT '0',
  `cf_optimize_date` date NOT NULL DEFAULT '0000-00-00',
  `cf_use_member_icon` tinyint(4) NOT NULL DEFAULT '0',
  `cf_member_icon_size` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_width` int(11) NOT NULL DEFAULT '0',
  `cf_member_icon_height` int(11) NOT NULL DEFAULT '0',
  `cf_login_minutes` int(11) NOT NULL DEFAULT '0',
  `cf_image_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_flash_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_movie_extension` varchar(255) NOT NULL DEFAULT '',
  `cf_formmail_is_member` tinyint(4) NOT NULL DEFAULT '0',
  `cf_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `cf_visit` varchar(255) NOT NULL DEFAULT '',
  `cf_max_po_id` int(11) NOT NULL DEFAULT '0',
  `cf_stipulation` text NOT NULL,
  `cf_privacy` text NOT NULL,
  `cf_open_modify` int(11) NOT NULL DEFAULT '0',
  `cf_memo_send_point` int(11) NOT NULL DEFAULT '0',
  `cf_mobile_new_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_search_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_connect_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_faq_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_mobile_member_skin` varchar(255) NOT NULL DEFAULT '',
  `cf_captcha_mp3` varchar(255) NOT NULL DEFAULT '',
  `cf_editor` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_use` tinyint(4) NOT NULL DEFAULT '0',
  `cf_cert_ipin` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_hp` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcb_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_kcp_cd` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mid` varchar(255) NOT NULL DEFAULT '',
  `cf_lg_mert_key` varchar(255) NOT NULL DEFAULT '',
  `cf_cert_limit` int(11) NOT NULL DEFAULT '0',
  `cf_cert_req` tinyint(4) NOT NULL DEFAULT '0',
  `cf_sms_use` varchar(255) NOT NULL DEFAULT '',
  `cf_sms_type` varchar(10) NOT NULL DEFAULT '',
  `cf_icode_id` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_pw` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_ip` varchar(255) NOT NULL DEFAULT '',
  `cf_icode_server_port` varchar(255) NOT NULL DEFAULT '',
  `cf_googl_shorturl_apikey` varchar(255) NOT NULL DEFAULT '',
  `cf_facebook_appid` varchar(255) NOT NULL,
  `cf_facebook_secret` varchar(255) NOT NULL,
  `cf_twitter_key` varchar(255) NOT NULL,
  `cf_twitter_secret` varchar(255) NOT NULL,
  `cf_kakao_js_apikey` varchar(255) NOT NULL,
  `cf_1_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_2_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_3_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_4_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_5_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_6_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_7_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_8_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_9_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_10_subj` varchar(255) NOT NULL DEFAULT '',
  `cf_1` varchar(255) NOT NULL DEFAULT '',
  `cf_2` varchar(255) NOT NULL DEFAULT '',
  `cf_3` varchar(255) NOT NULL DEFAULT '',
  `cf_4` varchar(255) NOT NULL DEFAULT '',
  `cf_5` varchar(255) NOT NULL DEFAULT '',
  `cf_6` varchar(255) NOT NULL DEFAULT '',
  `cf_7` varchar(255) NOT NULL DEFAULT '',
  `cf_8` varchar(255) NOT NULL DEFAULT '',
  `cf_9` varchar(255) NOT NULL DEFAULT '',
  `cf_10` varchar(255) NOT NULL DEFAULT '',
  `as_thema` varchar(255) NOT NULL DEFAULT 'Basic',
  `as_color` varchar(255) NOT NULL DEFAULT 'Basic',
  `as_mobile_thema` varchar(255) NOT NULL DEFAULT 'Basic',
  `as_mobile_color` varchar(255) NOT NULL DEFAULT 'Basic',
  `as_admin` varchar(255) NOT NULL DEFAULT '',
  `as_intro` varchar(255) NOT NULL DEFAULT '',
  `as_intro_skin` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_intro_skin` varchar(255) NOT NULL DEFAULT '',
  `as_tag_skin` varchar(255) NOT NULL DEFAULT 'basic',
  `as_mobile_tag_skin` varchar(255) NOT NULL DEFAULT 'basic',
  `as_misc_skin` varchar(255) NOT NULL DEFAULT 'basic',
  `as_lang` varchar(255) NOT NULL DEFAULT 'korean',
  `as_gnu` tinyint(4) NOT NULL DEFAULT '0',
  `as_xp` varchar(255) NOT NULL DEFAULT 'XP',
  `as_mp` varchar(255) NOT NULL DEFAULT 'MP'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_config`
--

INSERT INTO `g5_config` (`cf_title`, `cf_theme`, `cf_admin`, `cf_admin_email`, `cf_admin_email_name`, `cf_add_script`, `cf_use_point`, `cf_point_term`, `cf_use_copy_log`, `cf_use_email_certify`, `cf_login_point`, `cf_cut_name`, `cf_nick_modify`, `cf_new_skin`, `cf_new_rows`, `cf_search_skin`, `cf_connect_skin`, `cf_faq_skin`, `cf_read_point`, `cf_write_point`, `cf_comment_point`, `cf_download_point`, `cf_write_pages`, `cf_mobile_pages`, `cf_link_target`, `cf_delay_sec`, `cf_filter`, `cf_possible_ip`, `cf_intercept_ip`, `cf_analytics`, `cf_add_meta`, `cf_member_skin`, `cf_use_homepage`, `cf_req_homepage`, `cf_use_tel`, `cf_req_tel`, `cf_use_hp`, `cf_req_hp`, `cf_use_addr`, `cf_req_addr`, `cf_use_signature`, `cf_req_signature`, `cf_use_profile`, `cf_req_profile`, `cf_register_level`, `cf_register_point`, `cf_icon_level`, `cf_use_recommend`, `cf_recommend_point`, `cf_leave_day`, `cf_search_part`, `cf_email_use`, `cf_email_wr_super_admin`, `cf_email_wr_group_admin`, `cf_email_wr_board_admin`, `cf_email_wr_write`, `cf_email_wr_comment_all`, `cf_email_mb_super_admin`, `cf_email_mb_member`, `cf_email_po_super_admin`, `cf_prohibit_id`, `cf_prohibit_email`, `cf_new_del`, `cf_memo_del`, `cf_visit_del`, `cf_popular_del`, `cf_optimize_date`, `cf_use_member_icon`, `cf_member_icon_size`, `cf_member_icon_width`, `cf_member_icon_height`, `cf_login_minutes`, `cf_image_extension`, `cf_flash_extension`, `cf_movie_extension`, `cf_formmail_is_member`, `cf_page_rows`, `cf_mobile_page_rows`, `cf_visit`, `cf_max_po_id`, `cf_stipulation`, `cf_privacy`, `cf_open_modify`, `cf_memo_send_point`, `cf_mobile_new_skin`, `cf_mobile_search_skin`, `cf_mobile_connect_skin`, `cf_mobile_faq_skin`, `cf_mobile_member_skin`, `cf_captcha_mp3`, `cf_editor`, `cf_cert_use`, `cf_cert_ipin`, `cf_cert_hp`, `cf_cert_kcb_cd`, `cf_cert_kcp_cd`, `cf_lg_mid`, `cf_lg_mert_key`, `cf_cert_limit`, `cf_cert_req`, `cf_sms_use`, `cf_sms_type`, `cf_icode_id`, `cf_icode_pw`, `cf_icode_server_ip`, `cf_icode_server_port`, `cf_googl_shorturl_apikey`, `cf_facebook_appid`, `cf_facebook_secret`, `cf_twitter_key`, `cf_twitter_secret`, `cf_kakao_js_apikey`, `cf_1_subj`, `cf_2_subj`, `cf_3_subj`, `cf_4_subj`, `cf_5_subj`, `cf_6_subj`, `cf_7_subj`, `cf_8_subj`, `cf_9_subj`, `cf_10_subj`, `cf_1`, `cf_2`, `cf_3`, `cf_4`, `cf_5`, `cf_6`, `cf_7`, `cf_8`, `cf_9`, `cf_10`, `as_thema`, `as_color`, `as_mobile_thema`, `as_mobile_color`, `as_admin`, `as_intro`, `as_intro_skin`, `as_mobile_intro_skin`, `as_tag_skin`, `as_mobile_tag_skin`, `as_misc_skin`, `as_lang`, `as_gnu`, `as_xp`, `as_mp`) VALUES
('그누보드5', 'basic', 'admin', 'admin@domain.com', '그누보드5', '', 1, 0, 1, 0, 100, 15, 60, 'basic', 15, 'basic', 'basic', 'basic', 0, 0, 0, 0, 10, 5, '_blank', 30, '18아,18놈,18새끼,18년,18뇬,18노,18것,18넘,개년,개놈,개뇬,개새,개색끼,개세끼,개세이,개쉐이,개쉑,개쉽,개시키,개자식,개좆,게색기,게색끼,광뇬,뇬,눈깔,뉘미럴,니귀미,니기미,니미,도촬,되질래,뒈져라,뒈진다,디져라,디진다,디질래,병쉰,병신,뻐큐,뻑큐,뽁큐,삐리넷,새꺄,쉬발,쉬밸,쉬팔,쉽알,스패킹,스팽,시벌,시부랄,시부럴,시부리,시불,시브랄,시팍,시팔,시펄,실밸,십8,십쌔,십창,싶알,쌉년,썅놈,쌔끼,쌩쑈,썅,써벌,썩을년,쎄꺄,쎄엑,쓰바,쓰발,쓰벌,쓰팔,씨8,씨댕,씨바,씨발,씨뱅,씨봉알,씨부랄,씨부럴,씨부렁,씨부리,씨불,씨브랄,씨빠,씨빨,씨뽀랄,씨팍,씨팔,씨펄,씹,아가리,아갈이,엄창,접년,잡놈,재랄,저주글,조까,조빠,조쟁이,조지냐,조진다,조질래,존나,존니,좀물,좁년,좃,좆,좇,쥐랄,쥐롤,쥬디,지랄,지럴,지롤,지미랄,쫍빱,凸,퍽큐,뻑큐,빠큐,ㅅㅂㄹㅁ', '', '', '', '', 'basic', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 1000, 2, 0, 0, 30, 10000, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'admin,administrator,관리자,운영자,어드민,주인장,webmaster,웹마스터,sysop,시삽,시샵,manager,매니저,메니저,root,루트,su,guest,방문객', '', 30, 180, 180, 180, '2017-04-21', 2, 5000, 22, 22, 10, 'gif|jpg|jpeg|png', 'swf', 'asx|asf|wmv|wma|mpg|mpeg|mov|avi|mp3', 1, 15, 15, '', 0, '해당 홈페이지에 맞는 회원가입약관을 입력합니다.', '해당 홈페이지에 맞는 개인정보처리방침을 입력합니다.', 0, 500, 'basic', 'basic', 'basic', 'basic', 'basic', 'basic', 'smarteditor2', 0, '', '', '', '', '', '', 2, 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Basic', 'Basic', 'Basic', 'Basic', '', '', '', '', 'basic', 'basic', 'basic', 'korean', 0, 'XP', 'MP');

-- --------------------------------------------------------

--
-- Table structure for table `g5_content`
--

CREATE TABLE IF NOT EXISTS `g5_content` (
  `co_id` varchar(20) NOT NULL DEFAULT '',
  `co_html` tinyint(4) NOT NULL DEFAULT '0',
  `co_subject` varchar(255) NOT NULL DEFAULT '',
  `co_content` longtext NOT NULL,
  `co_mobile_content` longtext NOT NULL,
  `co_skin` varchar(255) NOT NULL DEFAULT '',
  `co_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `co_tag_filter_use` tinyint(4) NOT NULL DEFAULT '0',
  `co_hit` int(11) NOT NULL DEFAULT '0',
  `co_include_head` varchar(255) NOT NULL,
  `co_include_tail` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_content`
--

INSERT INTO `g5_content` (`co_id`, `co_html`, `co_subject`, `co_content`, `co_mobile_content`, `co_skin`, `co_mobile_skin`, `co_tag_filter_use`, `co_hit`, `co_include_head`, `co_include_tail`) VALUES
('company', 1, '회사소개', '<p align=center><b>회사소개에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('privacy', 1, '개인정보 처리방침', '<p align=center><b>개인정보 처리방침에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', ''),
('provision', 1, '서비스 이용약관', '<p align=center><b>서비스 이용약관에 대한 내용을 입력하십시오.</b></p>', '', '', '', 0, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_faq`
--

CREATE TABLE IF NOT EXISTS `g5_faq` (
  `fa_id` int(11) NOT NULL,
  `fm_id` int(11) NOT NULL DEFAULT '0',
  `fa_subject` text NOT NULL,
  `fa_content` text NOT NULL,
  `fa_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_faq_master`
--

CREATE TABLE IF NOT EXISTS `g5_faq_master` (
  `fm_id` int(11) NOT NULL,
  `fm_subject` varchar(255) NOT NULL DEFAULT '',
  `fm_head_html` text NOT NULL,
  `fm_tail_html` text NOT NULL,
  `fm_mobile_head_html` text NOT NULL,
  `fm_mobile_tail_html` text NOT NULL,
  `fm_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_faq_master`
--

INSERT INTO `g5_faq_master` (`fm_id`, `fm_subject`, `fm_head_html`, `fm_tail_html`, `fm_mobile_head_html`, `fm_mobile_tail_html`, `fm_order`) VALUES
(1, '자주하시는 질문', '', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `g5_group`
--

CREATE TABLE IF NOT EXISTS `g5_group` (
  `gr_id` varchar(10) NOT NULL DEFAULT '',
  `gr_subject` varchar(255) NOT NULL DEFAULT '',
  `gr_device` enum('both','pc','mobile') NOT NULL DEFAULT 'both',
  `gr_admin` varchar(255) NOT NULL DEFAULT '',
  `gr_use_access` tinyint(4) NOT NULL DEFAULT '0',
  `gr_order` int(11) NOT NULL DEFAULT '0',
  `gr_1_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_2_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_3_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_4_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_5_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_6_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_7_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_8_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_9_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_10_subj` varchar(255) NOT NULL DEFAULT '',
  `gr_1` varchar(255) NOT NULL DEFAULT '',
  `gr_2` varchar(255) NOT NULL DEFAULT '',
  `gr_3` varchar(255) NOT NULL DEFAULT '',
  `gr_4` varchar(255) NOT NULL DEFAULT '',
  `gr_5` varchar(255) NOT NULL DEFAULT '',
  `gr_6` varchar(255) NOT NULL DEFAULT '',
  `gr_7` varchar(255) NOT NULL DEFAULT '',
  `gr_8` varchar(255) NOT NULL DEFAULT '',
  `gr_9` varchar(255) NOT NULL DEFAULT '',
  `gr_10` varchar(255) NOT NULL DEFAULT '',
  `as_thema` varchar(255) NOT NULL DEFAULT '',
  `as_color` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_thema` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_color` varchar(255) NOT NULL DEFAULT '',
  `as_icon` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_icon` varchar(255) NOT NULL DEFAULT '',
  `as_main` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_main` varchar(255) NOT NULL DEFAULT '',
  `as_link` varchar(255) NOT NULL DEFAULT '',
  `as_target` varchar(255) NOT NULL DEFAULT '',
  `as_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_shop` tinyint(4) NOT NULL DEFAULT '0',
  `as_menu` tinyint(4) NOT NULL DEFAULT '0',
  `as_menu_show` tinyint(4) NOT NULL DEFAULT '0',
  `as_grade` tinyint(4) NOT NULL DEFAULT '0',
  `as_equal` tinyint(4) NOT NULL DEFAULT '0',
  `as_wide` tinyint(4) NOT NULL DEFAULT '0',
  `as_multi` tinyint(4) NOT NULL DEFAULT '0',
  `as_partner` tinyint(4) NOT NULL DEFAULT '0',
  `as_min` int(11) NOT NULL DEFAULT '0',
  `as_max` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_group_member`
--

CREATE TABLE IF NOT EXISTS `g5_group_member` (
  `gm_id` int(11) NOT NULL,
  `gr_id` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `gm_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_login`
--

CREATE TABLE IF NOT EXISTS `g5_login` (
  `lo_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `lo_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lo_location` text NOT NULL,
  `lo_url` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_login`
--

INSERT INTO `g5_login` (`lo_ip`, `mb_id`, `lo_datetime`, `lo_location`, `lo_url`) VALUES
('::1', 'admin', '2017-04-21 16:02:43', '1:1문의', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_mail`
--

CREATE TABLE IF NOT EXISTS `g5_mail` (
  `ma_id` int(11) NOT NULL,
  `ma_subject` varchar(255) NOT NULL DEFAULT '',
  `ma_content` mediumtext NOT NULL,
  `ma_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ma_ip` varchar(255) NOT NULL DEFAULT '',
  `ma_last_option` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_member`
--

CREATE TABLE IF NOT EXISTS `g5_member` (
  `mb_no` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `mb_password` varchar(255) NOT NULL DEFAULT '',
  `mb_name` varchar(255) NOT NULL DEFAULT '',
  `mb_nick` varchar(255) NOT NULL DEFAULT '',
  `mb_nick_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_email` varchar(255) NOT NULL DEFAULT '',
  `mb_homepage` varchar(255) NOT NULL DEFAULT '',
  `mb_level` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sex` char(1) NOT NULL DEFAULT '',
  `mb_birth` varchar(255) NOT NULL DEFAULT '',
  `mb_tel` varchar(255) NOT NULL DEFAULT '',
  `mb_hp` varchar(255) NOT NULL DEFAULT '',
  `mb_certify` varchar(20) NOT NULL DEFAULT '',
  `mb_adult` tinyint(4) NOT NULL DEFAULT '0',
  `mb_dupinfo` varchar(255) NOT NULL DEFAULT '',
  `mb_zip1` char(3) NOT NULL DEFAULT '',
  `mb_zip2` char(3) NOT NULL DEFAULT '',
  `mb_addr1` varchar(255) NOT NULL DEFAULT '',
  `mb_addr2` varchar(255) NOT NULL DEFAULT '',
  `mb_addr3` varchar(255) NOT NULL DEFAULT '',
  `mb_addr_jibeon` varchar(255) NOT NULL DEFAULT '',
  `mb_signature` text NOT NULL,
  `mb_recommend` varchar(255) NOT NULL DEFAULT '',
  `mb_point` int(11) NOT NULL DEFAULT '0',
  `mb_today_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_login_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_ip` varchar(255) NOT NULL DEFAULT '',
  `mb_leave_date` varchar(8) NOT NULL DEFAULT '',
  `mb_intercept_date` varchar(8) NOT NULL DEFAULT '',
  `mb_email_certify` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `mb_email_certify2` varchar(255) NOT NULL DEFAULT '',
  `mb_memo` text NOT NULL,
  `mb_lost_certify` varchar(255) NOT NULL,
  `mb_mailling` tinyint(4) NOT NULL DEFAULT '0',
  `mb_sms` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open` tinyint(4) NOT NULL DEFAULT '0',
  `mb_open_date` date NOT NULL DEFAULT '0000-00-00',
  `mb_profile` text NOT NULL,
  `mb_memo_call` varchar(255) NOT NULL DEFAULT '',
  `mb_1` varchar(255) NOT NULL DEFAULT '',
  `mb_2` varchar(255) NOT NULL DEFAULT '',
  `mb_3` varchar(255) NOT NULL DEFAULT '',
  `mb_4` varchar(255) NOT NULL DEFAULT '',
  `mb_5` varchar(255) NOT NULL DEFAULT '',
  `mb_6` varchar(255) NOT NULL DEFAULT '',
  `mb_7` varchar(255) NOT NULL DEFAULT '',
  `mb_8` varchar(255) NOT NULL DEFAULT '',
  `mb_9` varchar(255) NOT NULL DEFAULT '',
  `mb_10` varchar(255) NOT NULL DEFAULT '',
  `as_msg` tinyint(4) NOT NULL DEFAULT '0',
  `as_photo` tinyint(4) NOT NULL DEFAULT '0',
  `as_partner` tinyint(4) NOT NULL DEFAULT '0',
  `as_marketer` tinyint(4) NOT NULL DEFAULT '0',
  `as_exp` int(11) NOT NULL DEFAULT '0',
  `as_level` int(11) NOT NULL DEFAULT '1',
  `as_like` int(11) NOT NULL DEFAULT '0',
  `as_liked` int(11) NOT NULL DEFAULT '0',
  `as_follow` int(11) NOT NULL DEFAULT '0',
  `as_followed` int(11) NOT NULL DEFAULT '0',
  `as_response` int(11) NOT NULL DEFAULT '0',
  `as_memo` int(11) NOT NULL DEFAULT '0',
  `as_coupon` int(11) NOT NULL DEFAULT '0',
  `as_join` int(11) NOT NULL DEFAULT '0',
  `as_date` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_member`
--

INSERT INTO `g5_member` (`mb_no`, `mb_id`, `mb_password`, `mb_name`, `mb_nick`, `mb_nick_date`, `mb_email`, `mb_homepage`, `mb_level`, `mb_sex`, `mb_birth`, `mb_tel`, `mb_hp`, `mb_certify`, `mb_adult`, `mb_dupinfo`, `mb_zip1`, `mb_zip2`, `mb_addr1`, `mb_addr2`, `mb_addr3`, `mb_addr_jibeon`, `mb_signature`, `mb_recommend`, `mb_point`, `mb_today_login`, `mb_login_ip`, `mb_datetime`, `mb_ip`, `mb_leave_date`, `mb_intercept_date`, `mb_email_certify`, `mb_email_certify2`, `mb_memo`, `mb_lost_certify`, `mb_mailling`, `mb_sms`, `mb_open`, `mb_open_date`, `mb_profile`, `mb_memo_call`, `mb_1`, `mb_2`, `mb_3`, `mb_4`, `mb_5`, `mb_6`, `mb_7`, `mb_8`, `mb_9`, `mb_10`, `as_msg`, `as_photo`, `as_partner`, `as_marketer`, `as_exp`, `as_level`, `as_like`, `as_liked`, `as_follow`, `as_followed`, `as_response`, `as_memo`, `as_coupon`, `as_join`, `as_date`) VALUES
(1, 'admin', '*7F0C90A004C46C64A0EB9DDDCE5DE0DC437A635C', '최고관리자', '최고관리자', '0000-00-00', 'admin@domain.com', '', 10, '', '', '', '', '', 0, '', '', '', '', '', '', '', '', '', 100, '2017-04-21 15:24:43', '::1', '2017-04-21 15:24:42', '::1', '', '', '2017-04-21 15:24:42', '', '', '', 1, 0, 1, '0000-00-00', '', '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `g5_memo`
--

CREATE TABLE IF NOT EXISTS `g5_memo` (
  `me_id` int(11) NOT NULL DEFAULT '0',
  `me_recv_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_mb_id` varchar(20) NOT NULL DEFAULT '',
  `me_send_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_read_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `me_memo` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_menu`
--

CREATE TABLE IF NOT EXISTS `g5_menu` (
  `me_id` int(11) NOT NULL,
  `me_code` varchar(255) NOT NULL DEFAULT '',
  `me_name` varchar(255) NOT NULL DEFAULT '',
  `me_link` varchar(255) NOT NULL DEFAULT '',
  `me_target` varchar(255) NOT NULL DEFAULT '',
  `me_order` int(11) NOT NULL DEFAULT '0',
  `me_use` tinyint(4) NOT NULL DEFAULT '0',
  `me_mobile_use` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_new_win`
--

CREATE TABLE IF NOT EXISTS `g5_new_win` (
  `nw_id` int(11) NOT NULL,
  `nw_device` varchar(10) NOT NULL DEFAULT 'both',
  `nw_begin_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_end_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `nw_disable_hours` int(11) NOT NULL DEFAULT '0',
  `nw_left` int(11) NOT NULL DEFAULT '0',
  `nw_top` int(11) NOT NULL DEFAULT '0',
  `nw_height` int(11) NOT NULL DEFAULT '0',
  `nw_width` int(11) NOT NULL DEFAULT '0',
  `nw_subject` text NOT NULL,
  `nw_content` text NOT NULL,
  `nw_content_html` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_point`
--

CREATE TABLE IF NOT EXISTS `g5_point` (
  `po_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `po_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `po_content` varchar(255) NOT NULL DEFAULT '',
  `po_point` int(11) NOT NULL DEFAULT '0',
  `po_use_point` int(11) NOT NULL DEFAULT '0',
  `po_expired` tinyint(4) NOT NULL DEFAULT '0',
  `po_expire_date` date NOT NULL DEFAULT '0000-00-00',
  `po_mb_point` int(11) NOT NULL DEFAULT '0',
  `po_rel_table` varchar(20) NOT NULL DEFAULT '',
  `po_rel_id` varchar(20) NOT NULL DEFAULT '',
  `po_rel_action` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_point`
--

INSERT INTO `g5_point` (`po_id`, `mb_id`, `po_datetime`, `po_content`, `po_point`, `po_use_point`, `po_expired`, `po_expire_date`, `po_mb_point`, `po_rel_table`, `po_rel_id`, `po_rel_action`) VALUES
(1, 'admin', '2017-04-21 15:24:43', '2017-04-21 첫로그인', 100, 0, 0, '9999-12-31', 100, '@login', 'admin', '2017-04-21');

-- --------------------------------------------------------

--
-- Table structure for table `g5_poll`
--

CREATE TABLE IF NOT EXISTS `g5_poll` (
  `po_id` int(11) NOT NULL,
  `qc_1` varchar(255) NOT NULL DEFAULT '',
  `qc_2` varchar(255) NOT NULL DEFAULT '',
  `qc_3` varchar(255) NOT NULL DEFAULT '',
  `qc_4` varchar(255) NOT NULL DEFAULT '',
  `qc_5` varchar(255) NOT NULL DEFAULT '',
  `qc_6` varchar(255) NOT NULL DEFAULT '',
  `qc_7` varchar(255) NOT NULL DEFAULT '',
  `qc_8` varchar(255) NOT NULL DEFAULT '',
  `qc_9` varchar(255) NOT NULL DEFAULT '',
  `qc_10` varchar(255) NOT NULL DEFAULT '',
  `qc_11` varchar(255) NOT NULL DEFAULT '',
  `qc_12` varchar(255) NOT NULL DEFAULT '',
  `qc_13` varchar(255) NOT NULL DEFAULT '',
  `qc_14` varchar(255) NOT NULL DEFAULT '',
  `qc_15` varchar(255) NOT NULL DEFAULT '',
  `qc_16` varchar(255) NOT NULL DEFAULT '',
  `qc_17` varchar(255) NOT NULL DEFAULT '',
  `qc_18` varchar(255) NOT NULL DEFAULT '',
  `qc_19` varchar(255) NOT NULL DEFAULT '',
  `qc_20` varchar(255) NOT NULL DEFAULT '',
  `qc_21` varchar(255) NOT NULL DEFAULT '',
  `qc_22` varchar(255) NOT NULL DEFAULT '',
  `qc_23` varchar(255) NOT NULL DEFAULT '',
  `qc_24` varchar(255) NOT NULL DEFAULT '',
  `qc_25` varchar(255) NOT NULL DEFAULT '',
  `qc_26` varchar(255) NOT NULL DEFAULT '',
  `qc_27` varchar(255) NOT NULL DEFAULT '',
  `qc_28` varchar(255) NOT NULL DEFAULT '',
  `qc_29` varchar(255) NOT NULL DEFAULT '',
  `qc_30` varchar(255) NOT NULL DEFAULT '',
  `qc_31` varchar(255) NOT NULL DEFAULT '',
  `qc_32` varchar(255) NOT NULL DEFAULT '',
  `qc_33` varchar(255) NOT NULL DEFAULT '',
  `qc_34` varchar(255) NOT NULL DEFAULT '',
  `qc_35` varchar(255) NOT NULL DEFAULT '',
  `qc_36` varchar(255) NOT NULL DEFAULT '',
  `qc_37` varchar(255) NOT NULL DEFAULT '',
  `qc_38` varchar(255) NOT NULL DEFAULT '',
  `qc_39` varchar(255) NOT NULL DEFAULT '',
  `qc_40` varchar(255) NOT NULL DEFAULT '',
  `qc_41` varchar(255) NOT NULL DEFAULT '',
  `qc_42` varchar(255) NOT NULL DEFAULT '',
  `qc_43` varchar(255) NOT NULL DEFAULT '',
  `qc_44` varchar(255) NOT NULL DEFAULT '',
  `qc_45` varchar(255) NOT NULL DEFAULT '',
  `qc_46` varchar(255) NOT NULL DEFAULT '',
  `qc_47` varchar(255) NOT NULL DEFAULT '',
  `qc_48` varchar(255) NOT NULL DEFAULT '',
  `qc_49` varchar(255) NOT NULL DEFAULT '',
  `qc_50` varchar(255) NOT NULL DEFAULT '',
  `qc_51` varchar(255) NOT NULL DEFAULT '',
  `qc_52` varchar(255) NOT NULL DEFAULT '',
  `qc_53` varchar(255) NOT NULL DEFAULT '',
  `qc_54` varchar(255) NOT NULL DEFAULT '',
  `qc_55` varchar(255) NOT NULL DEFAULT '',
  `qc_56` varchar(255) NOT NULL DEFAULT '',
  `qc_57` varchar(255) NOT NULL DEFAULT '',
  `qc_58` varchar(255) NOT NULL DEFAULT '',
  `qc_59` varchar(255) NOT NULL DEFAULT '',
  `qc_60` varchar(255) NOT NULL DEFAULT '',
  `qc_61` varchar(255) NOT NULL DEFAULT '',
  `qc_62` varchar(255) NOT NULL DEFAULT '',
  `qc_63` varchar(255) NOT NULL DEFAULT '',
  `qc_64` varchar(255) NOT NULL DEFAULT '',
  `qc_65` varchar(255) NOT NULL DEFAULT '',
  `qc_66` varchar(255) NOT NULL DEFAULT '',
  `qc_67` varchar(255) NOT NULL DEFAULT '',
  `qc_68` varchar(255) NOT NULL DEFAULT '',
  `qc_69` varchar(255) NOT NULL DEFAULT '',
  `qc_70` varchar(255) NOT NULL DEFAULT '',
  `qc_71` varchar(255) NOT NULL DEFAULT '',
  `qc_72` varchar(255) NOT NULL DEFAULT '',
  `qc_73` varchar(255) NOT NULL DEFAULT '',
  `qc_74` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_poll`
--

INSERT INTO `g5_poll` (`po_id`, `qc_1`, `qc_2`, `qc_3`, `qc_4`, `qc_5`, `qc_6`, `qc_7`, `qc_8`, `qc_9`, `qc_10`, `qc_11`, `qc_12`, `qc_13`, `qc_14`, `qc_15`, `qc_16`, `qc_17`, `qc_18`, `qc_19`, `qc_20`, `qc_21`, `qc_22`, `qc_23`, `qc_24`, `qc_25`, `qc_26`, `qc_27`, `qc_28`, `qc_29`, `qc_30`, `qc_31`, `qc_32`, `qc_33`, `qc_34`, `qc_35`, `qc_36`, `qc_37`, `qc_38`, `qc_39`, `qc_40`, `qc_41`, `qc_42`, `qc_43`, `qc_44`, `qc_45`, `qc_46`, `qc_47`, `qc_48`, `qc_49`, `qc_50`, `qc_51`, `qc_52`, `qc_53`, `qc_54`, `qc_55`, `qc_56`, `qc_57`, `qc_58`, `qc_59`, `qc_60`, `qc_61`, `qc_62`, `qc_63`, `qc_64`, `qc_65`, `qc_66`, `qc_67`, `qc_68`, `qc_69`, `qc_70`, `qc_71`, `qc_72`, `qc_73`, `qc_74`) VALUES
(3, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test'),
(4, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(5, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test'),
(6, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `g5_poll_etc`
--

CREATE TABLE IF NOT EXISTS `g5_poll_etc` (
  `pc_id` int(11) NOT NULL DEFAULT '0',
  `po_id` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `pc_name` varchar(255) NOT NULL DEFAULT '',
  `pc_idea` varchar(255) NOT NULL DEFAULT '',
  `pc_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_popular`
--

CREATE TABLE IF NOT EXISTS `g5_popular` (
  `pp_id` int(11) NOT NULL,
  `pp_word` varchar(50) NOT NULL DEFAULT '',
  `pp_date` date NOT NULL DEFAULT '0000-00-00',
  `pp_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_qa_config`
--

CREATE TABLE IF NOT EXISTS `g5_qa_config` (
  `qa_title` varchar(255) NOT NULL DEFAULT '',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_mobile_skin` varchar(255) NOT NULL DEFAULT '',
  `qa_use_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_email` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_req_hp` tinyint(4) NOT NULL DEFAULT '0',
  `qa_use_sms` tinyint(4) NOT NULL DEFAULT '0',
  `qa_send_number` varchar(255) NOT NULL DEFAULT '0',
  `qa_admin_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_admin_email` varchar(255) NOT NULL DEFAULT '',
  `qa_use_editor` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_subject_len` int(11) NOT NULL DEFAULT '0',
  `qa_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_mobile_page_rows` int(11) NOT NULL DEFAULT '0',
  `qa_image_width` int(11) NOT NULL DEFAULT '0',
  `qa_upload_size` int(11) NOT NULL DEFAULT '0',
  `qa_insert_content` text NOT NULL,
  `qa_include_head` varchar(255) NOT NULL DEFAULT '',
  `qa_include_tail` varchar(255) NOT NULL DEFAULT '',
  `qa_content_head` text NOT NULL,
  `qa_content_tail` text NOT NULL,
  `qa_mobile_content_head` text NOT NULL,
  `qa_mobile_content_tail` text NOT NULL,
  `qa_1_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_2_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_3_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_4_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_5_subj` varchar(255) NOT NULL DEFAULT '',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  `as_admin` varchar(255) NOT NULL DEFAULT '',
  `as_editor` varchar(255) NOT NULL DEFAULT '',
  `as_mobile_editor` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_qa_config`
--

INSERT INTO `g5_qa_config` (`qa_title`, `qa_category`, `qa_skin`, `qa_mobile_skin`, `qa_use_email`, `qa_req_email`, `qa_use_hp`, `qa_req_hp`, `qa_use_sms`, `qa_send_number`, `qa_admin_hp`, `qa_admin_email`, `qa_use_editor`, `qa_subject_len`, `qa_mobile_subject_len`, `qa_page_rows`, `qa_mobile_page_rows`, `qa_image_width`, `qa_upload_size`, `qa_insert_content`, `qa_include_head`, `qa_include_tail`, `qa_content_head`, `qa_content_tail`, `qa_mobile_content_head`, `qa_mobile_content_tail`, `qa_1_subj`, `qa_2_subj`, `qa_3_subj`, `qa_4_subj`, `qa_5_subj`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`, `as_admin`, `as_editor`, `as_mobile_editor`) VALUES
('1:1문의', '회원|포인트', 'basicWorkingGood', 'basic', 1, 0, 1, 0, 0, '0', '', '', 0, 60, 30, 15, 15, 600, 1048576, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `g5_qa_content`
--

CREATE TABLE IF NOT EXISTS `g5_qa_content` (
  `qa_id` int(11) NOT NULL,
  `qa_num` int(11) NOT NULL DEFAULT '0',
  `qa_parent` int(11) NOT NULL DEFAULT '0',
  `qa_related` int(11) NOT NULL DEFAULT '0',
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `qa_name` varchar(255) NOT NULL DEFAULT '',
  `qa_email` varchar(255) NOT NULL DEFAULT '',
  `qa_hp` varchar(255) NOT NULL DEFAULT '',
  `qa_type` tinyint(4) NOT NULL DEFAULT '0',
  `qa_category` varchar(255) NOT NULL DEFAULT '',
  `qa_email_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_sms_recv` tinyint(4) NOT NULL DEFAULT '0',
  `qa_html` tinyint(4) NOT NULL DEFAULT '0',
  `qa_subject` varchar(255) NOT NULL DEFAULT '',
  `qa_content` text NOT NULL,
  `qa_status` tinyint(4) NOT NULL DEFAULT '0',
  `qa_file1` varchar(255) NOT NULL DEFAULT '',
  `qa_source1` varchar(255) NOT NULL DEFAULT '',
  `qa_file2` varchar(255) NOT NULL DEFAULT '',
  `qa_source2` varchar(255) NOT NULL DEFAULT '',
  `qa_ip` varchar(255) NOT NULL DEFAULT '',
  `qa_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qa_1` varchar(255) NOT NULL DEFAULT '',
  `qa_2` varchar(255) NOT NULL DEFAULT '',
  `qa_3` varchar(255) NOT NULL DEFAULT '',
  `qa_4` varchar(255) NOT NULL DEFAULT '',
  `qa_5` varchar(255) NOT NULL DEFAULT '',
  `qa_6` varchar(255) NOT NULL,
  `qa_7` varchar(255) NOT NULL,
  `qa_8` varchar(255) NOT NULL,
  `qa_9` varchar(255) NOT NULL,
  `qa_10` varchar(255) NOT NULL,
  `qa_11` varchar(255) NOT NULL,
  `qa_12` varchar(255) NOT NULL,
  `qa_13` varchar(255) NOT NULL,
  `qa_14` varchar(255) NOT NULL,
  `qa_15` varchar(255) NOT NULL,
  `qa_16` varchar(255) NOT NULL,
  `qa_17` varchar(255) NOT NULL,
  `qa_18` varchar(255) NOT NULL,
  `qa_19` varchar(255) NOT NULL,
  `qa_20` varchar(255) NOT NULL,
  `qa_21` varchar(255) NOT NULL,
  `qa_22` varchar(255) NOT NULL,
  `qa_23` varchar(255) NOT NULL,
  `qa_24` varchar(255) NOT NULL,
  `qa_25` varchar(255) NOT NULL,
  `qa_26` varchar(255) NOT NULL,
  `qa_27` varchar(255) NOT NULL,
  `qa_28` varchar(255) NOT NULL,
  `qa_29` varchar(255) NOT NULL,
  `qa_30` varchar(255) NOT NULL,
  `qa_31` varchar(255) NOT NULL,
  `qa_32` varchar(255) NOT NULL,
  `qa_33` varchar(255) NOT NULL,
  `qa_34` varchar(255) NOT NULL,
  `qa_35` varchar(255) NOT NULL,
  `qa_36` varchar(255) NOT NULL,
  `qa_37` varchar(255) NOT NULL,
  `qa_38` varchar(255) NOT NULL,
  `qa_39` varchar(255) NOT NULL,
  `qa_40` varchar(255) NOT NULL,
  `qa_41` varchar(255) NOT NULL,
  `qa_42` varchar(255) NOT NULL,
  `qa_43` varchar(255) NOT NULL,
  `qa_44` varchar(255) NOT NULL,
  `qa_45` varchar(255) NOT NULL,
  `qa_46` varchar(255) NOT NULL,
  `qa_47` varchar(255) NOT NULL,
  `qa_48` varchar(255) NOT NULL,
  `qa_49` varchar(255) NOT NULL,
  `qa_50` varchar(255) NOT NULL,
  `qa_51` varchar(255) NOT NULL,
  `qa_52` varchar(255) NOT NULL,
  `qa_53` varchar(255) NOT NULL,
  `qa_54` varchar(255) NOT NULL,
  `qa_55` varchar(255) NOT NULL,
  `qa_56` varchar(255) NOT NULL,
  `qa_57` varchar(255) NOT NULL,
  `qa_58` varchar(255) NOT NULL,
  `qa_59` varchar(255) NOT NULL,
  `qa_60` varchar(255) NOT NULL,
  `qa_61` varchar(255) NOT NULL,
  `qa_62` varchar(255) NOT NULL,
  `qa_63` varchar(255) NOT NULL,
  `qa_64` varchar(255) NOT NULL,
  `qa_65` varchar(255) NOT NULL,
  `qa_66` varchar(255) NOT NULL,
  `qa_67` varchar(255) NOT NULL,
  `qa_68` varchar(255) NOT NULL,
  `qa_69` varchar(255) NOT NULL,
  `qa_70` varchar(255) NOT NULL,
  `qa_71` varchar(255) NOT NULL,
  `qa_72` varchar(255) NOT NULL,
  `qa_73` varchar(255) NOT NULL,
  `qa_74` varchar(255) NOT NULL,
  `qa_75` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_qa_content`
--

INSERT INTO `g5_qa_content` (`qa_id`, `qa_num`, `qa_parent`, `qa_related`, `mb_id`, `qa_name`, `qa_email`, `qa_hp`, `qa_type`, `qa_category`, `qa_email_recv`, `qa_sms_recv`, `qa_html`, `qa_subject`, `qa_content`, `qa_status`, `qa_file1`, `qa_source1`, `qa_file2`, `qa_source2`, `qa_ip`, `qa_datetime`, `qa_1`, `qa_2`, `qa_3`, `qa_4`, `qa_5`, `qa_6`, `qa_7`, `qa_8`, `qa_9`, `qa_10`, `qa_11`, `qa_12`, `qa_13`, `qa_14`, `qa_15`, `qa_16`, `qa_17`, `qa_18`, `qa_19`, `qa_20`, `qa_21`, `qa_22`, `qa_23`, `qa_24`, `qa_25`, `qa_26`, `qa_27`, `qa_28`, `qa_29`, `qa_30`, `qa_31`, `qa_32`, `qa_33`, `qa_34`, `qa_35`, `qa_36`, `qa_37`, `qa_38`, `qa_39`, `qa_40`, `qa_41`, `qa_42`, `qa_43`, `qa_44`, `qa_45`, `qa_46`, `qa_47`, `qa_48`, `qa_49`, `qa_50`, `qa_51`, `qa_52`, `qa_53`, `qa_54`, `qa_55`, `qa_56`, `qa_57`, `qa_58`, `qa_59`, `qa_60`, `qa_61`, `qa_62`, `qa_63`, `qa_64`, `qa_65`, `qa_66`, `qa_67`, `qa_68`, `qa_69`, `qa_70`, `qa_71`, `qa_72`, `qa_73`, `qa_74`, `qa_75`) VALUES
(1, -1, 0, 0, 'admin', '최고관리자', 'admin@domain.com', '', 0, '회원', 0, 0, 1, 'aaaaaa', 'ccccc', 0, '', '', '', '', '::1', '2017-04-21 15:30:18', 'a', 'aa', 'aaa', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'b'),
(2, -2, 0, 0, 'admin', '최고관리자', 'admin@domain.com', '', 0, '포인트', 0, 0, 1, '22222222', '4444', 0, '', '', '', '', '::1', '2017-04-21 15:42:31', '2', '22', '222', '2', '22', '22', '222', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, -3, 0, 0, 'admin', '최고관리자', 'admin@domain.com', '', 0, '포인트', 0, 0, 1, 'cccccccc', 'ccccc', 0, '', '', '', '', '::1', '2017-04-21 15:45:13', 'c', 'cc', 'ccc', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'c'),
(4, -4, 0, 0, 'admin', '최고관리자', 'admin@domain.com', '', 0, '포인트', 0, 0, 1, 'dddddddd', 'aaf', 0, '', '', '', '', '::1', '2017-04-21 15:56:31', 'ddddddddd', 'dddd', 'dddddd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ddd'),
(5, -5, 5, 5, 'admin', '최고관리자', 'admin@domain.com', '', 0, '회원', 0, 0, 1, 'ㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱ', 0, '', '', '', '', '::1', '2017-04-21 15:59:24', 'ㄱㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱ', '', 'ㄱㄱㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', 'ㄱㄱㄱ', '', 'ㄱㄱㄱㄱㄱㄱㄱ', '', '', 'ㄱㄱㄱㄱ'),
(6, 0, 0, 0, '', '', '', '', 0, '', 0, 0, 0, '', '', 0, '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(7, 0, 0, 0, '', '', '', '', 0, '', 0, 0, 0, '', '', 0, '', '', '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, -6, 8, 8, 'admin', '최고관리자', 'admin@domain.com', '', 0, '포인트', 0, 0, 1, 'ㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', 0, '', '', '', '', '::1', '2017-04-21 16:02:36', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷ', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷ', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷ');

-- --------------------------------------------------------

--
-- Table structure for table `g5_scrap`
--

CREATE TABLE IF NOT EXISTS `g5_scrap` (
  `ms_id` int(11) NOT NULL,
  `mb_id` varchar(20) NOT NULL DEFAULT '',
  `bo_table` varchar(20) NOT NULL DEFAULT '',
  `wr_id` varchar(15) NOT NULL DEFAULT '',
  `ms_datetime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `qb_1` varchar(255) NOT NULL DEFAULT '',
  `qb_2` varchar(255) NOT NULL DEFAULT '',
  `qb_3` varchar(255) NOT NULL DEFAULT '',
  `qb_4` varchar(255) NOT NULL DEFAULT '',
  `qb_5` varchar(255) NOT NULL DEFAULT '',
  `qb_6` varchar(255) NOT NULL DEFAULT '',
  `qb_7` varchar(255) NOT NULL DEFAULT '',
  `qb_8` varchar(255) NOT NULL DEFAULT '',
  `qb_9` varchar(255) NOT NULL DEFAULT '',
  `qb_10` varchar(255) NOT NULL DEFAULT '',
  `qb_11` varchar(255) NOT NULL DEFAULT '',
  `qb_12` varchar(255) NOT NULL DEFAULT '',
  `qb_13` varchar(255) NOT NULL DEFAULT '',
  `qb_14` varchar(255) NOT NULL DEFAULT '',
  `qb_15` varchar(255) NOT NULL DEFAULT '',
  `qb_16` varchar(255) NOT NULL DEFAULT '',
  `qb_17` varchar(255) NOT NULL DEFAULT '',
  `qb_18` varchar(255) NOT NULL DEFAULT '',
  `qb_19` varchar(255) NOT NULL DEFAULT '',
  `qb_20` varchar(255) NOT NULL DEFAULT '',
  `qb_21` varchar(255) NOT NULL DEFAULT '',
  `qb_22` varchar(255) NOT NULL DEFAULT '',
  `qb_23` varchar(255) NOT NULL DEFAULT '',
  `qb_24` varchar(255) NOT NULL DEFAULT '',
  `qb_25` varchar(255) NOT NULL DEFAULT '',
  `qb_26` varchar(255) NOT NULL DEFAULT '',
  `qb_27` varchar(255) NOT NULL DEFAULT '',
  `qb_28` varchar(255) NOT NULL DEFAULT '',
  `qb_29` varchar(255) NOT NULL DEFAULT '',
  `qb_30` varchar(255) NOT NULL DEFAULT '',
  `qb_31` varchar(255) NOT NULL DEFAULT '',
  `qb_32` varchar(255) NOT NULL DEFAULT '',
  `qb_33` varchar(255) NOT NULL DEFAULT '',
  `qb_34` varchar(255) NOT NULL DEFAULT '',
  `qb_35` varchar(255) NOT NULL DEFAULT '',
  `qb_36` varchar(255) NOT NULL DEFAULT '',
  `qb_37` varchar(255) NOT NULL DEFAULT '',
  `qb_38` varchar(255) NOT NULL DEFAULT '',
  `qb_39` varchar(255) NOT NULL DEFAULT '',
  `qb_40` varchar(255) NOT NULL DEFAULT '',
  `qb_41` varchar(255) NOT NULL DEFAULT '',
  `qb_42` varchar(255) NOT NULL DEFAULT '',
  `qb_43` varchar(255) NOT NULL DEFAULT '',
  `qb_44` varchar(255) NOT NULL DEFAULT '',
  `qb_45` varchar(255) NOT NULL DEFAULT '',
  `qb_46` varchar(255) NOT NULL DEFAULT '',
  `qb_47` varchar(255) NOT NULL DEFAULT '',
  `qb_48` varchar(255) NOT NULL DEFAULT '',
  `qb_49` varchar(255) NOT NULL DEFAULT '',
  `qb_50` varchar(255) NOT NULL DEFAULT '',
  `qb_51` varchar(255) NOT NULL DEFAULT '',
  `qb_52` varchar(255) NOT NULL DEFAULT '',
  `qb_53` varchar(255) NOT NULL DEFAULT '',
  `qb_54` varchar(255) NOT NULL DEFAULT '',
  `qb_55` varchar(255) NOT NULL DEFAULT '',
  `qb_56` varchar(255) NOT NULL DEFAULT '',
  `qb_57` varchar(255) NOT NULL DEFAULT '',
  `qb_58` varchar(255) NOT NULL DEFAULT '',
  `qb_59` varchar(255) NOT NULL DEFAULT '',
  `qb_60` varchar(255) NOT NULL DEFAULT '',
  `qb_61` varchar(255) NOT NULL DEFAULT '',
  `qb_62` varchar(255) NOT NULL DEFAULT '',
  `qb_63` varchar(255) NOT NULL DEFAULT '',
  `qb_64` varchar(255) NOT NULL DEFAULT '',
  `qb_65` varchar(255) NOT NULL DEFAULT '',
  `qb_66` varchar(255) NOT NULL DEFAULT '',
  `qb_67` varchar(255) NOT NULL DEFAULT '',
  `qb_68` varchar(255) NOT NULL DEFAULT '',
  `qb_69` varchar(255) NOT NULL DEFAULT '',
  `qb_70` varchar(255) NOT NULL DEFAULT '',
  `qb_71` varchar(255) NOT NULL DEFAULT '',
  `qb_72` varchar(255) NOT NULL DEFAULT '',
  `qb_73` varchar(255) NOT NULL DEFAULT '',
  `qb_74` varchar(255) NOT NULL DEFAULT '',
  `qb_75` varchar(255) NOT NULL DEFAULT '',
  `qb_76` varchar(255) NOT NULL DEFAULT '',
  `qb_77` varchar(255) NOT NULL DEFAULT '',
  `qb_78` varchar(255) NOT NULL DEFAULT '',
  `qb_79` varchar(255) NOT NULL DEFAULT '',
  `qb_80` varchar(255) NOT NULL DEFAULT '',
  `qb_81` varchar(255) NOT NULL DEFAULT '',
  `qb_82` varchar(255) NOT NULL DEFAULT '',
  `qb_83` varchar(255) NOT NULL DEFAULT '',
  `qb_84` varchar(255) NOT NULL DEFAULT '',
  `qb_85` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `g5_scrap`
--

INSERT INTO `g5_scrap` (`ms_id`, `mb_id`, `bo_table`, `wr_id`, `ms_datetime`, `qb_1`, `qb_2`, `qb_3`, `qb_4`, `qb_5`, `qb_6`, `qb_7`, `qb_8`, `qb_9`, `qb_10`, `qb_11`, `qb_12`, `qb_13`, `qb_14`, `qb_15`, `qb_16`, `qb_17`, `qb_18`, `qb_19`, `qb_20`, `qb_21`, `qb_22`, `qb_23`, `qb_24`, `qb_25`, `qb_26`, `qb_27`, `qb_28`, `qb_29`, `qb_30`, `qb_31`, `qb_32`, `qb_33`, `qb_34`, `qb_35`, `qb_36`, `qb_37`, `qb_38`, `qb_39`, `qb_40`, `qb_41`, `qb_42`, `qb_43`, `qb_44`, `qb_45`, `qb_46`, `qb_47`, `qb_48`, `qb_49`, `qb_50`, `qb_51`, `qb_52`, `qb_53`, `qb_54`, `qb_55`, `qb_56`, `qb_57`, `qb_58`, `qb_59`, `qb_60`, `qb_61`, `qb_62`, `qb_63`, `qb_64`, `qb_65`, `qb_66`, `qb_67`, `qb_68`, `qb_69`, `qb_70`, `qb_71`, `qb_72`, `qb_73`, `qb_74`, `qb_75`, `qb_76`, `qb_77`, `qb_78`, `qb_79`, `qb_80`, `qb_81`, `qb_82`, `qb_83`, `qb_84`, `qb_85`) VALUES
(1, '', '', '', '0000-00-00 00:00:00', 'bb', 'bbb', 'bbbb', '', 'bbbbbb', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(3, '', '', '', '0000-00-00 00:00:00', '3', '33', '333', '', '33333', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(4, '', '', '', '0000-00-00 00:00:00', 'cc', 'ccc', 'cccc', '', 'c', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test'),
(5, '', '', '', '0000-00-00 00:00:00', 'ddd', 'dddd', 'ddddd', '', 'dddddddddd', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'test'),
(6, '', '', '', '0000-00-00 00:00:00', 'ㄱㄱㄱㄱㄱ', 'ㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱㄱㄱ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄱㄱㄱㄱㄱㄱㄱ', '', '', 'test'),
(7, '', '', '', '0000-00-00 00:00:00', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(8, '', '', '', '0000-00-00 00:00:00', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷ', 'ㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'ㄷㄷㄷㄷㄷㄷㄷㄷ', '', '', '', '', '', '', '', '', '', '', '', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `g5_uniqid`
--

CREATE TABLE IF NOT EXISTS `g5_uniqid` (
  `uq_id` bigint(20) unsigned NOT NULL,
  `uq_ip` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_visit`
--

CREATE TABLE IF NOT EXISTS `g5_visit` (
  `vi_id` int(11) NOT NULL DEFAULT '0',
  `vi_ip` varchar(255) NOT NULL DEFAULT '',
  `vi_date` date NOT NULL DEFAULT '0000-00-00',
  `vi_time` time NOT NULL DEFAULT '00:00:00',
  `vi_referer` text NOT NULL,
  `vi_agent` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `g5_visit_sum`
--

CREATE TABLE IF NOT EXISTS `g5_visit_sum` (
  `vs_date` date NOT NULL DEFAULT '0000-00-00',
  `vs_count` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `g5_apms_cache`
--
ALTER TABLE `g5_apms_cache`
  ADD PRIMARY KEY (`c_id`),
  ADD UNIQUE KEY `c_name` (`c_name`);

--
-- Indexes for table `g5_apms_data`
--
ALTER TABLE `g5_apms_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g5_apms_event`
--
ALTER TABLE `g5_apms_event`
  ADD PRIMARY KEY (`ev_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_apms_like`
--
ALTER TABLE `g5_apms_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g5_apms_page`
--
ALTER TABLE `g5_apms_page`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g5_apms_playlist`
--
ALTER TABLE `g5_apms_playlist`
  ADD PRIMARY KEY (`pl_id`);

--
-- Indexes for table `g5_apms_poll`
--
ALTER TABLE `g5_apms_poll`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `g5_apms_response`
--
ALTER TABLE `g5_apms_response`
  ADD PRIMARY KEY (`id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_apms_shingo`
--
ALTER TABLE `g5_apms_shingo`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- Indexes for table `g5_apms_tag`
--
ALTER TABLE `g5_apms_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag` (`tag`,`lastdate`);

--
-- Indexes for table `g5_apms_tag_log`
--
ALTER TABLE `g5_apms_tag_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `g5_auth`
--
ALTER TABLE `g5_auth`
  ADD PRIMARY KEY (`mb_id`,`au_menu`);

--
-- Indexes for table `g5_autosave`
--
ALTER TABLE `g5_autosave`
  ADD PRIMARY KEY (`as_id`),
  ADD UNIQUE KEY `as_uid` (`as_uid`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_board`
--
ALTER TABLE `g5_board`
  ADD PRIMARY KEY (`bo_table`);

--
-- Indexes for table `g5_board_file`
--
ALTER TABLE `g5_board_file`
  ADD PRIMARY KEY (`bo_table`,`wr_id`,`bf_no`);

--
-- Indexes for table `g5_board_good`
--
ALTER TABLE `g5_board_good`
  ADD PRIMARY KEY (`bg_id`),
  ADD UNIQUE KEY `fkey1` (`bo_table`,`wr_id`,`mb_id`);

--
-- Indexes for table `g5_board_new`
--
ALTER TABLE `g5_board_new`
  ADD PRIMARY KEY (`bn_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  ADD PRIMARY KEY (`cr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_content`
--
ALTER TABLE `g5_content`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `g5_faq`
--
ALTER TABLE `g5_faq`
  ADD PRIMARY KEY (`fa_id`),
  ADD KEY `fm_id` (`fm_id`);

--
-- Indexes for table `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  ADD PRIMARY KEY (`fm_id`);

--
-- Indexes for table `g5_group`
--
ALTER TABLE `g5_group`
  ADD PRIMARY KEY (`gr_id`);

--
-- Indexes for table `g5_group_member`
--
ALTER TABLE `g5_group_member`
  ADD PRIMARY KEY (`gm_id`),
  ADD KEY `gr_id` (`gr_id`),
  ADD KEY `mb_id` (`mb_id`);

--
-- Indexes for table `g5_login`
--
ALTER TABLE `g5_login`
  ADD PRIMARY KEY (`lo_ip`);

--
-- Indexes for table `g5_mail`
--
ALTER TABLE `g5_mail`
  ADD PRIMARY KEY (`ma_id`);

--
-- Indexes for table `g5_member`
--
ALTER TABLE `g5_member`
  ADD PRIMARY KEY (`mb_no`),
  ADD UNIQUE KEY `mb_id` (`mb_id`),
  ADD KEY `mb_today_login` (`mb_today_login`),
  ADD KEY `mb_datetime` (`mb_datetime`);

--
-- Indexes for table `g5_memo`
--
ALTER TABLE `g5_memo`
  ADD PRIMARY KEY (`me_id`),
  ADD KEY `me_recv_mb_id` (`me_recv_mb_id`);

--
-- Indexes for table `g5_menu`
--
ALTER TABLE `g5_menu`
  ADD PRIMARY KEY (`me_id`);

--
-- Indexes for table `g5_new_win`
--
ALTER TABLE `g5_new_win`
  ADD PRIMARY KEY (`nw_id`);

--
-- Indexes for table `g5_point`
--
ALTER TABLE `g5_point`
  ADD PRIMARY KEY (`po_id`),
  ADD KEY `index1` (`mb_id`,`po_rel_table`,`po_rel_id`,`po_rel_action`),
  ADD KEY `index2` (`po_expire_date`);

--
-- Indexes for table `g5_poll`
--
ALTER TABLE `g5_poll`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `g5_poll_etc`
--
ALTER TABLE `g5_poll_etc`
  ADD PRIMARY KEY (`pc_id`);

--
-- Indexes for table `g5_popular`
--
ALTER TABLE `g5_popular`
  ADD PRIMARY KEY (`pp_id`),
  ADD UNIQUE KEY `index1` (`pp_date`,`pp_word`,`pp_ip`);

--
-- Indexes for table `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  ADD PRIMARY KEY (`qa_id`),
  ADD KEY `qa_num_parent` (`qa_num`,`qa_parent`);

--
-- Indexes for table `g5_scrap`
--
ALTER TABLE `g5_scrap`
  ADD PRIMARY KEY (`ms_id`);

--
-- Indexes for table `g5_uniqid`
--
ALTER TABLE `g5_uniqid`
  ADD PRIMARY KEY (`uq_id`);

--
-- Indexes for table `g5_visit`
--
ALTER TABLE `g5_visit`
  ADD PRIMARY KEY (`vi_id`),
  ADD UNIQUE KEY `index1` (`vi_ip`,`vi_date`),
  ADD KEY `index2` (`vi_date`);

--
-- Indexes for table `g5_visit_sum`
--
ALTER TABLE `g5_visit_sum`
  ADD PRIMARY KEY (`vs_date`),
  ADD KEY `index1` (`vs_count`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `g5_apms_cache`
--
ALTER TABLE `g5_apms_cache`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_data`
--
ALTER TABLE `g5_apms_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_event`
--
ALTER TABLE `g5_apms_event`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_like`
--
ALTER TABLE `g5_apms_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_page`
--
ALTER TABLE `g5_apms_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `g5_apms_playlist`
--
ALTER TABLE `g5_apms_playlist`
  MODIFY `pl_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_poll`
--
ALTER TABLE `g5_apms_poll`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_response`
--
ALTER TABLE `g5_apms_response`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_shingo`
--
ALTER TABLE `g5_apms_shingo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_tag`
--
ALTER TABLE `g5_apms_tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_apms_tag_log`
--
ALTER TABLE `g5_apms_tag_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_autosave`
--
ALTER TABLE `g5_autosave`
  MODIFY `as_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_board_good`
--
ALTER TABLE `g5_board_good`
  MODIFY `bg_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_board_new`
--
ALTER TABLE `g5_board_new`
  MODIFY `bn_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_cert_history`
--
ALTER TABLE `g5_cert_history`
  MODIFY `cr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_faq`
--
ALTER TABLE `g5_faq`
  MODIFY `fa_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_faq_master`
--
ALTER TABLE `g5_faq_master`
  MODIFY `fm_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `g5_group_member`
--
ALTER TABLE `g5_group_member`
  MODIFY `gm_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_mail`
--
ALTER TABLE `g5_mail`
  MODIFY `ma_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_member`
--
ALTER TABLE `g5_member`
  MODIFY `mb_no` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `g5_menu`
--
ALTER TABLE `g5_menu`
  MODIFY `me_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_new_win`
--
ALTER TABLE `g5_new_win`
  MODIFY `nw_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_point`
--
ALTER TABLE `g5_point`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `g5_poll`
--
ALTER TABLE `g5_poll`
  MODIFY `po_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `g5_popular`
--
ALTER TABLE `g5_popular`
  MODIFY `pp_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `g5_qa_content`
--
ALTER TABLE `g5_qa_content`
  MODIFY `qa_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `g5_scrap`
--
ALTER TABLE `g5_scrap`
  MODIFY `ms_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
