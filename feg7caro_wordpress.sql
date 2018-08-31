-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-08-2018 a las 15:19:28
-- Versión del servidor: 5.6.39-cll-lve
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `feg7caro_wordpress`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_album`
--

CREATE TABLE `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_album_gallery`
--

CREATE TABLE `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_gallery`
--

CREATE TABLE `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `page_link` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `random_preview_image` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `gallery_source` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`, `modified_date`) VALUES
(1, 'Home', 'home', '', '', '/thumb/foto1g.jpg', '', 0, 1, 1, '', '', 12, '', 1535072959);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image`
--

CREATE TABLE `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `thumb_url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `description` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `alt` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `size` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `filetype` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `resolution` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pricelist_id` bigint(20) NOT NULL,
  `modified_date` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`, `modified_date`) VALUES
(1, 1, 'foto2g', 'foto2g', '/foto2g.jpg', '/thumb/foto2g.jpg', '', 'foto2g', '24 August 2018, 01:24', '135 KB', 'JPG', '800 x 600 px', 1, 2, 1, 0, 0, 0, 0, '', 0, 0),
(2, 1, 'foto1g', 'foto1g', '/foto1g.jpg', '/thumb/foto1g.jpg', '', 'foto1g', '24 August 2018, 01:24', '65 KB', 'JPG', '800 x 600 px', 1, 1, 1, 0, 0, 0, 0, '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_comment`
--

CREATE TABLE `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mail` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_rate`
--

CREATE TABLE `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` varchar(64) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_image_tag`
--

CREATE TABLE `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_shortcode`
--

CREATE TABLE `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' use_option_defaults=\"1\" type=\"gallery\" theme_id=\"1\" gallery_id=\"1\" tag=\"0\" gallery_type=\"thumbnails\"'),
(2, ' gallery_type=\"thumbnails\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"0\" tag=\"0\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"hover\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"undefined\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(3, ' gallery_type=\"thumbnails\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"0\" tag=\"0\" thumb_width=\"250\" thumb_height=\"140\" image_column_number=\"5\" image_enable_page=\"1\" images_per_page=\"30\" load_more_image_count=\"30\" sort_by=\"order\" order_by=\"asc\" show_search_box=\"0\" placeholder=\"Search\" search_box_width=\"330\" show_sort_images=\"0\" show_tag_box=\"0\" showthumbs_name=\"0\" show_gallery_description=\"0\" image_title=\"hover\" play_icon=\"1\" gallery_download=\"0\" ecommerce_icon=\"undefined\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"'),
(4, ' gallery_type=\"slideshow\" theme_id=\"1\" use_option_defaults=\"1\" gallery_id=\"0\" tag=\"0\" slideshow_effect=\"fade\" slideshow_interval=\"5\" slideshow_width=\"800\" slideshow_height=\"500\" sort_by=\"order\" order_by=\"asc\" enable_slideshow_autoplay=\"0\" enable_slideshow_shuffle=\"0\" enable_slideshow_ctrl=\"1\" autohide_slideshow_navigation=\"1\" enable_slideshow_filmstrip=\"1\" slideshow_filmstrip_height=\"90\" slideshow_enable_title=\"0\" slideshow_title_position=\"top-right\" slideshow_title_full_width=\"0\" slideshow_enable_description=\"0\" slideshow_description_position=\"bottom-right\" enable_slideshow_music=\"0\" slideshow_music_url=\"\" slideshow_effect_duration=\"0.1\" gallery_download=\"0\" thumb_click_action=\"open_lightbox\" thumb_link_target=\"1\" popup_fullscreen=\"1\" popup_width=\"800\" popup_height=\"500\" popup_effect=\"fade\" popup_effect_duration=\"0.1\" popup_autoplay=\"0\" popup_interval=\"2.5\" popup_enable_filmstrip=\"1\" popup_filmstrip_height=\"60\" popup_enable_ctrl_btn=\"1\" popup_enable_fullscreen=\"1\" popup_enable_comment=\"1\" popup_enable_email=\"1\" popup_enable_captcha=\"0\" comment_moderation=\"0\" popup_enable_info=\"1\" popup_info_always_show=\"0\" popup_info_full_width=\"1\" autohide_lightbox_navigation=\"0\" popup_hit_counter=\"0\" popup_enable_rate=\"0\" popup_enable_fullsize_image=\"0\" popup_enable_download=\"0\" show_image_counts=\"0\" enable_loop=\"1\" enable_addthis=\"0\" addthis_profile_id=\"\" popup_enable_facebook=\"1\" popup_enable_twitter=\"1\" popup_enable_google=\"1\" popup_enable_pinterest=\"0\" popup_enable_tumblr=\"0\" popup_enable_ecommerce=\"undefined\" watermark_type=\"none\" watermark_link=\"https://10web.io/\"');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_bwg_theme`
--

CREATE TABLE `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Light', '{\"thumb_margin\":\"4\",\"container_margin\":\"1\",\"thumb_padding\":\"0\",\"thumb_border_radius\":\"0\",\"thumb_border_width\":0,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"CCCCCC\",\"thumb_bg_color\":\"000000\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_transition\":1,\"thumb_title_margin\":\"2px\",\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_shadow\":\"\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_gal_title_font_color\":\"000000\",\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"solid\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FFFFFF\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":100,\"lightbox_ctrl_btn_color\":\"808080\",\"lightbox_toggle_btn_height\":20,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"FFFFFF\",\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_ctrl_cont_transparent\":85,\"lightbox_close_btn_bg_color\":\"FFFFFF\",\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_width\":2,\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"0\",\"lightbox_close_btn_color\":\"808080\",\"lightbox_close_btn_size\":20,\"lightbox_close_btn_width\":30,\"lightbox_close_btn_height\":30,\"lightbox_close_btn_top\":\"-20\",\"lightbox_close_btn_right\":\"-15\",\"lightbox_close_btn_full_color\":\"000000\",\"lightbox_close_btn_transparent\":60,\"lightbox_rl_btn_bg_color\":\"FFFFFF\",\"lightbox_rl_btn_transparent\":\"60\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":0,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"ADADAD\",\"lightbox_rl_btn_height\":35,\"lightbox_rl_btn_width\":35,\"lightbox_rl_btn_size\":25,\"lightbox_close_rl_btn_hover_color\":\"808080\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":350,\"lightbox_comment_bg_color\":\"FFFFFF\",\"lightbox_comment_font_color\":\"7A7A7A\",\"lightbox_comment_font_style\":\"Ubuntu\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"2F2F2F\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"7px\",\"lightbox_comment_button_padding\":\"10px 10px\",\"lightbox_comment_input_bg_color\":\"F7F8F9\",\"lightbox_comment_input_border_color\":\"EBEBEB\",\"lightbox_comment_input_border_width\":2,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"7px\",\"lightbox_comment_input_padding\":\"5px\",\"lightbox_comment_separator_width\":20,\"lightbox_comment_separator_style\":\"none\",\"lightbox_comment_separator_color\":\"383838\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"808080\",\"lightbox_filmstrip_rl_bg_color\":\"EBEBEB\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"808080\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_pos\":\"bottom\",\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_overlay_bg_transparent\":60,\"lightbox_bg_color\":\"FFFFFF\",\"lightbox_overlay_bg_color\":\"EEEEEE\",\"lightbox_rl_btn_style\":\"fa-angle\",\"lightbox_bg_transparent\":100,\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"0\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"solid\",\"blog_style_border_color\":\"F5F5F5\",\"blog_style_bg_color\":\"FFFFFF\",\"blog_style_transparent\":80,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_font_size\":20,\"blog_style_share_buttons_color\":\"B3AFAF\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"0\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"F5F5F5\",\"image_browser_bg_color\":\"EBEBEB\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"0px 5px 0px 5px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"EBEBEB\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":15,\"image_browser_img_font_family\":\"Ubuntu\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":2,\"image_browser_full_border_style\":\"none\",\"image_browser_full_border_color\":\"F7F7F7\",\"image_browser_full_bg_color\":\"F5F5F5\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"album_compact_title_margin\":\"2px\",\"album_compact_thumb_margin\":2,\"album_compact_back_padding\":\"0\",\"album_compact_thumb_padding\":0,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":0,\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_back_font_color\":\"000000\",\"album_compact_title_font_color\":\"FFFFFF\",\"album_compact_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_bg_transparent\":0,\"album_compact_thumb_box_shadow\":\"0px 0px 0px #888888\",\"album_compact_thumb_transition\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"CCCCCC\",\"album_compact_thumb_bg_color\":\"FFFFFF\",\"album_compact_back_font_weight\":\"bold\",\"album_compact_back_font_size\":16,\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"scale\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_hover_effect_value\":\"1.08\",\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":0,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":0,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"CCCCCC\",\"album_extended_thumb_bg_color\":\"FFFFFF\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":0,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"scale\",\"album_extended_thumb_hover_effect_value\":\"1.08\",\"album_extended_thumb_transition\":1,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":20,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0 0 0 0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"solid\",\"album_extended_div_separator_color\":\"E0E0E0\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":1,\"album_extended_thumb_div_border_style\":\"solid\",\"album_extended_thumb_div_border_color\":\"E8E8E8\",\"album_extended_thumb_div_padding\":\"5px\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"solid\",\"album_extended_text_div_border_color\":\"E8E8E8\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"F2D22E\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"F2F2F2\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"FFFFFF\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"D6D6D6\",\"slideshow_rl_btn_height\":37,\"slideshow_rl_btn_size\":12,\"slideshow_rl_btn_width\":37,\"slideshow_close_rl_btn_hover_color\":\"BABABA\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":0,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0px 2px 0 0 \",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":100,\"slideshow_filmstrip_rl_bg_color\":\"F2F2F2\",\"slideshow_filmstrip_rl_btn_color\":\"BABABA\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"0 0 0 0\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":12,\"slideshow_dots_height\":12,\"slideshow_dots_border_radius\":\"5px\",\"slideshow_dots_background_color\":\"F2D22E\",\"slideshow_dots_margin\":3,\"slideshow_dots_active_background_color\":\"FFFFFF\",\"slideshow_dots_active_border_width\":1,\"slideshow_dots_active_border_color\":\"000000\",\"slideshow_play_pause_btn_size\":35,\"slideshow_rl_btn_style\":\"fa-chevron\",\"masonry_thumb_padding\":\"2\",\"masonry_thumb_border_radius\":\"0\",\"masonry_thumb_border_width\":\"0\",\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":\"0\",\"masonry_thumb_transparent\":\"100\",\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"scale\",\"masonry_thumb_hover_effect_value\":\"1.08\",\"masonry_thumb_transition\":\"1\",\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"mosaic_thumb_padding\":\"2\",\"mosaic_thumb_border_radius\":\"0\",\"mosaic_thumb_border_width\":\"0\",\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":\"0\",\"mosaic_thumb_transparent\":\"100\",\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"scale\",\"mosaic_thumb_hover_effect_value\":\"1.08\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"lightbox_info_pos\":\"bottom\",\"lightbox_info_align\":\"left\",\"lightbox_info_bg_color\":\"FFFFFF\",\"lightbox_info_bg_transparent\":\"70\",\"lightbox_info_border_width\":\"1\",\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"0px\",\"lightbox_info_padding\":\"10px 7px 44px 10px\",\"lightbox_info_margin\":\"10px 10px -5px 10px\",\"lightbox_title_color\":\"808080\",\"lightbox_title_font_style\":\"Ubuntu\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":\"16\",\"lightbox_description_color\":\"B0B0B0\",\"lightbox_description_font_style\":\"Ubuntu\",\"lightbox_description_font_weight\":\"bold\",\"lightbox_description_font_size\":\"13\",\"lightbox_rate_pos\":\"top\",\"lightbox_rate_align\":\"left\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":\"20\",\"lightbox_rate_stars_count\":\"5\",\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":\"70\",\"lightbox_hit_border_width\":\"1\",\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":\"14\",\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":16,\"album_masonry_back_font_weight\":\"bold\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"\",\"album_masonry_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_thumb_margin\":0,\"album_masonry_thumb_padding\":0,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":0,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"CCCCCC\",\"album_masonry_thumb_bg_color\":\"FFFFFF\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":0,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"scale\",\"album_masonry_thumb_hover_effect_value\":\"1.08\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":50,\"carousel_rl_btn_bg_color\":\"FFFFFF\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"303030\",\"carousel_rl_btn_height\":35,\"carousel_rl_btn_size\":15,\"carousel_play_pause_btn_size\":25,\"carousel_rl_btn_width\":35,\"carousel_close_rl_btn_hover_color\":\"191919\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"arial\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"none\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":\"1\"}', 1),
(2, 'Dark', '{\"thumb_margin\":\"4\",\"container_margin\":\"1\",\"thumb_padding\":\"0\",\"thumb_border_radius\":\"0\",\"thumb_border_width\":5,\"thumb_border_style\":\"none\",\"thumb_border_color\":\"FFFFFF\",\"thumb_bg_color\":\"000000\",\"thumbs_bg_color\":\"FFFFFF\",\"thumb_bg_transparent\":0,\"thumb_box_shadow\":\"\",\"thumb_transparent\":100,\"thumb_align\":\"center\",\"thumb_hover_effect\":\"zoom\",\"thumb_hover_effect_value\":\"1.08\",\"thumb_transition\":1,\"thumb_title_font_color\":\"323A45\",\"thumb_title_font_color_hover\":\"FFFFFF\",\"thumb_title_font_style\":\"Ubuntu\",\"thumb_title_pos\":\"bottom\",\"thumb_title_font_size\":16,\"thumb_title_font_weight\":\"bold\",\"thumb_title_margin\":\"5px\",\"thumb_title_shadow\":\"\",\"thumb_gal_title_font_color\":\"000000\",\"thumb_gal_title_font_style\":\"Ubuntu\",\"thumb_gal_title_font_size\":18,\"thumb_gal_title_font_weight\":\"bold\",\"thumb_gal_title_margin\":\"2px\",\"thumb_gal_title_shadow\":\"\",\"thumb_gal_title_align\":\"center\",\"page_nav_position\":\"bottom\",\"page_nav_align\":\"center\",\"page_nav_number\":0,\"page_nav_font_size\":12,\"page_nav_font_style\":\"segoe ui\",\"page_nav_font_color\":\"666666\",\"page_nav_font_weight\":\"bold\",\"page_nav_border_width\":1,\"page_nav_border_style\":\"none\",\"page_nav_border_color\":\"E3E3E3\",\"page_nav_border_radius\":\"0\",\"page_nav_margin\":\"0\",\"page_nav_padding\":\"3px 6px\",\"page_nav_button_bg_color\":\"FCFCFC\",\"page_nav_button_bg_transparent\":100,\"page_nav_box_shadow\":\"0\",\"page_nav_button_transition\":1,\"page_nav_button_text\":0,\"lightbox_overlay_bg_color\":\"000000\",\"lightbox_overlay_bg_transparent\":70,\"lightbox_bg_color\":\"000000\",\"lightbox_ctrl_btn_pos\":\"bottom\",\"lightbox_ctrl_btn_align\":\"center\",\"lightbox_ctrl_btn_height\":20,\"lightbox_ctrl_btn_margin_top\":10,\"lightbox_ctrl_btn_margin_left\":7,\"lightbox_ctrl_btn_transparent\":80,\"lightbox_ctrl_btn_color\":\"FFFFFF\",\"lightbox_toggle_btn_height\":14,\"lightbox_toggle_btn_width\":100,\"lightbox_ctrl_cont_bg_color\":\"000000\",\"lightbox_ctrl_cont_transparent\":80,\"lightbox_ctrl_cont_border_radius\":4,\"lightbox_close_btn_transparent\":95,\"lightbox_close_btn_bg_color\":\"000000\",\"lightbox_close_btn_border_width\":0,\"lightbox_close_btn_border_radius\":\"16px\",\"lightbox_close_btn_border_style\":\"none\",\"lightbox_close_btn_border_color\":\"FFFFFF\",\"lightbox_close_btn_box_shadow\":\"\",\"lightbox_close_btn_color\":\"FFFFFF\",\"lightbox_close_btn_size\":10,\"lightbox_close_btn_width\":20,\"lightbox_close_btn_height\":20,\"lightbox_close_btn_top\":\"-10\",\"lightbox_close_btn_right\":\"-10\",\"lightbox_close_btn_full_color\":\"FFFFFF\",\"lightbox_rl_btn_bg_color\":\"000000\",\"lightbox_rl_btn_border_radius\":\"20px\",\"lightbox_rl_btn_border_width\":2,\"lightbox_rl_btn_border_style\":\"none\",\"lightbox_rl_btn_border_color\":\"FFFFFF\",\"lightbox_rl_btn_box_shadow\":\"\",\"lightbox_rl_btn_color\":\"FFFFFF\",\"lightbox_rl_btn_height\":40,\"lightbox_rl_btn_width\":40,\"lightbox_rl_btn_size\":20,\"lightbox_close_rl_btn_hover_color\":\"FFFFFF\",\"lightbox_comment_pos\":\"left\",\"lightbox_comment_width\":400,\"lightbox_comment_bg_color\":\"000000\",\"lightbox_comment_font_color\":\"CCCCCC\",\"lightbox_comment_font_style\":\"segoe ui\",\"lightbox_comment_font_size\":12,\"lightbox_comment_button_bg_color\":\"333333\",\"lightbox_comment_button_border_color\":\"666666\",\"lightbox_comment_button_border_width\":1,\"lightbox_comment_button_border_style\":\"none\",\"lightbox_comment_button_border_radius\":\"3px\",\"lightbox_comment_button_padding\":\"3px 10px\",\"lightbox_comment_input_bg_color\":\"333333\",\"lightbox_comment_input_border_color\":\"666666\",\"lightbox_comment_input_border_width\":1,\"lightbox_comment_input_border_style\":\"none\",\"lightbox_comment_input_border_radius\":\"0\",\"lightbox_comment_input_padding\":\"3px\",\"lightbox_comment_separator_width\":1,\"lightbox_comment_separator_style\":\"solid\",\"lightbox_comment_separator_color\":\"2B2B2B\",\"lightbox_comment_author_font_size\":14,\"lightbox_comment_date_font_size\":10,\"lightbox_comment_body_font_size\":12,\"lightbox_comment_share_button_color\":\"FFFFFF\",\"lightbox_filmstrip_pos\":\"top\",\"lightbox_filmstrip_rl_bg_color\":\"2B2B2B\",\"lightbox_filmstrip_rl_btn_size\":20,\"lightbox_filmstrip_rl_btn_color\":\"FFFFFF\",\"lightbox_filmstrip_thumb_margin\":\"0 1px\",\"lightbox_filmstrip_thumb_border_width\":1,\"lightbox_filmstrip_thumb_border_style\":\"none\",\"lightbox_filmstrip_thumb_border_color\":\"000000\",\"lightbox_filmstrip_thumb_border_radius\":\"0\",\"lightbox_filmstrip_thumb_deactive_transparent\":80,\"lightbox_filmstrip_thumb_active_border_width\":0,\"lightbox_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"lightbox_rl_btn_style\":\"fa-chevron\",\"lightbox_rl_btn_transparent\":80,\"lightbox_bg_transparent\":100,\"album_compact_back_font_color\":\"000000\",\"album_compact_back_font_style\":\"segoe ui\",\"album_compact_back_font_size\":14,\"album_compact_back_font_weight\":\"normal\",\"album_compact_back_padding\":\"0\",\"album_compact_title_font_color\":\"CCCCCC\",\"album_compact_title_font_style\":\"segoe ui\",\"album_compact_thumb_title_pos\":\"bottom\",\"album_compact_title_font_size\":16,\"album_compact_title_font_weight\":\"bold\",\"album_compact_title_margin\":\"5px\",\"album_compact_title_shadow\":\"\",\"album_compact_thumb_margin\":4,\"album_compact_thumb_padding\":4,\"album_compact_thumb_border_radius\":\"0\",\"album_compact_thumb_border_width\":1,\"album_compact_thumb_border_style\":\"none\",\"album_compact_thumb_border_color\":\"000000\",\"album_compact_thumb_bg_color\":\"E8E8E8\",\"album_compact_thumbs_bg_color\":\"FFFFFF\",\"album_compact_thumb_bg_transparent\":100,\"album_compact_thumb_box_shadow\":\"\",\"album_compact_thumb_transparent\":100,\"album_compact_thumb_align\":\"center\",\"album_compact_thumb_hover_effect\":\"rotate\",\"album_compact_thumb_hover_effect_value\":\"2deg\",\"album_compact_thumb_transition\":1,\"album_compact_gal_title_font_color\":\"CCCCCC\",\"album_compact_gal_title_font_style\":\"segoe ui\",\"album_compact_gal_title_font_size\":16,\"album_compact_gal_title_font_weight\":\"bold\",\"album_compact_gal_title_margin\":\"2px\",\"album_compact_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_compact_gal_title_align\":\"center\",\"album_extended_thumb_margin\":2,\"album_extended_thumb_padding\":4,\"album_extended_thumb_border_radius\":\"0\",\"album_extended_thumb_border_width\":4,\"album_extended_thumb_border_style\":\"none\",\"album_extended_thumb_border_color\":\"E8E8E8\",\"album_extended_thumb_bg_color\":\"E8E8E8\",\"album_extended_thumbs_bg_color\":\"FFFFFF\",\"album_extended_thumb_bg_transparent\":100,\"album_extended_thumb_box_shadow\":\"\",\"album_extended_thumb_transparent\":100,\"album_extended_thumb_align\":\"left\",\"album_extended_thumb_hover_effect\":\"rotate\",\"album_extended_thumb_hover_effect_value\":\"2deg\",\"album_extended_thumb_transition\":0,\"album_extended_back_font_color\":\"000000\",\"album_extended_back_font_style\":\"segoe ui\",\"album_extended_back_font_size\":16,\"album_extended_back_font_weight\":\"bold\",\"album_extended_back_padding\":\"0\",\"album_extended_div_bg_color\":\"FFFFFF\",\"album_extended_div_bg_transparent\":0,\"album_extended_div_border_radius\":\"0\",\"album_extended_div_margin\":\"0 0 5px 0\",\"album_extended_div_padding\":10,\"album_extended_div_separator_width\":1,\"album_extended_div_separator_style\":\"none\",\"album_extended_div_separator_color\":\"CCCCCC\",\"album_extended_thumb_div_bg_color\":\"FFFFFF\",\"album_extended_thumb_div_border_radius\":\"0\",\"album_extended_thumb_div_border_width\":0,\"album_extended_thumb_div_border_style\":\"none\",\"album_extended_thumb_div_border_color\":\"CCCCCC\",\"album_extended_thumb_div_padding\":\"0\",\"album_extended_text_div_bg_color\":\"FFFFFF\",\"album_extended_text_div_border_radius\":\"0\",\"album_extended_text_div_border_width\":1,\"album_extended_text_div_border_style\":\"none\",\"album_extended_text_div_border_color\":\"CCCCCC\",\"album_extended_text_div_padding\":\"5px\",\"album_extended_title_span_border_width\":1,\"album_extended_title_span_border_style\":\"none\",\"album_extended_title_span_border_color\":\"CCCCCC\",\"album_extended_title_font_color\":\"000000\",\"album_extended_title_font_style\":\"segoe ui\",\"album_extended_title_font_size\":16,\"album_extended_title_font_weight\":\"bold\",\"album_extended_title_margin_bottom\":2,\"album_extended_title_padding\":\"2px\",\"album_extended_desc_span_border_width\":1,\"album_extended_desc_span_border_style\":\"none\",\"album_extended_desc_span_border_color\":\"CCCCCC\",\"album_extended_desc_font_color\":\"000000\",\"album_extended_desc_font_style\":\"segoe ui\",\"album_extended_desc_font_size\":14,\"album_extended_desc_font_weight\":\"normal\",\"album_extended_desc_padding\":\"2px\",\"album_extended_desc_more_color\":\"FFC933\",\"album_extended_desc_more_size\":12,\"album_extended_gal_title_font_color\":\"CCCCCC\",\"album_extended_gal_title_font_style\":\"segoe ui\",\"album_extended_gal_title_font_size\":16,\"album_extended_gal_title_font_weight\":\"bold\",\"album_extended_gal_title_margin\":\"2px\",\"album_extended_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_extended_gal_title_align\":\"center\",\"masonry_thumb_padding\":4,\"masonry_thumb_border_radius\":\"2px\",\"masonry_thumb_border_width\":1,\"masonry_thumb_border_style\":\"none\",\"masonry_thumb_border_color\":\"CCCCCC\",\"masonry_thumbs_bg_color\":\"FFFFFF\",\"masonry_thumb_bg_transparent\":0,\"masonry_thumb_transparent\":80,\"masonry_thumb_align\":\"center\",\"masonry_thumb_hover_effect\":\"rotate\",\"masonry_thumb_hover_effect_value\":\"2deg\",\"masonry_thumb_transition\":0,\"masonry_thumb_gal_title_font_color\":\"CCCCCC\",\"masonry_thumb_gal_title_font_style\":\"segoe ui\",\"masonry_thumb_gal_title_font_size\":16,\"masonry_thumb_gal_title_font_weight\":\"bold\",\"masonry_thumb_gal_title_margin\":\"2px\",\"masonry_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"masonry_thumb_gal_title_align\":\"center\",\"slideshow_cont_bg_color\":\"000000\",\"slideshow_close_btn_transparent\":100,\"slideshow_rl_btn_bg_color\":\"000000\",\"slideshow_rl_btn_border_radius\":\"20px\",\"slideshow_rl_btn_border_width\":0,\"slideshow_rl_btn_border_style\":\"none\",\"slideshow_rl_btn_border_color\":\"FFFFFF\",\"slideshow_rl_btn_box_shadow\":\"\",\"slideshow_rl_btn_color\":\"FFFFFF\",\"slideshow_rl_btn_height\":40,\"slideshow_rl_btn_size\":20,\"slideshow_rl_btn_width\":40,\"slideshow_close_rl_btn_hover_color\":\"DBDBDB\",\"slideshow_filmstrip_pos\":\"bottom\",\"slideshow_filmstrip_thumb_border_width\":1,\"slideshow_filmstrip_thumb_border_style\":\"none\",\"slideshow_filmstrip_thumb_border_color\":\"000000\",\"slideshow_filmstrip_thumb_border_radius\":\"0\",\"slideshow_filmstrip_thumb_margin\":\"0 1px\",\"slideshow_filmstrip_thumb_active_border_width\":0,\"slideshow_filmstrip_thumb_active_border_color\":\"FFFFFF\",\"slideshow_filmstrip_thumb_deactive_transparent\":80,\"slideshow_filmstrip_rl_bg_color\":\"303030\",\"slideshow_filmstrip_rl_btn_color\":\"FFFFFF\",\"slideshow_filmstrip_rl_btn_size\":20,\"slideshow_title_font_size\":16,\"slideshow_title_font\":\"segoe ui\",\"slideshow_title_color\":\"FFFFFF\",\"slideshow_title_opacity\":70,\"slideshow_title_border_radius\":\"5px\",\"slideshow_title_background_color\":\"000000\",\"slideshow_title_padding\":\"5px 10px 5px 10px\",\"slideshow_description_font_size\":14,\"slideshow_description_font\":\"segoe ui\",\"slideshow_description_color\":\"FFFFFF\",\"slideshow_description_opacity\":70,\"slideshow_description_border_radius\":\"0\",\"slideshow_description_background_color\":\"000000\",\"slideshow_description_padding\":\"5px 10px 5px 10px\",\"slideshow_dots_width\":10,\"slideshow_dots_height\":10,\"slideshow_dots_border_radius\":\"10px\",\"slideshow_dots_background_color\":\"292929\",\"slideshow_dots_margin\":1,\"slideshow_dots_active_background_color\":\"292929\",\"slideshow_dots_active_border_width\":2,\"slideshow_dots_active_border_color\":\"FFC933\",\"slideshow_play_pause_btn_size\":60,\"slideshow_rl_btn_style\":\"fa-chevron\",\"blog_style_margin\":\"2px\",\"blog_style_padding\":\"4px\",\"blog_style_border_radius\":\"0\",\"blog_style_border_width\":1,\"blog_style_border_style\":\"none\",\"blog_style_border_color\":\"CCCCCC\",\"blog_style_bg_color\":\"E8E8E8\",\"blog_style_transparent\":70,\"blog_style_box_shadow\":\"\",\"blog_style_align\":\"center\",\"blog_style_share_buttons_margin\":\"5px auto 10px auto\",\"blog_style_share_buttons_border_radius\":\"0\",\"blog_style_share_buttons_border_width\":0,\"blog_style_share_buttons_border_style\":\"none\",\"blog_style_share_buttons_border_color\":\"000000\",\"blog_style_share_buttons_bg_color\":\"FFFFFF\",\"blog_style_share_buttons_align\":\"right\",\"blog_style_img_font_size\":16,\"blog_style_img_font_family\":\"segoe ui\",\"blog_style_img_font_color\":\"000000\",\"blog_style_share_buttons_color\":\"A1A1A1\",\"blog_style_share_buttons_bg_transparent\":0,\"blog_style_share_buttons_font_size\":20,\"blog_style_image_title_align\":\"top\",\"blog_style_gal_title_font_color\":\"CCCCCC\",\"blog_style_gal_title_font_style\":\"segoe ui\",\"blog_style_gal_title_font_size\":16,\"blog_style_gal_title_font_weight\":\"bold\",\"blog_style_gal_title_margin\":\"2px\",\"blog_style_gal_title_shadow\":\"0px 0px 0px #888888\",\"blog_style_gal_title_align\":\"center\",\"image_browser_margin\":\"2px auto\",\"image_browser_padding\":\"4px\",\"image_browser_border_radius\":\"2px\",\"image_browser_border_width\":1,\"image_browser_border_style\":\"none\",\"image_browser_border_color\":\"E8E8E8\",\"image_browser_bg_color\":\"E8E8E8\",\"image_browser_box_shadow\":\"\",\"image_browser_transparent\":80,\"image_browser_align\":\"center\",\"image_browser_image_description_margin\":\"24px 0px 0px 0px\",\"image_browser_image_description_padding\":\"8px 8px 8px 8px\",\"image_browser_image_description_border_radius\":\"0\",\"image_browser_image_description_border_width\":1,\"image_browser_image_description_border_style\":\"none\",\"image_browser_image_description_border_color\":\"FFFFFF\",\"image_browser_image_description_bg_color\":\"E8E8E8\",\"image_browser_image_description_align\":\"center\",\"image_browser_img_font_size\":14,\"image_browser_img_font_family\":\"segoe ui\",\"image_browser_img_font_color\":\"000000\",\"image_browser_full_padding\":\"4px\",\"image_browser_full_border_radius\":\"0\",\"image_browser_full_border_width\":1,\"image_browser_full_border_style\":\"solid\",\"image_browser_full_border_color\":\"EDEDED\",\"image_browser_full_bg_color\":\"FFFFFF\",\"image_browser_full_transparent\":90,\"image_browser_image_title_align\":\"top\",\"image_browser_gal_title_font_color\":\"CCCCCC\",\"image_browser_gal_title_font_style\":\"segoe ui\",\"image_browser_gal_title_font_size\":16,\"image_browser_gal_title_font_weight\":\"bold\",\"image_browser_gal_title_margin\":\"2px\",\"image_browser_gal_title_shadow\":\"0px 0px 0px #888888\",\"image_browser_gal_title_align\":\"center\",\"lightbox_info_pos\":\"top\",\"lightbox_info_align\":\"right\",\"lightbox_info_bg_color\":\"000000\",\"lightbox_info_bg_transparent\":70,\"lightbox_info_border_width\":1,\"lightbox_info_border_style\":\"none\",\"lightbox_info_border_color\":\"000000\",\"lightbox_info_border_radius\":\"5px\",\"lightbox_info_padding\":\"5px\",\"lightbox_info_margin\":\"15px\",\"lightbox_title_color\":\"FFFFFF\",\"lightbox_title_font_style\":\"segoe ui\",\"lightbox_title_font_weight\":\"bold\",\"lightbox_title_font_size\":18,\"lightbox_description_color\":\"FFFFFF\",\"lightbox_description_font_style\":\"segoe ui\",\"lightbox_description_font_weight\":\"normal\",\"lightbox_description_font_size\":14,\"lightbox_rate_pos\":\"bottom\",\"lightbox_rate_align\":\"right\",\"lightbox_rate_icon\":\"star\",\"lightbox_rate_color\":\"F9D062\",\"lightbox_rate_size\":20,\"lightbox_rate_stars_count\":5,\"lightbox_rate_padding\":\"15px\",\"lightbox_rate_hover_color\":\"F7B50E\",\"lightbox_hit_pos\":\"bottom\",\"lightbox_hit_align\":\"left\",\"lightbox_hit_bg_color\":\"000000\",\"lightbox_hit_bg_transparent\":70,\"lightbox_hit_border_width\":1,\"lightbox_hit_border_style\":\"none\",\"lightbox_hit_border_color\":\"000000\",\"lightbox_hit_border_radius\":\"5px\",\"lightbox_hit_padding\":\"5px\",\"lightbox_hit_margin\":\"0 5px\",\"lightbox_hit_color\":\"FFFFFF\",\"lightbox_hit_font_style\":\"segoe ui\",\"lightbox_hit_font_weight\":\"normal\",\"lightbox_hit_font_size\":14,\"masonry_description_font_size\":12,\"masonry_description_color\":\"CCCCCC\",\"masonry_description_font_style\":\"segoe ui\",\"album_masonry_back_font_color\":\"000000\",\"album_masonry_back_font_style\":\"segoe ui\",\"album_masonry_back_font_size\":14,\"album_masonry_back_font_weight\":\"normal\",\"album_masonry_back_padding\":\"0\",\"album_masonry_title_font_color\":\"CCCCCC\",\"album_masonry_title_font_style\":\"segoe ui\",\"album_masonry_thumb_title_pos\":\"bottom\",\"album_masonry_title_font_size\":16,\"album_masonry_title_font_weight\":\"bold\",\"album_masonry_title_margin\":\"5px\",\"album_masonry_title_shadow\":\"\",\"album_masonry_thumb_margin\":4,\"album_masonry_thumb_padding\":4,\"album_masonry_thumb_border_radius\":\"0\",\"album_masonry_thumb_border_width\":1,\"album_masonry_thumb_border_style\":\"none\",\"album_masonry_thumb_border_color\":\"000000\",\"album_masonry_thumb_bg_color\":\"E8E8E8\",\"album_masonry_thumbs_bg_color\":\"FFFFFF\",\"album_masonry_thumb_bg_transparent\":100,\"album_masonry_thumb_box_shadow\":\"\",\"album_masonry_thumb_transparent\":100,\"album_masonry_thumb_align\":\"center\",\"album_masonry_thumb_hover_effect\":\"rotate\",\"album_masonry_thumb_hover_effect_value\":\"2deg\",\"album_masonry_thumb_transition\":1,\"album_masonry_gal_title_font_color\":\"CCCCCC\",\"album_masonry_gal_title_font_style\":\"segoe ui\",\"album_masonry_gal_title_font_size\":16,\"album_masonry_gal_title_font_weight\":\"bold\",\"album_masonry_gal_title_margin\":\"2px\",\"album_masonry_gal_title_shadow\":\"0px 0px 0px #888888\",\"album_masonry_gal_title_align\":\"center\",\"mosaic_thumb_padding\":4,\"mosaic_thumb_border_radius\":\"2px\",\"mosaic_thumb_border_width\":1,\"mosaic_thumb_border_style\":\"none\",\"mosaic_thumb_border_color\":\"CCCCCC\",\"mosaic_thumbs_bg_color\":\"FFFFFF\",\"mosaic_thumb_bg_transparent\":0,\"mosaic_thumb_transparent\":80,\"mosaic_thumb_align\":\"center\",\"mosaic_thumb_hover_effect\":\"rotate\",\"mosaic_thumb_hover_effect_value\":\"2deg\",\"mosaic_thumb_title_font_color\":\"CCCCCC\",\"mosaic_thumb_title_font_style\":\"segoe ui\",\"mosaic_thumb_title_font_weight\":\"bold\",\"mosaic_thumb_title_margin\":\"2px\",\"mosaic_thumb_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_title_font_size\":16,\"mosaic_thumb_gal_title_font_color\":\"CCCCCC\",\"mosaic_thumb_gal_title_font_style\":\"segoe ui\",\"mosaic_thumb_gal_title_font_size\":16,\"mosaic_thumb_gal_title_font_weight\":\"bold\",\"mosaic_thumb_gal_title_margin\":\"2px\",\"mosaic_thumb_gal_title_shadow\":\"0px 0px 0px #888888\",\"mosaic_thumb_gal_title_align\":\"center\",\"carousel_cont_bg_color\":\"000000\",\"carousel_cont_btn_transparent\":0,\"carousel_close_btn_transparent\":100,\"carousel_rl_btn_bg_color\":\"000000\",\"carousel_rl_btn_border_radius\":\"20px\",\"carousel_rl_btn_border_width\":0,\"carousel_rl_btn_border_style\":\"none\",\"carousel_rl_btn_border_color\":\"FFFFFF\",\"carousel_rl_btn_color\":\"FFFFFF\",\"carousel_rl_btn_height\":40,\"carousel_rl_btn_size\":20,\"carousel_play_pause_btn_size\":20,\"carousel_rl_btn_width\":40,\"carousel_close_rl_btn_hover_color\":\"CCCCCC\",\"carousel_rl_btn_style\":\"fa-chevron\",\"carousel_mergin_bottom\":\"0.5\",\"carousel_font_family\":\"segoe ui\",\"carousel_feature_border_width\":2,\"carousel_feature_border_style\":\"solid\",\"carousel_feature_border_color\":\"5D204F\",\"carousel_caption_background_color\":\"000000\",\"carousel_caption_bottom\":0,\"carousel_caption_p_mergin\":0,\"carousel_caption_p_pedding\":5,\"carousel_caption_p_font_weight\":\"bold\",\"carousel_caption_p_font_size\":14,\"carousel_caption_p_color\":\"FFFFFF\",\"carousel_title_opacity\":100,\"carousel_title_border_radius\":\"5px\",\"mosaic_thumb_transition\":1}', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un Comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-22 02:14:38', '2018-08-22 02:14:38', 'Hola, este es un comentario.\nPara empezar con la moderación, edición y eliminación de comentarios, por favor visita la pantalla de comentarios en el panel inicial.\nLos Avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_modula`
--

CREATE TABLE `wp_modula` (
  `Id` int(11) NOT NULL,
  `configuration` varchar(5000) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_modula`
--

INSERT INTO `wp_modula` (`Id`, `configuration`) VALUES
(1, '{\"name\":\"Home\",\"slug\":\"home\",\"description\":\"Home\",\"lightbox\":\"lightbox2\",\"img_size\":500,\"hasResizedImages\":true,\"wp_field_caption\":\"caption\",\"wp_field_title\":\"title\",\"hide_title\":\"T\",\"hide_description\":\"T\",\"margin\":10,\"randomFactor\":\"50\",\"shuffle\":\"F\",\"enableTwitter\":\"F\",\"enableFacebook\":\"F\",\"enableGplus\":\"F\",\"enablePinterest\":\"F\",\"captionColor\":\"#ffffff\",\"hoverEffect\":\"pufrobo\",\"borderSize\":0,\"loadedScale\":100,\"loadedHSlide\":0,\"loadedVSlide\":0,\"loadedRotate\":0,\"socialIconColor\":\"#ffffff\",\"captionFontSize\":14,\"titleFontSize\":16,\"borderColor\":\"#ffffff\",\"borderRadius\":0,\"shadowSize\":0,\"shadowColor\":\"#ffffff\",\"width\":\"100%\",\"height\":\"800\",\"style\":\"\",\"script\":\"\"}'),
(2, '{\"width\":\"100%\",\"height\":\"800\",\"img_size\":500,\"margin\":10,\"filters\":\"\",\"filterClick\":\"F\",\"allFilterLabel\":\"All\",\"lightbox\":\"lightbox2\",\"shuffle\":\"F\",\"captionColor\":\"#ffffff\",\"wp_field_caption\":\"caption\",\"wp_field_title\":\"title\",\"captionFontSize\":14,\"titleFontSize\":16,\"enableTwitter\":\"T\",\"enableFacebook\":\"T\",\"enableGplus\":\"T\",\"enablePinterest\":\"T\",\"socialIconColor\":\"#ffffff\",\"loadedScale\":100,\"loadedRotate\":0,\"loadedHSlide\":0,\"loadedVSlide\":0,\"borderSize\":0,\"borderRadius\":0,\"borderColor\":\"#ffffff\",\"shadowSize\":0,\"shadowColor\":\"#ffffff\",\"style\":\"\",\"script\":\"\",\"randomFactor\":50,\"hoverColor\":\"#000000\",\"hoverOpacity\":\"50\",\"hoverEffect\":\"pufrobo\",\"hasResizedImages\":true,\"importedFrom\":\"\",\"hide_title\":false,\"hide_description\":false,\"name\":\"2\",\"description\":\"\"}'),
(3, '{\"width\":\"100%\",\"height\":\"800\",\"img_size\":500,\"margin\":10,\"filters\":\"\",\"filterClick\":\"F\",\"allFilterLabel\":\"All\",\"lightbox\":\"lightbox2\",\"shuffle\":\"F\",\"captionColor\":\"#ffffff\",\"wp_field_caption\":\"caption\",\"wp_field_title\":\"title\",\"captionFontSize\":14,\"titleFontSize\":16,\"enableTwitter\":\"T\",\"enableFacebook\":\"T\",\"enableGplus\":\"T\",\"enablePinterest\":\"T\",\"socialIconColor\":\"#ffffff\",\"loadedScale\":100,\"loadedRotate\":0,\"loadedHSlide\":0,\"loadedVSlide\":0,\"borderSize\":0,\"borderRadius\":0,\"borderColor\":\"#ffffff\",\"shadowSize\":0,\"shadowColor\":\"#ffffff\",\"style\":\"\",\"script\":\"\",\"randomFactor\":50,\"hoverColor\":\"#000000\",\"hoverOpacity\":\"50\",\"hoverEffect\":\"pufrobo\",\"hasResizedImages\":true,\"importedFrom\":\"\",\"hide_title\":false,\"hide_description\":false,\"name\":\"3\",\"description\":\"\"}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_modula_images`
--

CREATE TABLE `wp_modula_images` (
  `Id` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `imageId` int(11) NOT NULL,
  `imagePath` longtext NOT NULL,
  `link` longtext,
  `target` varchar(50) DEFAULT NULL,
  `filters` varchar(1500) DEFAULT NULL,
  `description` longtext NOT NULL,
  `title` longtext NOT NULL,
  `sortOrder` int(11) NOT NULL,
  `valign` varchar(50) NOT NULL DEFAULT 'middle',
  `halign` varchar(50) NOT NULL DEFAULT 'center'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `wp_modula_images`
--

INSERT INTO `wp_modula_images` (`Id`, `gid`, `imageId`, `imagePath`, `link`, `target`, `filters`, `description`, `title`, `sortOrder`, `valign`, `halign`) VALUES
(1, 1, 25, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto2g-500x500.jpg', NULL, NULL, NULL, '', 'foto2g', 2, 'middle', 'center'),
(2, 1, 26, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto1g-500x500.jpg', NULL, NULL, NULL, '', 'foto1g', 1, 'middle', 'center'),
(3, 1, 28, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/jiJZXEJ-500x500.jpg', NULL, NULL, NULL, '', 'jiJZXEJ', 3, 'middle', 'center'),
(4, 2, 48, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/1-500x500.png', NULL, NULL, NULL, '', '', 4, 'middle', 'center'),
(5, 2, 49, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2-500x500.png', NULL, NULL, NULL, '', '', 5, 'middle', 'center'),
(6, 2, 50, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3-500x500.png', NULL, NULL, NULL, '', '', 6, 'middle', 'center'),
(7, 2, 51, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/4-500x500.png', NULL, NULL, NULL, '', '', 7, 'middle', 'center'),
(8, 2, 52, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/5-500x500.png', NULL, NULL, NULL, '', '', 8, 'middle', 'center'),
(9, 2, 53, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/6-500x500.png', NULL, NULL, NULL, '', '', 9, 'middle', 'center'),
(10, 2, 54, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/7-500x500.png', NULL, NULL, NULL, '', '', 10, 'middle', 'center'),
(11, 2, 55, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/8-500x500.png', NULL, NULL, NULL, '', '', 11, 'middle', 'center'),
(12, 3, 35, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/220d6c55394317.59825b4cbd8b9-500x500.png', NULL, NULL, NULL, '', '', 12, 'middle', 'center'),
(13, 3, 34, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/68bc4755394317.59825b4cbc654-500x500.jpg', NULL, NULL, NULL, '', '', 13, 'middle', 'center'),
(14, 3, 56, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/f79c1055394317.59825b4cbcb55-500x500.png', NULL, NULL, NULL, '', '', 14, 'middle', 'center'),
(15, 3, 31, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2cd4a155394317.59825b4cbd0a1-500x500.png', NULL, NULL, NULL, '', '', 15, 'middle', 'center'),
(16, 3, 33, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3c40d755394317.59825b4cbdd8c-500x500.png', NULL, NULL, NULL, '', '', 16, 'middle', 'center'),
(17, 3, 36, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport6-500x500.png', NULL, NULL, NULL, '', '', 17, 'middle', 'center');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://186.64.118.50/~feg7carolina', 'yes'),
(2, 'home', 'http://186.64.118.50/~feg7carolina', 'yes'),
(3, 'blogname', 'Caro Cuevas', 'yes'),
(4, 'blogdescription', 'Otro sitio de WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'catecuevas@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:19:\"akismet/akismet.php\";i:1;s:9:\"hello.php\";i:2;s:35:\"modula-best-grid-gallery/Modula.php\";i:4;s:24:\"wordpress-seo/wp-seo.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'carocuevas', 'yes'),
(41, 'stylesheet', 'carocuevas', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '590', 'yes'),
(62, 'medium_size_h', '350', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '800', 'yes'),
(65, 'large_size_h', '400', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '15', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:13:\"wpseo_manager\";a:2:{s:4:\"name\";s:11:\"SEO Manager\";s:12:\"capabilities\";a:37:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;s:20:\"wpseo_manage_options\";b:1;}}s:12:\"wpseo_editor\";a:2:{s:4:\"name\";s:10:\"SEO Editor\";s:12:\"capabilities\";a:36:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:15:\"wpseo_bulk_edit\";b:1;s:28:\"wpseo_edit_advanced_metadata\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'es_CL', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:6:{i:1535739281;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1535765568;a:1:{s:19:\"wpseo-reindex-links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535768081;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1535768091;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1535770349;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(130, 'theme_mods_twentyseventeen', 'a:1:{s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1534904119;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(432, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1535735074;s:7:\"checked\";a:1:{s:10:\"carocuevas\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(128, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:20:\"catecuevas@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1534904113;}', 'no'),
(468, '_site_transient_timeout_theme_roots', '1535736873', 'no'),
(469, '_site_transient_theme_roots', 'a:1:{s:10:\"carocuevas\";s:7:\"/themes\";}', 'no'),
(131, 'current_theme', 'carocuevas', 'yes'),
(132, 'theme_mods_carocuevas', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(133, 'theme_switched', '', 'yes'),
(186, '_transient_timeout_wpseo_link_table_inaccessible', '1566523968', 'no'),
(187, '_transient_wpseo_link_table_inaccessible', '0', 'no'),
(188, '_transient_timeout_wpseo_meta_table_inaccessible', '1566523968', 'no'),
(189, '_transient_wpseo_meta_table_inaccessible', '0', 'no'),
(209, 'wpseo_sitemap_cache_validator_global', 'AKk2', 'no'),
(123, 'can_compress_scripts', '0', 'no'),
(472, '_transient_timeout_yst_sm_blog_1:AKk2_5UgSJ', '1535824766', 'no'),
(473, '_transient_yst_sm_blog_1:AKk2_5UgSJ', 'C:24:\"WPSEO_Sitemap_Cache_Data\":1581:{a:2:{s:6:\"status\";s:2:\"ok\";s:3:\"xml\";s:1533:\"<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:image=\"http://www.google.com/schemas/sitemap-image/1.1\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd http://www.google.com/schemas/sitemap-image/1.1 http://www.google.com/schemas/sitemap-image/1.1/sitemap-image.xsd\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/blog/</loc>\n		<lastmod>2018-08-24T03:25:28+00:00</lastmod>\n	</url>\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/blog/ux-ui-e-ixd-conceptos-basicos-sobre-la-experiencia-de-usuario/</loc>\n		<lastmod>2018-08-24T03:24:23+00:00</lastmod>\n		<image:image>\n			<image:loc>http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog1.jpeg</image:loc>\n			<image:title><![CDATA[blog1]]></image:title>\n		</image:image>\n	</url>\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/blog/que-es-el-a-b-testing/</loc>\n		<lastmod>2018-08-24T03:24:54+00:00</lastmod>\n		<image:image>\n			<image:loc>http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog2.jpg</image:loc>\n			<image:title><![CDATA[blog2]]></image:title>\n		</image:image>\n	</url>\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/blog/que-es-un-mapa-de-empatia/</loc>\n		<lastmod>2018-08-24T03:25:28+00:00</lastmod>\n		<image:image>\n			<image:loc>http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog2.png</image:loc>\n			<image:title><![CDATA[blog2]]></image:title>\n		</image:image>\n	</url>\n</urlset>\";}}', 'no'),
(175, 'recently_activated', 'a:1:{s:31:\"photo-gallery/photo-gallery.php\";i:1535077805;}', 'yes'),
(257, 'wd_bwg_version', '1.4.17', 'no'),
(258, 'wd_bwg_theme_version', '1.0.0', 'no'),
(182, 'wpseo', 'a:19:{s:15:\"ms_defaults_set\";b:0;s:7:\"version\";s:3:\"8.0\";s:20:\"disableadvanced_meta\";b:1;s:19:\"onpage_indexability\";b:1;s:11:\"baiduverify\";s:0:\"\";s:12:\"googleverify\";s:0:\"\";s:8:\"msverify\";s:0:\"\";s:12:\"yandexverify\";s:0:\"\";s:9:\"site_type\";s:4:\"blog\";s:20:\"has_multiple_authors\";b:0;s:16:\"environment_type\";s:10:\"production\";s:23:\"content_analysis_active\";b:1;s:23:\"keyword_analysis_active\";b:1;s:21:\"enable_admin_bar_menu\";b:1;s:26:\"enable_cornerstone_content\";b:1;s:18:\"enable_xml_sitemap\";b:1;s:24:\"enable_text_link_counter\";b:1;s:22:\"show_onboarding_notice\";b:0;s:18:\"first_activated_on\";b:0;}', 'yes'),
(183, 'wpseo_titles', 'a:83:{s:10:\"title_test\";i:0;s:17:\"forcerewritetitle\";b:1;s:9:\"separator\";s:7:\"sc-dash\";s:16:\"title-home-wpseo\";s:42:\"%%sitename%% %%page%% %%sep%% %%sitedesc%%\";s:18:\"title-author-wpseo\";s:41:\"%%name%%, Author at %%sitename%% %%page%%\";s:19:\"title-archive-wpseo\";s:38:\"%%date%% %%page%% %%sep%% %%sitename%%\";s:18:\"title-search-wpseo\";s:58:\"Has buscado %%searchphrase%% %%page%% %%sep%% %%sitename%%\";s:15:\"title-404-wpseo\";s:42:\"Página no encontrada %%sep%% %%sitename%%\";s:19:\"metadesc-home-wpseo\";s:0:\"\";s:21:\"metadesc-author-wpseo\";s:0:\"\";s:22:\"metadesc-archive-wpseo\";s:0:\"\";s:9:\"rssbefore\";s:0:\"\";s:8:\"rssafter\";s:53:\"The post %%POSTLINK%% appeared first on %%BLOGLINK%%.\";s:20:\"noindex-author-wpseo\";b:0;s:28:\"noindex-author-noposts-wpseo\";b:1;s:21:\"noindex-archive-wpseo\";b:1;s:14:\"disable-author\";b:1;s:12:\"disable-date\";b:0;s:19:\"disable-post_format\";b:0;s:18:\"disable-attachment\";b:1;s:23:\"is-media-purge-relevant\";b:0;s:20:\"breadcrumbs-404crumb\";s:32:\"Error 404: Página no encontrada\";s:29:\"breadcrumbs-display-blog-page\";b:0;s:20:\"breadcrumbs-boldlast\";b:0;s:25:\"breadcrumbs-archiveprefix\";s:10:\"Archivo de\";s:18:\"breadcrumbs-enable\";b:0;s:16:\"breadcrumbs-home\";s:7:\"Portada\";s:18:\"breadcrumbs-prefix\";s:0:\"\";s:24:\"breadcrumbs-searchprefix\";s:15:\"Has buscado por\";s:15:\"breadcrumbs-sep\";s:2:\"»\";s:12:\"website_name\";s:0:\"\";s:11:\"person_name\";s:22:\"Carolina Cuevas Andreu\";s:22:\"alternate_website_name\";s:0:\"\";s:12:\"company_logo\";s:0:\"\";s:12:\"company_name\";s:0:\"\";s:17:\"company_or_person\";s:6:\"person\";s:17:\"stripcategorybase\";b:0;s:10:\"title-post\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-post\";s:0:\"\";s:12:\"noindex-post\";b:0;s:13:\"showdate-post\";b:0;s:23:\"display-metabox-pt-post\";b:1;s:10:\"title-page\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-page\";s:0:\"\";s:12:\"noindex-page\";b:0;s:13:\"showdate-page\";b:0;s:23:\"display-metabox-pt-page\";b:1;s:16:\"title-attachment\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-attachment\";s:0:\"\";s:18:\"noindex-attachment\";b:0;s:19:\"showdate-attachment\";b:0;s:29:\"display-metabox-pt-attachment\";b:1;s:10:\"title-blog\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:13:\"metadesc-blog\";s:0:\"\";s:12:\"noindex-blog\";b:0;s:13:\"showdate-blog\";b:0;s:23:\"display-metabox-pt-blog\";b:1;s:16:\"title-portafolio\";s:39:\"%%title%% %%page%% %%sep%% %%sitename%%\";s:19:\"metadesc-portafolio\";s:0:\"\";s:18:\"noindex-portafolio\";b:0;s:19:\"showdate-portafolio\";b:0;s:29:\"display-metabox-pt-portafolio\";b:1;s:20:\"title-ptarchive-blog\";s:51:\"%%pt_plural%% archivo %%page%% %%sep%% %%sitename%%\";s:23:\"metadesc-ptarchive-blog\";s:0:\"\";s:22:\"bctitle-ptarchive-blog\";s:0:\"\";s:22:\"noindex-ptarchive-blog\";b:0;s:26:\"title-ptarchive-portafolio\";s:51:\"%%pt_plural%% archivo %%page%% %%sep%% %%sitename%%\";s:29:\"metadesc-ptarchive-portafolio\";s:0:\"\";s:28:\"bctitle-ptarchive-portafolio\";s:0:\"\";s:28:\"noindex-ptarchive-portafolio\";b:0;s:18:\"title-tax-category\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-category\";s:0:\"\";s:28:\"display-metabox-tax-category\";b:1;s:20:\"noindex-tax-category\";b:0;s:18:\"title-tax-post_tag\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:21:\"metadesc-tax-post_tag\";s:0:\"\";s:28:\"display-metabox-tax-post_tag\";b:1;s:20:\"noindex-tax-post_tag\";b:0;s:21:\"title-tax-post_format\";s:53:\"%%term_title%% archivos %%page%% %%sep%% %%sitename%%\";s:24:\"metadesc-tax-post_format\";s:0:\"\";s:31:\"display-metabox-tax-post_format\";b:0;s:23:\"noindex-tax-post_format\";b:1;s:23:\"post_types-post-maintax\";i:0;}', 'yes'),
(184, 'wpseo_social', 'a:18:{s:13:\"facebook_site\";s:0:\"\";s:13:\"instagram_url\";s:0:\"\";s:12:\"linkedin_url\";s:0:\"\";s:11:\"myspace_url\";s:0:\"\";s:16:\"og_default_image\";s:0:\"\";s:18:\"og_frontpage_title\";s:0:\"\";s:17:\"og_frontpage_desc\";s:0:\"\";s:18:\"og_frontpage_image\";s:0:\"\";s:9:\"opengraph\";b:1;s:13:\"pinterest_url\";s:0:\"\";s:15:\"pinterestverify\";s:0:\"\";s:14:\"plus-publisher\";s:0:\"\";s:7:\"twitter\";b:1;s:12:\"twitter_site\";s:0:\"\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:11:\"youtube_url\";s:0:\"\";s:15:\"google_plus_url\";s:0:\"\";s:10:\"fbadminapp\";s:0:\"\";}', 'yes'),
(185, 'wpseo_flush_rewrite', '1', 'yes'),
(192, 'wpseo_sitemap_1_cache_validator', '4ore7', 'no'),
(193, 'wpseo_sitemap_page_cache_validator', 'sYfF', 'no'),
(215, 'wpseo-gsc', 'a:1:{s:7:\"profile\";s:0:\"\";}', 'yes'),
(199, 'wpseo_sitemap_portafolio_cache_validator', '4orec', 'no'),
(229, 'rewrite_rules', 'a:191:{s:19:\"sitemap_index\\.xml$\";s:19:\"index.php?sitemap=1\";s:31:\"([^/]+?)-sitemap([0-9]+)?\\.xml$\";s:51:\"index.php?sitemap=$matches[1]&sitemap_n=$matches[2]\";s:24:\"([a-z]+)?-?sitemap\\.xsl$\";s:25:\"index.php?xsl=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:7:\"blog/?$\";s:24:\"index.php?post_type=blog\";s:37:\"blog/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:32:\"blog/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=blog&feed=$matches[1]\";s:24:\"blog/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=blog&paged=$matches[1]\";s:13:\"portafolio/?$\";s:30:\"index.php?post_type=portafolio\";s:43:\"portafolio/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=portafolio&feed=$matches[1]\";s:38:\"portafolio/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=portafolio&feed=$matches[1]\";s:30:\"portafolio/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=portafolio&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:32:\"blog/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"blog/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"blog/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"blog/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"blog/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"blog/([^/]+)/embed/?$\";s:37:\"index.php?blog=$matches[1]&embed=true\";s:25:\"blog/([^/]+)/trackback/?$\";s:31:\"index.php?blog=$matches[1]&tb=1\";s:45:\"blog/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:40:\"blog/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?blog=$matches[1]&feed=$matches[2]\";s:33:\"blog/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&paged=$matches[2]\";s:40:\"blog/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?blog=$matches[1]&cpage=$matches[2]\";s:29:\"blog/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?blog=$matches[1]&page=$matches[2]\";s:21:\"blog/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"blog/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"blog/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"blog/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"blog/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"portafolio/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"portafolio/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"portafolio/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portafolio/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"portafolio/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"portafolio/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"portafolio/([^/]+)/embed/?$\";s:43:\"index.php?portafolio=$matches[1]&embed=true\";s:31:\"portafolio/([^/]+)/trackback/?$\";s:37:\"index.php?portafolio=$matches[1]&tb=1\";s:51:\"portafolio/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?portafolio=$matches[1]&feed=$matches[2]\";s:46:\"portafolio/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?portafolio=$matches[1]&feed=$matches[2]\";s:39:\"portafolio/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?portafolio=$matches[1]&paged=$matches[2]\";s:46:\"portafolio/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?portafolio=$matches[1]&cpage=$matches[2]\";s:35:\"portafolio/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?portafolio=$matches[1]&page=$matches[2]\";s:27:\"portafolio/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"portafolio/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"portafolio/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portafolio/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"portafolio/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"portafolio/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"bwg_gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"bwg_gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"bwg_gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"bwg_gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"bwg_gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"bwg_gallery/([^/]+)/embed/?$\";s:44:\"index.php?bwg_gallery=$matches[1]&embed=true\";s:32:\"bwg_gallery/([^/]+)/trackback/?$\";s:38:\"index.php?bwg_gallery=$matches[1]&tb=1\";s:40:\"bwg_gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&paged=$matches[2]\";s:47:\"bwg_gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?bwg_gallery=$matches[1]&cpage=$matches[2]\";s:36:\"bwg_gallery/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?bwg_gallery=$matches[1]&page=$matches[2]\";s:28:\"bwg_gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"bwg_gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"bwg_gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"bwg_gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:37:\"bwg_album/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:47:\"bwg_album/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:67:\"bwg_album/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:62:\"bwg_album/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:43:\"bwg_album/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:26:\"bwg_album/([^/]+)/embed/?$\";s:42:\"index.php?bwg_album=$matches[1]&embed=true\";s:30:\"bwg_album/([^/]+)/trackback/?$\";s:36:\"index.php?bwg_album=$matches[1]&tb=1\";s:38:\"bwg_album/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&paged=$matches[2]\";s:45:\"bwg_album/([^/]+)/comment-page-([0-9]{1,})/?$\";s:49:\"index.php?bwg_album=$matches[1]&cpage=$matches[2]\";s:34:\"bwg_album/([^/]+)(?:/([0-9]+))?/?$\";s:48:\"index.php?bwg_album=$matches[1]&page=$matches[2]\";s:26:\"bwg_album/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:36:\"bwg_album/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:56:\"bwg_album/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:51:\"bwg_album/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:32:\"bwg_album/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"bwg_tag/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"bwg_tag/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"bwg_tag/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"bwg_tag/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"bwg_tag/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"bwg_tag/([^/]+)/embed/?$\";s:40:\"index.php?bwg_tag=$matches[1]&embed=true\";s:28:\"bwg_tag/([^/]+)/trackback/?$\";s:34:\"index.php?bwg_tag=$matches[1]&tb=1\";s:48:\"bwg_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:43:\"bwg_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?bwg_tag=$matches[1]&feed=$matches[2]\";s:36:\"bwg_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?bwg_tag=$matches[1]&paged=$matches[2]\";s:32:\"bwg_tag/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?bwg_tag=$matches[1]&page=$matches[2]\";s:24:\"bwg_tag/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"bwg_tag/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"bwg_tag/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"bwg_tag/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"bwg_tag/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=15&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(265, 'wpseo_sitemap_bwg_gallery_cache_validator', 'p1IB', 'no'),
(268, 'wpseo_sitemap_attachment_cache_validator', 'TihM', 'no'),
(270, 'category_children', 'a:0:{}', 'yes'),
(218, '_transient_yoast_i18n_wordpress-seo_promo_hide', '1', 'yes'),
(259, 'widget_bwp_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_bwp_gallery_slideshow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'bwg_admin_notice', 'a:1:{s:15:\"two_week_review\";a:2:{s:5:\"start\";s:8:\"9/7/2018\";s:3:\"int\";i:14;}}', 'yes'),
(262, 'widget_akismet_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'bwg_subscribe_done', '1', 'yes'),
(283, 'wds_io_notice_status', '1', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(282, 'wd_bwg_options', '{\"images_directory\":\"wp-content\\/uploads\",\"resizable_thumbnails\":\"1\",\"upload_img_width\":\"1200\",\"upload_img_height\":\"1200\",\"upload_thumb_width\":\"500\",\"upload_thumb_height\":\"500\",\"image_quality\":\"75\",\"preload_images\":\"1\",\"preload_images_count\":\"10\",\"show_hide_custom_post\":\"0\",\"show_hide_post_meta\":\"0\",\"save_ip\":1,\"image_right_click\":\"0\",\"use_inline_stiles_and_scripts\":\"0\",\"enable_wp_editor\":\"0\",\"enable_seo\":\"1\",\"read_metadata\":\"1\",\"thumb_width\":\"250\",\"thumb_height\":\"140\",\"image_column_number\":\"5\",\"image_enable_page\":\"1\",\"images_per_page\":\"30\",\"load_more_image_count\":\"30\",\"sort_by\":\"order\",\"order_by\":\"asc\",\"show_search_box\":\"0\",\"placeholder\":\"Search\",\"search_box_width\":\"330\",\"show_sort_images\":\"0\",\"show_tag_box\":\"0\",\"showthumbs_name\":\"0\",\"show_gallery_description\":\"0\",\"image_title_show_hover\":\"hover\",\"play_icon\":\"1\",\"gallery_download\":0,\"ecommerce_icon_show_hover\":\"none\",\"masonry\":\"vertical\",\"show_masonry_thumb_description\":0,\"masonry_thumb_size\":\"250\",\"masonry_image_column_number\":\"5\",\"masonry_image_enable_page\":\"1\",\"masonry_images_per_page\":\"30\",\"masonry_load_more_image_count\":\"30\",\"masonry_sort_by\":\"order\",\"masonry_order_by\":\"asc\",\"masonry_show_search_box\":\"0\",\"masonry_placeholder\":\"Search\",\"masonry_search_box_width\":\"180\",\"masonry_show_sort_images\":\"0\",\"masonry_show_tag_box\":\"0\",\"masonry_show_gallery_title\":\"0\",\"masonry_show_gallery_description\":\"0\",\"masonry_play_icon\":\"1\",\"masonry_gallery_download\":0,\"masonry_ecommerce_icon_show_hover\":\"none\",\"mosaic\":\"vertical\",\"resizable_mosaic\":0,\"mosaic_total_width\":100,\"mosaic_thumb_size\":\"250\",\"mosaic_image_enable_page\":\"1\",\"mosaic_images_per_page\":\"30\",\"mosaic_load_more_image_count\":\"30\",\"mosaic_sort_by\":\"order\",\"mosaic_order_by\":\"asc\",\"mosaic_show_search_box\":\"0\",\"mosaic_placeholder\":\"Search\",\"mosaic_search_box_width\":\"180\",\"mosaic_show_sort_images\":\"0\",\"mosaic_show_tag_box\":\"0\",\"mosaic_show_gallery_title\":\"0\",\"mosaic_show_gallery_description\":\"0\",\"mosaic_image_title_show_hover\":\"none\",\"mosaic_play_icon\":\"1\",\"mosaic_gallery_download\":0,\"mosaic_ecommerce_icon_show_hover\":\"none\",\"slideshow_type\":\"fade\",\"slideshow_interval\":\"5\",\"slideshow_width\":\"800\",\"slideshow_height\":\"500\",\"slideshow_sort_by\":\"order\",\"slideshow_order_by\":\"asc\",\"slideshow_enable_autoplay\":\"0\",\"slideshow_enable_shuffle\":\"0\",\"slideshow_enable_ctrl\":\"1\",\"autohide_slideshow_navigation\":\"1\",\"slideshow_enable_filmstrip\":1,\"slideshow_filmstrip_height\":90,\"slideshow_enable_title\":\"0\",\"slideshow_title_position\":\"top-right\",\"slideshow_title_full_width\":\"0\",\"slideshow_enable_description\":\"0\",\"slideshow_description_position\":\"bottom-right\",\"slideshow_enable_music\":\"0\",\"slideshow_audio_url\":\"\",\"slideshow_effect_duration\":\"0.1\",\"slideshow_gallery_download\":0,\"image_browser_width\":\"800\",\"image_browser_title_enable\":\"0\",\"image_browser_description_enable\":\"0\",\"image_browser_sort_by\":\"order\",\"image_browser_order_by\":\"desc\",\"image_browser_show_gallery_title\":\"0\",\"image_browser_show_gallery_description\":\"0\",\"image_browser_show_search_box\":\"0\",\"image_browser_placeholder\":\"Search\",\"image_browser_search_box_width\":\"180\",\"image_browser_gallery_download\":0,\"blog_style_width\":800,\"blog_style_title_enable\":1,\"blog_style_images_per_page\":5,\"blog_style_load_more_image_count\":\"5\",\"blog_style_enable_page\":1,\"blog_style_description_enable\":0,\"blog_style_sort_by\":\"order\",\"blog_style_order_by\":\"asc\",\"blog_style_show_gallery_title\":\"0\",\"blog_style_show_gallery_description\":\"0\",\"blog_style_show_search_box\":\"0\",\"blog_style_placeholder\":\"Search\",\"blog_style_search_box_width\":\"180\",\"blog_style_show_sort_images\":\"0\",\"blog_style_show_tag_box\":\"0\",\"blog_style_gallery_download\":0,\"carousel_interval\":5,\"carousel_width\":300,\"carousel_height\":300,\"carousel_image_column_number\":5,\"carousel_image_par\":\"0.75\",\"carousel_enable_title\":0,\"carousel_enable_autoplay\":0,\"carousel_r_width\":800,\"carousel_fit_containerWidth\":1,\"carousel_prev_next_butt\":1,\"carousel_play_pause_butt\":1,\"carousel_sort_by\":\"order\",\"carousel_order_by\":\"asc\",\"carousel_gallery_download\":0,\"album_column_number\":\"5\",\"album_thumb_width\":\"250\",\"album_thumb_height\":\"140\",\"album_image_column_number\":\"5\",\"album_image_thumb_width\":\"250\",\"album_image_thumb_height\":\"140\",\"album_enable_page\":\"1\",\"albums_per_page\":\"30\",\"album_images_per_page\":\"30\",\"album_sort_by\":\"order\",\"album_order_by\":\"asc\",\"album_show_search_box\":\"0\",\"album_placeholder\":\"Search\",\"album_search_box_width\":\"180\",\"album_show_sort_images\":\"0\",\"album_show_tag_box\":\"0\",\"show_album_name\":\"0\",\"album_show_gallery_description\":\"0\",\"album_title_show_hover\":\"hover\",\"album_view_type\":\"thumbnail\",\"album_image_title_show_hover\":\"none\",\"album_mosaic\":\"vertical\",\"album_resizable_mosaic\":0,\"album_mosaic_total_width\":100,\"album_play_icon\":\"1\",\"album_gallery_download\":0,\"album_ecommerce_icon_show_hover\":\"none\",\"album_masonry_column_number\":\"5\",\"album_masonry_thumb_width\":\"250\",\"album_masonry_image_column_number\":\"5\",\"album_masonry_image_thumb_width\":\"250\",\"album_masonry_enable_page\":\"1\",\"albums_masonry_per_page\":\"30\",\"album_masonry_images_per_page\":\"30\",\"album_masonry_sort_by\":\"order\",\"album_masonry_order_by\":\"asc\",\"album_masonry_show_search_box\":\"0\",\"album_masonry_placeholder\":\"Search\",\"album_masonry_search_box_width\":\"180\",\"album_masonry_show_sort_images\":\"0\",\"album_masonry_show_tag_box\":\"0\",\"show_album_masonry_name\":\"0\",\"album_masonry_show_gallery_description\":\"0\",\"album_masonry_gallery_download\":0,\"album_masonry_ecommerce_icon_show_hover\":\"none\",\"extended_album_height\":\"200\",\"album_extended_thumb_width\":\"250\",\"album_extended_thumb_height\":\"140\",\"album_extended_image_column_number\":\"5\",\"album_extended_image_thumb_width\":\"250\",\"album_extended_image_thumb_height\":\"140\",\"album_extended_enable_page\":\"1\",\"albums_extended_per_page\":\"30\",\"album_extended_images_per_page\":\"30\",\"album_extended_sort_by\":\"order\",\"album_extended_order_by\":\"asc\",\"album_extended_show_search_box\":\"0\",\"album_extended_placeholder\":\"Search\",\"album_extended_search_box_width\":\"180\",\"album_extended_show_sort_images\":\"0\",\"album_extended_show_tag_box\":\"0\",\"show_album_extended_name\":\"0\",\"extended_album_description_enable\":\"1\",\"album_extended_show_gallery_description\":\"0\",\"album_extended_view_type\":\"thumbnail\",\"album_extended_image_title_show_hover\":\"none\",\"album_extended_mosaic\":\"vertical\",\"album_extended_resizable_mosaic\":0,\"album_extended_mosaic_total_width\":100,\"album_extended_play_icon\":\"1\",\"album_extended_gallery_download\":0,\"album_extended_ecommerce_icon_show_hover\":\"none\",\"thumb_click_action\":\"open_lightbox\",\"thumb_link_target\":\"1\",\"popup_fullscreen\":\"1\",\"popup_width\":\"800\",\"popup_height\":\"500\",\"popup_type\":\"fade\",\"popup_effect_duration\":\"0.1\",\"popup_autoplay\":\"0\",\"popup_interval\":\"2.5\",\"popup_enable_filmstrip\":1,\"popup_filmstrip_height\":60,\"popup_enable_ctrl_btn\":\"1\",\"popup_enable_fullscreen\":\"1\",\"popup_enable_comment\":1,\"popup_enable_email\":1,\"popup_enable_captcha\":0,\"comment_moderation\":0,\"popup_enable_info\":\"1\",\"popup_info_always_show\":\"0\",\"popup_info_full_width\":\"1\",\"autohide_lightbox_navigation\":\"0\",\"popup_hit_counter\":0,\"popup_enable_rate\":0,\"popup_enable_fullsize_image\":\"0\",\"popup_enable_download\":\"0\",\"show_image_counts\":\"0\",\"enable_loop\":\"1\",\"enable_addthis\":0,\"addthis_profile_id\":\"\",\"popup_enable_facebook\":1,\"popup_enable_twitter\":1,\"popup_enable_google\":1,\"popup_enable_pinterest\":0,\"popup_enable_tumblr\":0,\"popup_enable_ecommerce\":1,\"autoupdate_interval\":1,\"instagram_access_token\":\"\",\"facebook_app_id\":\"\",\"facebook_app_secret\":\"\",\"permissions\":\"manage_options\",\"gallery_role\":0,\"album_role\":0,\"image_role\":0,\"watermark_type\":\"none\",\"watermark_position\":\"bottom-left\",\"watermark_width\":\"90\",\"watermark_height\":\"90\",\"watermark_url\":\"\",\"watermark_text\":\"10web.io\",\"watermark_link\":\"https:\\/\\/10web.io\\/\",\"watermark_font_size\":\"20\",\"watermark_font\":\"Arial\",\"watermark_color\":\"FFFFFF\",\"watermark_opacity\":\"30\",\"built_in_watermark_type\":\"none\",\"built_in_watermark_position\":\"middle-center\",\"built_in_watermark_size\":\"15\",\"built_in_watermark_url\":\"\",\"built_in_watermark_text\":\"10web.io\",\"built_in_watermark_font_size\":\"20\",\"built_in_watermark_font\":\"arial.ttf\",\"built_in_watermark_color\":\"FFFFFF\",\"built_in_watermark_opacity\":\"30\",\"upload_dir\":\"\\/home\\/feg7carolina\\/public_html\\/wp-content\\/uploads\\/photo-gallery\",\"upload_url\":\"http:\\/\\/186.64.118.50\\/~feg7carolina\\/wp-content\\/uploads\\/photo-gallery\",\"old_images_directory\":\"wp-content\\/uploads\",\"jpeg_quality\":\"75\",\"png_quality\":2}', 'no'),
(278, 'wpseo_sitemap_post_cache_validator', '9nEI', 'no'),
(431, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"es_CL\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_CL/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1535735072;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(275, 'wpseo_sitemap_blog_cache_validator', '5UgSJ', 'no'),
(465, '_transient_timeout_yst_sm_page_1:AKk2_sYfF', '1535821469', 'no'),
(466, '_transient_yst_sm_page_1:AKk2_sYfF', 'C:24:\"WPSEO_Sitemap_Cache_Data\":699:{a:2:{s:6:\"status\";s:2:\"ok\";s:3:\"xml\";s:652:\"<urlset xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:image=\"http://www.google.com/schemas/sitemap-image/1.1\" xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9 http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd http://www.google.com/schemas/sitemap-image/1.1 http://www.google.com/schemas/sitemap-image/1.1/sitemap-image.xsd\" xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/</loc>\n		<lastmod>2018-08-24T01:45:48+00:00</lastmod>\n	</url>\n	<url>\n		<loc>http://186.64.118.50/~feg7carolina/contacto/</loc>\n		<lastmod>2018-08-23T01:48:15+00:00</lastmod>\n	</url>\n</urlset>\";}}', 'no'),
(289, 'wpseo_sitemap_category_cache_validator', 'Evx2', 'no'),
(303, 'Modula_skip_fix', '1', 'yes'),
(304, 'Modula_db_version', '1.0', 'yes'),
(470, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1535735074;s:7:\"checked\";a:5:{s:19:\"akismet/akismet.php\";s:5:\"4.0.8\";s:35:\"modula-best-grid-gallery/Modula.php\";s:5:\"1.3.1\";s:9:\"hello.php\";s:3:\"1.7\";s:31:\"photo-gallery/photo-gallery.php\";s:6:\"1.4.17\";s:24:\"wordpress-seo/wp-seo.php\";s:3:\"8.0\";}s:8:\"response\";a:1:{s:24:\"wordpress-seo/wp-seo.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wordpress-seo\";s:4:\"slug\";s:13:\"wordpress-seo\";s:6:\"plugin\";s:24:\"wordpress-seo/wp-seo.php\";s:11:\"new_version\";s:3:\"8.1\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wordpress-seo/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/wordpress-seo.8.1.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:66:\"https://ps.w.org/wordpress-seo/assets/icon-256x256.png?rev=1834347\";s:2:\"1x\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";s:3:\"svg\";s:58:\"https://ps.w.org/wordpress-seo/assets/icon.svg?rev=1859687\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500.png?rev=1843435\";s:2:\"1x\";s:68:\"https://ps.w.org/wordpress-seo/assets/banner-772x250.png?rev=1843435\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/wordpress-seo/assets/banner-1544x500-rtl.png?rev=1843435\";s:2:\"1x\";s:72:\"https://ps.w.org/wordpress-seo/assets/banner-772x250-rtl.png?rev=1843435\";}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:4:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.0.8\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:35:\"modula-best-grid-gallery/Modula.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/modula-best-grid-gallery\";s:4:\"slug\";s:24:\"modula-best-grid-gallery\";s:6:\"plugin\";s:35:\"modula-best-grid-gallery/Modula.php\";s:11:\"new_version\";s:5:\"1.3.1\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/modula-best-grid-gallery/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/modula-best-grid-gallery.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=1634322\";s:2:\"1x\";s:77:\"https://ps.w.org/modula-best-grid-gallery/assets/icon-256x256.jpg?rev=1634322\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:79:\"https://ps.w.org/modula-best-grid-gallery/assets/banner-772x250.jpg?rev=1634322\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=969907\";s:2:\"1x\";s:63:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=969907\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/hello-dolly/assets/banner-772x250.png?rev=478342\";}s:11:\"banners_rtl\";a:0:{}}s:31:\"photo-gallery/photo-gallery.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:27:\"w.org/plugins/photo-gallery\";s:4:\"slug\";s:13:\"photo-gallery\";s:6:\"plugin\";s:31:\"photo-gallery/photo-gallery.php\";s:11:\"new_version\";s:6:\"1.4.17\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/photo-gallery/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/photo-gallery.1.4.17.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/photo-gallery/assets/icon-128x128.png?rev=1508783\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:68:\"https://ps.w.org/photo-gallery/assets/banner-772x250.jpg?rev=1505235\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_last', '1'),
(4, 5, '_edit_lock', '1535081129:1'),
(5, 7, '_edit_last', '1'),
(6, 7, '_edit_lock', '1535080955:1'),
(7, 8, '_edit_last', '1'),
(8, 8, '_edit_lock', '1535080926:1'),
(9, 9, '_edit_last', '1'),
(10, 9, '_edit_lock', '1535080242:1'),
(11, 10, '_wp_attached_file', '2018/08/proyecto1.png'),
(12, 10, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2560;s:6:\"height\";i:4300;s:4:\"file\";s:21:\"2018/08/proyecto1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"proyecto1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"proyecto1-179x300.png\";s:5:\"width\";i:179;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"proyecto1-768x1290.png\";s:5:\"width\";i:768;s:6:\"height\";i:1290;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"proyecto1-610x1024.png\";s:5:\"width\";i:610;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(13, 1, '_edit_lock', '1534987114:1'),
(14, 2, '_wp_trash_meta_status', 'publish'),
(15, 2, '_wp_trash_meta_time', '1534988675'),
(16, 2, '_wp_desired_post_slug', 'pagina-de-ejemplo'),
(17, 3, '_wp_trash_meta_status', 'draft'),
(18, 3, '_wp_trash_meta_time', '1534988675'),
(19, 3, '_wp_desired_post_slug', 'privacy-policy'),
(20, 13, '_edit_last', '1'),
(21, 13, '_edit_lock', '1534989315:1'),
(22, 13, '_wp_page_template', 'template-contacto.php'),
(23, 13, '_yoast_wpseo_content_score', '30'),
(24, 15, '_edit_last', '1'),
(25, 15, '_wp_page_template', 'template-home.php'),
(26, 15, '_yoast_wpseo_content_score', '30'),
(27, 15, '_edit_lock', '1535079879:1'),
(28, 17, '_edit_last', '1'),
(29, 17, '_edit_lock', '1535079422:1'),
(30, 18, '_edit_last', '1'),
(31, 18, '_yoast_wpseo_content_score', '30'),
(32, 18, '_edit_lock', '1535080795:1'),
(33, 21, '_edit_last', '1'),
(34, 21, '_edit_lock', '1535080030:1'),
(35, 22, '_wp_attached_file', '2018/08/imgport2.png'),
(36, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:3400;s:4:\"file\";s:20:\"2018/08/imgport2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"imgport2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"imgport2-221x300.png\";s:5:\"width\";i:221;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"imgport2-768x1044.png\";s:5:\"width\";i:768;s:6:\"height\";i:1044;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"imgport2-753x1024.png\";s:5:\"width\";i:753;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 21, '_yoast_wpseo_content_score', '30'),
(38, 23, '_edit_last', '1'),
(39, 23, '_edit_lock', '1535080008:1'),
(40, 24, '_wp_attached_file', '2018/08/imgport3.png'),
(41, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:4650;s:4:\"file\";s:20:\"2018/08/imgport3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"imgport3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"imgport3-84x300.png\";s:5:\"width\";i:84;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"imgport3-768x2747.png\";s:5:\"width\";i:768;s:6:\"height\";i:2747;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"imgport3-286x1024.png\";s:5:\"width\";i:286;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 23, '_yoast_wpseo_content_score', '30'),
(43, 25, '_wp_attached_file', '2018/08/foto2g.jpg'),
(44, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2018/08/foto2g.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto2g-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto2g-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"foto2g-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(45, 26, '_wp_attached_file', '2018/08/foto1g.jpg'),
(46, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2018/08/foto1g.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"foto1g-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"foto1g-300x225.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"foto1g-768x576.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(47, 28, '_wp_attached_file', '2018/08/jiJZXEJ.jpg'),
(48, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1080;s:4:\"file\";s:19:\"2018/08/jiJZXEJ.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"jiJZXEJ-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"jiJZXEJ-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"jiJZXEJ-768x432.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:432;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:20:\"jiJZXEJ-1024x576.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:576;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(49, 30, '_wp_attached_file', '2018/08/cvpweb_11-9-17.jpg'),
(50, 31, '_wp_attached_file', '2018/08/2cd4a155394317.59825b4cbd0a1.png'),
(51, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2500;s:6:\"height\";i:850;s:4:\"file\";s:40:\"2018/08/2cd4a155394317.59825b4cbd0a1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"2cd4a155394317.59825b4cbd0a1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"2cd4a155394317.59825b4cbd0a1-300x102.png\";s:5:\"width\";i:300;s:6:\"height\";i:102;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"2cd4a155394317.59825b4cbd0a1-768x261.png\";s:5:\"width\";i:768;s:6:\"height\";i:261;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"2cd4a155394317.59825b4cbd0a1-1024x348.png\";s:5:\"width\";i:1024;s:6:\"height\";i:348;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(52, 32, '_wp_attached_file', '2018/08/portimg1-01.png'),
(53, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1438;s:6:\"height\";i:896;s:4:\"file\";s:23:\"2018/08/portimg1-01.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"portimg1-01-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"portimg1-01-300x187.png\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"portimg1-01-768x479.png\";s:5:\"width\";i:768;s:6:\"height\";i:479;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"portimg1-01-1024x638.png\";s:5:\"width\";i:1024;s:6:\"height\";i:638;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(54, 33, '_wp_attached_file', '2018/08/3c40d755394317.59825b4cbdd8c.png'),
(55, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2494;s:6:\"height\";i:840;s:4:\"file\";s:40:\"2018/08/3c40d755394317.59825b4cbdd8c.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"3c40d755394317.59825b4cbdd8c-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"3c40d755394317.59825b4cbdd8c-300x101.png\";s:5:\"width\";i:300;s:6:\"height\";i:101;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"3c40d755394317.59825b4cbdd8c-768x259.png\";s:5:\"width\";i:768;s:6:\"height\";i:259;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"3c40d755394317.59825b4cbdd8c-1024x345.png\";s:5:\"width\";i:1024;s:6:\"height\";i:345;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(56, 8, '_yoast_wpseo_content_score', '30'),
(57, 34, '_wp_attached_file', '2018/08/68bc4755394317.59825b4cbc654.jpg'),
(58, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2550;s:6:\"height\";i:3300;s:4:\"file\";s:40:\"2018/08/68bc4755394317.59825b4cbc654.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"68bc4755394317.59825b4cbc654-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"68bc4755394317.59825b4cbc654-232x300.jpg\";s:5:\"width\";i:232;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"68bc4755394317.59825b4cbc654-768x994.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:994;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"68bc4755394317.59825b4cbc654-791x1024.jpg\";s:5:\"width\";i:791;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(59, 35, '_wp_attached_file', '2018/08/220d6c55394317.59825b4cbd8b9.png'),
(60, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2494;s:6:\"height\";i:1302;s:4:\"file\";s:40:\"2018/08/220d6c55394317.59825b4cbd8b9.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"220d6c55394317.59825b4cbd8b9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"220d6c55394317.59825b4cbd8b9-300x157.png\";s:5:\"width\";i:300;s:6:\"height\";i:157;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"220d6c55394317.59825b4cbd8b9-768x401.png\";s:5:\"width\";i:768;s:6:\"height\";i:401;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:41:\"220d6c55394317.59825b4cbd8b9-1024x535.png\";s:5:\"width\";i:1024;s:6:\"height\";i:535;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(61, 8, '_thumbnail_id', '57'),
(62, 36, '_wp_attached_file', '2018/08/imgport6.png'),
(63, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:720;s:4:\"file\";s:20:\"2018/08/imgport6.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"imgport6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"imgport6-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"imgport6-768x510.png\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"imgport6-1024x680.png\";s:5:\"width\";i:1024;s:6:\"height\";i:680;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(65, 23, '_thumbnail_id', '40'),
(66, 1, '_wp_trash_meta_status', 'publish'),
(67, 1, '_wp_trash_meta_time', '1535077765'),
(68, 1, '_wp_desired_post_slug', 'hola-mundo'),
(69, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(70, 17, '_wp_trash_meta_status', 'publish'),
(71, 17, '_wp_trash_meta_time', '1535079600'),
(72, 17, '_wp_desired_post_slug', 'portafolio-2'),
(73, 40, '_wp_attached_file', '2018/08/fotocard1.png'),
(74, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:350;s:4:\"file\";s:21:\"2018/08/fotocard1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fotocard1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(75, 41, '_wp_attached_file', '2018/08/fotocard2.png'),
(76, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:350;s:4:\"file\";s:21:\"2018/08/fotocard2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fotocard2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(77, 42, '_wp_attached_file', '2018/08/fotocard4.png'),
(78, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:350;s:4:\"file\";s:21:\"2018/08/fotocard4.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fotocard4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(79, 43, '_wp_attached_file', '2018/08/fotocards3.png'),
(80, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:350;s:4:\"file\";s:22:\"2018/08/fotocards3.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"fotocards3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(81, 21, '_thumbnail_id', '43'),
(82, 18, '_thumbnail_id', '41'),
(83, 45, '_wp_attached_file', '2018/08/portimg1-01-1.png'),
(84, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1438;s:6:\"height\";i:896;s:4:\"file\";s:25:\"2018/08/portimg1-01-1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"portimg1-01-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"portimg1-01-1-562x350.png\";s:5:\"width\";i:562;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"portimg1-01-1-768x479.png\";s:5:\"width\";i:768;s:6:\"height\";i:479;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"portimg1-01-1-642x400.png\";s:5:\"width\";i:642;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(85, 46, '_wp_attached_file', '2018/08/fotocard5.png'),
(86, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:590;s:6:\"height\";i:350;s:4:\"file\";s:21:\"2018/08/fotocard5.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"fotocard5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 9, '_thumbnail_id', '46'),
(88, 9, '_yoast_wpseo_content_score', '30'),
(89, 47, '_edit_last', '1'),
(90, 47, '_edit_lock', '1535080628:1'),
(91, 48, '_wp_attached_file', '2018/08/1.png'),
(92, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1348;s:4:\"file\";s:13:\"2018/08/1.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-534x350.png\";s:5:\"width\";i:534;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x503.png\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"1-611x400.png\";s:5:\"width\";i:611;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(93, 49, '_wp_attached_file', '2018/08/2.png'),
(94, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1348;s:4:\"file\";s:13:\"2018/08/2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-534x350.png\";s:5:\"width\";i:534;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x503.png\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"2-611x400.png\";s:5:\"width\";i:611;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(95, 50, '_wp_attached_file', '2018/08/3.png'),
(96, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1346;s:4:\"file\";s:13:\"2018/08/3.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-535x350.png\";s:5:\"width\";i:535;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x502.png\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"3-612x400.png\";s:5:\"width\";i:612;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(97, 51, '_wp_attached_file', '2018/08/4.png'),
(98, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1346;s:4:\"file\";s:13:\"2018/08/4.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-535x350.png\";s:5:\"width\";i:535;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x502.png\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"4-612x400.png\";s:5:\"width\";i:612;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(99, 52, '_wp_attached_file', '2018/08/5.png'),
(100, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1348;s:4:\"file\";s:13:\"2018/08/5.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-534x350.png\";s:5:\"width\";i:534;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x503.png\";s:5:\"width\";i:768;s:6:\"height\";i:503;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"5-611x400.png\";s:5:\"width\";i:611;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(101, 53, '_wp_attached_file', '2018/08/6.png'),
(102, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1346;s:4:\"file\";s:13:\"2018/08/6.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-535x350.png\";s:5:\"width\";i:535;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x502.png\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"6-612x400.png\";s:5:\"width\";i:612;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(103, 54, '_wp_attached_file', '2018/08/7.png'),
(104, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1346;s:4:\"file\";s:13:\"2018/08/7.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-535x350.png\";s:5:\"width\";i:535;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x502.png\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"7-612x400.png\";s:5:\"width\";i:612;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(105, 55, '_wp_attached_file', '2018/08/8.png'),
(106, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2058;s:6:\"height\";i:1346;s:4:\"file\";s:13:\"2018/08/8.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"8-535x350.png\";s:5:\"width\";i:535;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"8-768x502.png\";s:5:\"width\";i:768;s:6:\"height\";i:502;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:13:\"8-612x400.png\";s:5:\"width\";i:612;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(107, 47, '_thumbnail_id', '42'),
(108, 47, '_yoast_wpseo_content_score', '30'),
(109, 56, '_wp_attached_file', '2018/08/f79c1055394317.59825b4cbcb55.png'),
(110, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1084;s:6:\"height\";i:720;s:4:\"file\";s:40:\"2018/08/f79c1055394317.59825b4cbcb55.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:40:\"f79c1055394317.59825b4cbcb55-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:40:\"f79c1055394317.59825b4cbcb55-527x350.png\";s:5:\"width\";i:527;s:6:\"height\";i:350;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:40:\"f79c1055394317.59825b4cbcb55-768x510.png\";s:5:\"width\";i:768;s:6:\"height\";i:510;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"f79c1055394317.59825b4cbcb55-602x400.png\";s:5:\"width\";i:602;s:6:\"height\";i:400;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:13:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}s:14:\"resized_images\";a:1:{i:0;s:7:\"500x500\";}}}'),
(111, 57, '_wp_attached_file', '2018/08/blog1.jpeg'),
(112, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1960;s:6:\"height\";i:960;s:4:\"file\";s:18:\"2018/08/blog1.jpeg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"blog1-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"blog1-590x289.jpeg\";s:5:\"width\";i:590;s:6:\"height\";i:289;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"blog1-768x376.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:376;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"blog1-800x392.jpeg\";s:5:\"width\";i:800;s:6:\"height\";i:392;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 58, '_wp_attached_file', '2018/08/blog2.jpg'),
(114, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:371;s:4:\"file\";s:17:\"2018/08/blog2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog2-590x214.jpg\";s:5:\"width\";i:590;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog2-768x278.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:278;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"blog2-800x290.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:290;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(115, 7, '_thumbnail_id', '58'),
(116, 7, '_yoast_wpseo_content_score', '90'),
(117, 59, '_wp_attached_file', '2018/08/blog2.png'),
(118, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2000;s:6:\"height\";i:467;s:4:\"file\";s:17:\"2018/08/blog2.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"blog2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"blog2-590x138.png\";s:5:\"width\";i:590;s:6:\"height\";i:138;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"blog2-768x179.png\";s:5:\"width\";i:768;s:6:\"height\";i:179;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"blog2-800x187.png\";s:5:\"width\";i:800;s:6:\"height\";i:187;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 5, '_thumbnail_id', '59'),
(120, 5, '_yoast_wpseo_content_score', '90');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-22 02:14:38', '2018-08-22 02:14:38', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'trash', 'open', 'open', '', 'hola-mundo__trashed', '', '', '2018-08-24 02:29:25', '2018-08-24 02:29:25', '', 0, 'http://186.64.118.50/~feg7carolina/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-22 02:14:38', '2018-08-22 02:14:38', 'Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://186.64.118.50/~feg7carolina/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!', 'Página de ejemplo', '', 'trash', 'closed', 'open', '', 'pagina-de-ejemplo__trashed', '', '', '2018-08-23 01:44:35', '2018-08-23 01:44:35', '', 0, 'http://186.64.118.50/~feg7carolina/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-08-22 02:14:38', '2018-08-22 02:14:38', '<h2>Who we are</h2><p>Our website address is: http://186.64.118.50/~feg7carolina.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-08-23 01:44:35', '2018-08-23 01:44:35', '', 0, 'http://186.64.118.50/~feg7carolina/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-08-22 02:57:35', '2018-08-22 02:57:35', 'Explicamos en qué consisten los mapas de empatía y cuál es su función en el diseño de los servicios de una empresa.\r\n\r\nUno de los grandes desafíos de las empresas actuales consiste en la coordinación de acciones en distintas plataformas. Los usuarios de hoy usan motores de búsqueda, redes sociales, sitios web y aplicaciones, como un complemento de las tiendas físicas.\r\n\r\nEl diseño de servicios responde a esta necesidad analizando los puntos de contacto para que las empresas puedan anticiparse a las necesidades de los usuarios en cada etapa. Con esta información es posible responder adecuadamente, en el momento preciso.\r\n\r\nComo objetivo final, <strong>el diseño de servicios busca la creación de experiencias satisfactorias</strong>, que destaquen a una empresa. Además de usar<a href=\"https://blog.ida.cl/blog/diseno/consiste-customer-journey-map/\"> journey maps</a> y otros estudios, esta disciplina usa mapas de empatía para lograr su propósito.\r\n\r\nUn<strong> mapa de empatía es un gráfico de las emociones, deseos y necesidades</strong> que experimenta un usuario en distintas etapas. Con esta herramienta, las empresas se ponen en el lugar de las personas para identificar formas de optimizar los productos y servicios.\r\n<h2>VARIABLES DEL MAPA DE EMPATÍA</h2>\r\nPara entender la experiencia del usuario y sus necesidades, <strong>el mapa estudia cuatro variables básicas:</strong>\r\n<ul>\r\n 	<li><strong>Lo que ve el usuario:</strong> Describe el contexto, lo que percibe de la marca.</li>\r\n 	<li><strong>Qué dice y hace:</strong> Estudia desde su aspecto físico hasta su actitud en público, detallando cómo se comporta en situaciones comunes.</li>\r\n 	<li><strong>Lo que escucha:</strong> Investiga qué dicen las personas con las que interactúa.</li>\r\n 	<li><strong>Qué piensa y siente:</strong> Estima su valoración de sobre los productos y servicios, sus prioridades, preocupaciones y expectativas.</li>\r\n</ul>\r\nUna vez definida esta información, se hace un análisis de<strong> dos variables más complejas:</strong>\r\n<ul>\r\n 	<li><strong>Esfuerzos:</strong> Identifica las barreras que enfrenta el usuario para conseguir lo que busca, analizando sus miedos y lo que está dispuesto a arriesgar.</li>\r\n 	<li><strong>Resultados:</strong> Determina cuáles son los beneficios que el usuario espera percibir y cómo piensa alcanzarlos.</li>\r\n</ul>\r\n<h2>¿CÓMO CONSTRUIR UN MAPA DE EMPATÍA?</h2>\r\nEl primer paso para construir el mapa es entender el contexto que se está analizando. Para esto hay que responder preguntas como: “¿Se trata de un producto o servicio nuevo?”, “¿Cuál es el modelo de negocio?”, “¿Está familiarizado el usuario con la empresa?”.\r\n\r\nLuego hay que definir el perfil del usuario o el segmento. El mapa puede analizar a prospectos, clientes fidelizados o usuarios ocasionales, por ejemplo.\r\n\r\nUna vez definida esta información, se dibuja el mapa en equipo, usando algún sistema colaborativo, como posts it o una pizarra. Entonces se sitúa al usuario en el centro, se identifican sus características básicas, y alrededor se analizan las variables (Qué ve, dice, hace, escucha, piensa y siente, junto a los esfuerzos y resultados).\r\n\r\nResumiendo, los pasos son:\r\n<ul>\r\n 	<li>Identificar el contexto general de la empresa.</li>\r\n 	<li>Definir el perfil del usuario.</li>\r\n 	<li>Analizar las variables.</li>\r\n</ul>\r\n<h2>UTILIDAD DEL MAPA EN LOS PROYECTOS</h2>\r\nLos resultados del mapa de empatía sirven como<strong> base para la estrategia UX de una empresa. </strong>El mapa entrega un nivel profundo de conocimiento para guiar las estrategias según las necesidades de los usuarios. Con esta información, las empresas pueden diseñar servicios que reduzcan los esfuerzos, ofrezcan el apoyo adecuado y entreguen rápidamente los beneficios esperados.\r\n\r\nAdemás, al dirigir las estrategias a personas concretas y crear servicios a su medida, las marcas pueden<strong> destacarse por sobre la competencia.</strong>', '¿Qué es un mapa de empatía?', '', 'publish', 'closed', 'closed', '', 'que-es-un-mapa-de-empatia', '', '', '2018-08-24 03:25:28', '2018-08-24 03:25:28', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=blog&#038;p=5', 0, 'blog', '', 0),
(7, 1, '2018-08-22 03:00:14', '2018-08-22 03:00:14', '<div class=\"uk-container uk-container-center\"><article id=\"post-9518\" class=\"uk-article post-9518 quees type-quees status-publish has-post-thumbnail hentry\">\r\n<div class=\"bh-article-wrapper\">\r\n<div class=\"bh-article-content-wrapper\">\r\n<div class=\"uk-grid uk-grid-large\" data-uk-grid-margin=\"\">\r\n<div class=\"uk-width-large-7-10 uk-row-first\">\r\n<div class=\"bh-article-content\">\r\n\r\nEl A/B Test <strong>consiste en desarrollar y lanzar dos versiones de un mismo elemento y medir cuál funciona mejor</strong>. Es una prueba que nos sirve para optimizar una estrategia de email marketing o <a href=\"https://www.40defiebre.com/como-crear-landing-page-convierta/\" target=\"_blank\" rel=\"noopener\">mejorar la efectividad de una landing page</a>.\r\n\r\nSi has detectado que tu página atraviesa una mala época, es momento de aplicar acciones para mejorar tu tasa de apertura y click-throughs\r\n<h2>¿Cómo funciona el A/B Test?</h2>\r\nEste método consiste en desarrollar dos versiones de un mismo elemento que vamos a lanzar al mercado (por ejemplo, un botón de CTA azul y uno amarillo), y luego <strong>utilizar las métricas de cada variación para evaluar cuál funciona mejor</strong>.\r\n\r\nAl contrario de lo que pueda parecer, <strong>hacer muchas variaciones no tiene porqué producir impactos negativos</strong>; son cambios incrementales que mantendrán a tus usuarios conectados y más cerca del último eslabón del ciclo de compra.\r\n\r\nPara utilizar bien el A/B Test debemos centrar nuestra atención en esos elementos que influyen en el ratio de apertura de un email y en los clics que el usuario hace en una landing page. <strong>Estos son algunos de esos elementos que podemos testar en un A/B Test:</strong>\r\n<ul>\r\n 	<li>Las palabras, colores, tamaños y ubicación de tus CTAS.</li>\r\n 	<li>Los titulares y cuerpos de la descripción de tus productos.</li>\r\n 	<li>La extensión de un formulario y tipos de campos.</li>\r\n 	<li>El layout o estructura visual de tu página web.</li>\r\n 	<li>El modo de presentación del precio de tus productos y ofertas promocionales.</li>\r\n 	<li>Las imágenes (ubicación, propósito, contenido y cantidad) de las landings y páginas de tu producto.</li>\r\n 	<li>Cantidad de texto en una página web o en un blog post.</li>\r\n</ul>\r\n¡Aplícalo! Observarás curiosas tendencias de comportamiento en el A/B testing que pueden ayudarte a detectar mejoras de forma más eficiente que, por ejemplo, mediante una investigación de mercado. Al final, sigue siendo un approach cuantitativo que puede <strong>medir patrones de comportamiento de nuestras visitas y proveer los insights necesarios para desarrollar soluciones</strong>.\r\n\r\n</div>\r\n</div>\r\n<div class=\"bh-sidebar-right uk-width-medium-3-10 uk-visible-large\">\r\n<div class=\"uk-sticky-placeholder\">\r\n<div class=\"uk-active\" data-uk-sticky=\"{top: 100, boundary: true}\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</article></div>\r\n<footer class=\"bh-footer uk-contrast\">\r\n<div class=\"uk-container uk-container-center\">\r\n<div class=\"uk-grid\" data-uk-grid-margin=\"\">\r\n<div class=\"uk-width-medium-1-3 uk-row-first\">\r\n<div class=\"bh-footer-social\"></div>\r\n</div>\r\n</div>\r\n</div>\r\n</footer>', '¿Qué es el A/B Testing?', '', 'publish', 'closed', 'closed', '', 'que-es-el-a-b-testing', '', '', '2018-08-24 03:24:54', '2018-08-24 03:24:54', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=blog&#038;p=7', 0, 'blog', '', 0),
(8, 1, '2018-08-22 03:03:00', '2018-08-22 03:03:00', 'Si eres un emprendedor o el CEO de una empresa y has decidido crear o rediseñar un website para tu compañía, probablemente te has topado con términos confusos como <strong>experiencia de usuario.</strong> Esa misteriosa tendencia en el diseño web se ha convertido en una condición sine qua non del desarrollo de cualquier portal.\r\n\r\nAsí, cada vez son más las ofertas y demandas de diseñadores<strong> UX, UI e IxD</strong> en portales de contratación como Upwork, Freelancer o similares, y cada vez son más las personas confundidas por estos términos.\r\n\r\nPor ello, hemos hecho este post para aclarar algunas de las dudas más frecuentes al respecto.\r\n<h2>¿UX? ¿CON QUÉ SE COME?</h2>\r\nPara aclarar un poco el panorama, las siglas <strong>UX</strong> no significan nada más que <strong>experiencia de usuario</strong>, es decir, todo lo que vive y siente el cliente al entrar en contacto con nuestra marca y, en términos de diseño web, al entrar en contacto con toda la dimensión de la página web.\r\n\r\nWikipedia lo define de la siguiente manera:\r\n\r\n“La <strong>experiencia de usuario</strong> es el conjunto de factores y elementos relativos a la <strong>interacción del usuario</strong>, con un entorno o dispositivo concretos, cuyo resultado es la generación de una percepción positiva o negativa de dicho servicio, producto o dispositivo.”\r\n\r\n<img class=\"aligncenter wp-image-9297 size-full\" src=\"https://leapperu.com/wp-content/uploads/2017/11/ux.png\" sizes=\"(max-width: 800px) 100vw, 800px\" srcset=\"https://leapperu.com/wp-content/uploads/2017/11/ux.png 800w, https://leapperu.com/wp-content/uploads/2017/11/ux-300x225.png 300w, https://leapperu.com/wp-content/uploads/2017/11/ux-768x576.png 768w\" alt=\"ux - user experience\" width=\"800\" height=\"600\" />\r\n\r\nEn síntesis, este término ha surgido para descubrir el diseño gráfico y web cuyo enfoque no es solo el atractivo de una página, sino <strong>su usabilidad y la experiencia</strong> que siente el cliente al navegar a través de ella.\r\n\r\nEste tipo de diseño se ha adaptado al nuevo paradigma de la publicidad contemporánea y el mercadeo digital, en el que el cliente decide vivir su experiencia antes que ser empujado a través de ella.\r\n\r\nPara que un <strong>diseñador de experiencias de usuario</strong> lleve a cabo su trabajo, es necesario que este comprenda las necesidades y deseos del público de la marca, para que a partir de esto pueda idear un plan de experiencia web que se adapte a cada uno de estos aspectos.\r\n\r\nEsto es logrado por los diseñadores <strong>UX</strong> a través de tests o validaciones directas (focus groups, entrevistas, relevamiento de modelos mentales) o indirectas(a/b test, heat maps, click maps) que facilitan el entendimiento del comportamiento y la experiencia de los usuarios.\r\n<h2>¿QUÉ HAY DEL UI?</h2>\r\n<strong>UI design</strong> es un nombre que hace referencia al <strong>diseño de las interfaces de usuarios</strong>, es decir, el artefacto digital con el que los clientes interactúan al momento de navegar a través de un portal web.\r\n\r\nEl <strong>diseño de la interfaz de usuario</strong> está inevitablemente conectado con el <strong>diseño de la experiencia de los usuarios</strong>, porque en en la planificación contemporánea de páginas web, cada elemento con el que interactúa un cliente está pensado para adaptarse para sus necesidades y deseos como público de la marca.\r\n\r\nLos diseñadores de interfaz, aquellos encargados de los aspectos técnicos, lógicos y mecánicos de la página web, trabajan en conjunto con los diseñadores de experiencia para alcanzar un punto medio ideal: <strong>la interacción de usuario.</strong>\r\n<h2>INTERACCIÓN DE USUARIO</h2>\r\nEl <strong>diseño de interacción de usuario</strong>, a veces abreviado como <strong>IxD, por interaction design,</strong> es la práctica de planificar las acciones de un usuario en una plataforma web a través del trabajo conjunto de una interfaz estratégicamente pensada y una experiencia de usuario diseñada según las sensaciones y requerimientos del cliente.\r\n\r\nLa unión de estos tres elementos da forma a la nueva normativa del diseño web en el 2017: un diseño completamente pensado en el usuario y sus requerimientos.\r\n<h2>IMPORTANCIA DEL DISEÑO DE INTERFAZ, INTERACCIÓN Y EXPERIENCIA</h2>\r\n<img class=\"aligncenter wp-image-9298\" src=\"https://leapperu.com/wp-content/uploads/2017/11/ux-ui-ixd-300x151.png\" sizes=\"(max-width: 519px) 100vw, 519px\" srcset=\"https://leapperu.com/wp-content/uploads/2017/11/ux-ui-ixd-300x151.png 300w, https://leapperu.com/wp-content/uploads/2017/11/ux-ui-ixd-768x386.png 768w, https://leapperu.com/wp-content/uploads/2017/11/ux-ui-ixd.png 1024w\" alt=\"ux, ui y ixd\" width=\"519\" height=\"261\" />\r\n\r\nPese a que el término <strong>diseño experiencia de usuario</strong> suena novedoso, no es realmente algo que esté muy alejado de las tendencias del mercadeo durante los años recientes. Cada vez son más los negocios y emprendimiento digitales que van surgiendo y cada vez es más complicado lograr un espacio en un mercado tan competitivo.\r\n\r\nEs por esto que las empresas están invirtiendo muchos más esfuerzos en tratar de brindar a los usuarios la mejor experiencia posible a través de su ecosistema digital y en la entrega de su propuesta de valor.\r\n\r\nLa inclusión de estrategias inbound, que buscan la atracción de nuevos clientes de manera orgánica y espontánea, sin empujarlos o acosarlos para que se vuelvan promotores de tu marca, no es solo una manera de adaptarse a una nueva tendencia, sino una forma de asegurar la supervivencia de tu empresa en un paradigma de clientes cada vez más exigentes con sus experiencias.\r\n\r\nDe allí que sea tan importante entender la función de estos conceptos y tomarlos como punto de partida para empezar a planificar la experiencia de tus clientes a través del website y el ecosistema digital de tu negocio.', '¿UX, UI E IXD? Conceptos básicos sobre la experiencia de usuario', '', 'publish', 'closed', 'closed', '', 'ux-ui-e-ixd-conceptos-basicos-sobre-la-experiencia-de-usuario', '', '', '2018-08-24 03:24:23', '2018-08-24 03:24:23', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=blog&#038;p=8', 0, 'blog', '', 0),
(9, 1, '2018-08-22 03:26:33', '2018-08-22 03:26:33', '<img class=\"wp-image-10 aligncenter\" src=\"http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/proyecto1-179x300.png\" alt=\"\" width=\"800\" height=\"1344\" />', 'Portafolio Absal', '', 'publish', 'closed', 'closed', '', 'portafolio-absal', '', '', '2018-08-24 03:12:57', '2018-08-24 03:12:57', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=9', 0, 'portafolio', '', 0),
(10, 1, '2018-08-22 03:25:52', '2018-08-22 03:25:52', '', 'proyecto1', '', 'inherit', 'open', 'closed', '', 'proyecto1', '', '', '2018-08-22 03:25:52', '2018-08-22 03:25:52', '', 9, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/proyecto1.png', 0, 'attachment', 'image/png', 0),
(11, 1, '2018-08-23 01:44:35', '2018-08-23 01:44:35', 'Esta es una página de ejemplo. Es diferente a una entrada del blog, ya que se quedará en un lugar y se mostrará en la navegación del sitio (en la mayoría de temas). La mayoría de personas empieza con una página \"Acerca de\" que brinda información a los visitantes. Se podría decir algo como esto:\n\n<blockquote>¡Hola! Durante el día soy un mensajero, un aspirante a actor por la noche, y este es mi blog. Vivo en Valparaíso, tengo un enorme perro llamado Pocho, y me gustan las cervezas muy heladas. (Y caminar por la playa.)</blockquote>\n\n...o algo como esto:\n\n<blockquote>La compañía XYZ, se fundó en 1971, y ha estado desde entonces, proporcionando artilugios de calidad al público. Está situada en la ciudad de Concepción, Chile y emplea a más de 2,000 personas. Hace todo tipo de cosas sorprendentes para la comunidad penquista.</blockquote>\n\nComo nuevo usuario de WordPress,  debes ir a <a href=\"http://186.64.118.50/~feg7carolina/wp-admin/\">tu panel</a> para eliminar esta página y crear nuevas para tu contenido. ¡Que te diviertas!', 'Página de ejemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-23 01:44:35', '2018-08-23 01:44:35', '', 2, 'http://186.64.118.50/~feg7carolina/2018/08/23/2-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2018-08-23 01:44:35', '2018-08-23 01:44:35', '<h2>Who we are</h2><p>Our website address is: http://186.64.118.50/~feg7carolina.</p><h2>What personal data we collect and why we collect it</h2><h3>Comentarios</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Multimedia</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-08-23 01:44:35', '2018-08-23 01:44:35', '', 3, 'http://186.64.118.50/~feg7carolina/2018/08/23/3-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-08-23 01:45:01', '2018-08-23 01:45:01', '', 'Contacto', '', 'publish', 'closed', 'closed', '', 'contacto', '', '', '2018-08-23 01:48:15', '2018-08-23 01:48:15', '', 0, 'http://186.64.118.50/~feg7carolina/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-08-23 01:45:01', '2018-08-23 01:45:01', '', 'Contacto', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-08-23 01:45:01', '2018-08-23 01:45:01', '', 13, 'http://186.64.118.50/~feg7carolina/2018/08/23/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-08-23 01:45:20', '2018-08-23 01:45:20', '[Modula id=\'1\']', 'Inicio', '', 'publish', 'closed', 'closed', '', 'inicio', '', '', '2018-08-24 01:45:48', '2018-08-24 01:45:48', '', 0, 'http://186.64.118.50/~feg7carolina/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-08-23 01:45:20', '2018-08-23 01:45:20', '', 'Inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-23 01:45:20', '2018-08-23 01:45:20', '', 15, 'http://186.64.118.50/~feg7carolina/2018/08/23/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-23 01:57:45', '2018-08-23 01:57:45', '', 'Portafolio 2', '', 'trash', 'closed', 'closed', '', 'portafolio-2__trashed', '', '', '2018-08-24 03:00:00', '2018-08-24 03:00:00', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=17', 0, 'portafolio', '', 0),
(18, 1, '2018-08-23 01:57:55', '2018-08-23 01:57:55', '[Modula id=\'3\']', 'La Familia de Javiera', '', 'publish', 'closed', 'closed', '', 'portafolio-3', '', '', '2018-08-24 03:22:14', '2018-08-24 03:22:14', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=18', 0, 'portafolio', '', 0),
(19, 1, '2018-08-24 01:24:36', '2018-08-24 01:24:36', '[Best_Wordpress_Gallery id=\"1\" gal_title=\"Home\"]', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-24 01:30:49', '2018-08-24 01:30:49', '', 0, 'http://186.64.118.50/~feg7carolina/bwg_gallery/home/', 0, 'bwg_gallery', '', 0),
(21, 1, '2018-08-24 01:29:36', '2018-08-24 01:29:36', '<img class=\"aligncenter wp-image-22 size-large\" src=\"http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport2-753x1024.png\" alt=\"\" width=\"753\" height=\"1024\" />', 'Inmobiliaria CVP', '', 'publish', 'closed', 'closed', '', 'inmobiliaria-cvp', '', '', '2018-08-24 03:09:26', '2018-08-24 03:09:26', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=21', 0, 'portafolio', '', 0),
(22, 1, '2018-08-24 01:29:21', '2018-08-24 01:29:21', '', 'imgport2', '', 'inherit', 'open', 'closed', '', 'imgport2', '', '', '2018-08-24 01:29:21', '2018-08-24 01:29:21', '', 21, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2018-08-24 01:31:00', '2018-08-24 01:31:00', '<img class=\"wp-image-24 aligncenter\" src=\"http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport3-286x1024.png\" alt=\"\" width=\"650\" height=\"2325\" />', 'The Best Of Santiago', '', 'publish', 'closed', 'closed', '', 'the-best-of-santiago', '', '', '2018-08-24 03:09:02', '2018-08-24 03:09:02', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=23', 0, 'portafolio', '', 0),
(24, 1, '2018-08-24 01:30:40', '2018-08-24 01:30:40', '', 'imgport3', '', 'inherit', 'open', 'closed', '', 'imgport3', '', '', '2018-08-24 01:30:40', '2018-08-24 01:30:40', '', 23, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport3.png', 0, 'attachment', 'image/png', 0),
(25, 1, '2018-08-24 01:44:02', '2018-08-24 01:44:02', '', 'foto2g', '', 'inherit', 'open', 'closed', '', 'foto2g', '', '', '2018-08-24 01:44:02', '2018-08-24 01:44:02', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto2g.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-08-24 01:44:03', '2018-08-24 01:44:03', '', 'foto1g', '', 'inherit', 'open', 'closed', '', 'foto1g', '', '', '2018-08-24 01:44:03', '2018-08-24 01:44:03', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto1g.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-08-24 01:45:48', '2018-08-24 01:45:48', '[Modula id=\'1\']', 'Inicio', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-08-24 01:45:48', '2018-08-24 01:45:48', '', 15, 'http://186.64.118.50/~feg7carolina/2018/08/24/15-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2018-08-24 01:52:54', '2018-08-24 01:52:54', '', 'jiJZXEJ', '', 'inherit', 'open', 'closed', '', 'jijzxej', '', '', '2018-08-24 01:52:54', '2018-08-24 01:52:54', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/jiJZXEJ.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-08-24 01:56:06', '2018-08-24 01:56:06', '<img class=\"size-medium wp-image-22 aligncenter\" src=\"http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport2-221x300.png\" alt=\"\" width=\"221\" height=\"300\" />', 'Inmobiliaria CVP', '', 'inherit', 'closed', 'closed', '', '21-autosave-v1', '', '', '2018-08-24 01:56:06', '2018-08-24 01:56:06', '', 21, 'http://186.64.118.50/~feg7carolina/2018/08/24/21-autosave-v1/', 0, 'revision', '', 0),
(30, 1, '2018-08-24 01:57:24', '2018-08-24 01:57:24', '', 'cvpweb_11-9-17', '', 'inherit', 'open', 'closed', '', 'cvpweb_11-9-17', '', '', '2018-08-24 01:57:24', '2018-08-24 01:57:24', '', 21, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/cvpweb_11-9-17.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 1, '2018-08-24 02:00:16', '2018-08-24 02:00:16', '', '2cd4a155394317.59825b4cbd0a1', '', 'inherit', 'open', 'closed', '', '2cd4a155394317-59825b4cbd0a1', '', '', '2018-08-24 02:00:16', '2018-08-24 02:00:16', '', 18, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2cd4a155394317.59825b4cbd0a1.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2018-08-24 02:00:23', '2018-08-24 02:00:23', '', 'portimg1-01', '', 'inherit', 'open', 'closed', '', 'portimg1-01', '', '', '2018-08-24 02:00:23', '2018-08-24 02:00:23', '', 8, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/portimg1-01.png', 0, 'attachment', 'image/png', 0),
(33, 1, '2018-08-24 02:00:32', '2018-08-24 02:00:32', '', '3c40d755394317.59825b4cbdd8c', '', 'inherit', 'open', 'closed', '', '3c40d755394317-59825b4cbdd8c', '', '', '2018-08-24 02:00:32', '2018-08-24 02:00:32', '', 18, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3c40d755394317.59825b4cbdd8c.png', 0, 'attachment', 'image/png', 0),
(34, 1, '2018-08-24 02:00:41', '2018-08-24 02:00:41', '', '68bc4755394317.59825b4cbc654', '', 'inherit', 'open', 'closed', '', '68bc4755394317-59825b4cbc654', '', '', '2018-08-24 02:00:41', '2018-08-24 02:00:41', '', 18, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/68bc4755394317.59825b4cbc654.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-08-24 02:00:54', '2018-08-24 02:00:54', '', '220d6c55394317.59825b4cbd8b9', '', 'inherit', 'open', 'closed', '', '220d6c55394317-59825b4cbd8b9', '', '', '2018-08-24 02:00:54', '2018-08-24 02:00:54', '', 18, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/220d6c55394317.59825b4cbd8b9.png', 0, 'attachment', 'image/png', 0),
(36, 1, '2018-08-24 02:01:09', '2018-08-24 02:01:09', '', 'imgport6', '', 'inherit', 'open', 'closed', '', 'imgport6', '', '', '2018-08-24 02:01:09', '2018-08-24 02:01:09', '', 18, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport6.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2018-08-24 02:02:29', '2018-08-24 02:02:29', '[gallery ids=\"31,33,34,35,36\"]\n\n[Best_Wordpress_Gallery id=\"4\" gal_title=\"All images\"]', 'Portafolio 3', '', 'inherit', 'closed', 'closed', '', '18-autosave-v1', '', '', '2018-08-24 02:02:29', '2018-08-24 02:02:29', '', 18, 'http://186.64.118.50/~feg7carolina/2018/08/24/18-autosave-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-24 03:24:16', '2018-08-24 03:24:16', '', 'blog1', '', 'inherit', 'open', 'closed', '', 'blog1', '', '', '2018-08-24 03:24:16', '2018-08-24 03:24:16', '', 8, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog1.jpeg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-08-24 02:29:25', '2018-08-24 02:29:25', 'Bienvenido(a) a WordPress. Esta es tu primera entrada. Edítala o bórrala ¡y comienza a publicar!', '¡Hola mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-24 02:29:25', '2018-08-24 02:29:25', '', 1, 'http://186.64.118.50/~feg7carolina/2018/08/24/1-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2018-08-24 03:08:41', '2018-08-24 03:08:41', '', 'fotocard1', '', 'inherit', 'open', 'closed', '', 'fotocard1', '', '', '2018-08-24 03:08:41', '2018-08-24 03:08:41', '', 23, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/fotocard1.png', 0, 'attachment', 'image/png', 0),
(41, 1, '2018-08-24 03:08:48', '2018-08-24 03:08:48', '', 'fotocard2', '', 'inherit', 'open', 'closed', '', 'fotocard2', '', '', '2018-08-24 03:08:48', '2018-08-24 03:08:48', '', 23, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/fotocard2.png', 0, 'attachment', 'image/png', 0),
(42, 1, '2018-08-24 03:08:52', '2018-08-24 03:08:52', '', 'fotocard4', '', 'inherit', 'open', 'closed', '', 'fotocard4', '', '', '2018-08-24 03:08:52', '2018-08-24 03:08:52', '', 23, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/fotocard4.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-08-24 03:08:54', '2018-08-24 03:08:54', '', 'fotocards3', '', 'inherit', 'open', 'closed', '', 'fotocards3', '', '', '2018-08-24 03:08:54', '2018-08-24 03:08:54', '', 23, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/fotocards3.png', 0, 'attachment', 'image/png', 0),
(44, 1, '2018-08-24 03:11:32', '2018-08-24 03:11:32', '<img class=\"alignnone wp-image-10\" src=\"http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/proyecto1-179x300.png\" alt=\"\" width=\"800\" height=\"1344\" />', 'Portafolio Absal', '', 'inherit', 'closed', 'closed', '', '9-autosave-v1', '', '', '2018-08-24 03:11:32', '2018-08-24 03:11:32', '', 9, 'http://186.64.118.50/~feg7carolina/2018/08/24/9-autosave-v1/', 0, 'revision', '', 0),
(45, 1, '2018-08-24 03:11:32', '2018-08-24 03:11:32', '', 'portimg1-01', '', 'inherit', 'open', 'closed', '', 'portimg1-01-2', '', '', '2018-08-24 03:11:32', '2018-08-24 03:11:32', '', 9, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/portimg1-01-1.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2018-08-24 03:12:25', '2018-08-24 03:12:25', '', 'fotocard5', '', 'inherit', 'open', 'closed', '', 'fotocard5', '', '', '2018-08-24 03:12:25', '2018-08-24 03:12:25', '', 9, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/fotocard5.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2018-08-24 03:18:47', '2018-08-24 03:18:47', '[Modula id=\'2\']', 'Llamado Sale 7veinte', '', 'publish', 'closed', 'closed', '', 'llamado-sale-7veinte', '', '', '2018-08-24 03:18:47', '2018-08-24 03:18:47', '', 0, 'http://186.64.118.50/~feg7carolina/?post_type=portafolio&#038;p=47', 0, 'portafolio', '', 0),
(48, 1, '2018-08-24 03:14:59', '2018-08-24 03:14:59', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2018-08-24 03:14:59', '2018-08-24 03:14:59', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/1.png', 0, 'attachment', 'image/png', 0),
(49, 1, '2018-08-24 03:15:11', '2018-08-24 03:15:11', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-08-24 03:15:11', '2018-08-24 03:15:11', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-08-24 03:15:17', '2018-08-24 03:15:17', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-08-24 03:15:17', '2018-08-24 03:15:17', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3.png', 0, 'attachment', 'image/png', 0),
(51, 1, '2018-08-24 03:15:28', '2018-08-24 03:15:28', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-08-24 03:15:28', '2018-08-24 03:15:28', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/4.png', 0, 'attachment', 'image/png', 0),
(52, 1, '2018-08-24 03:15:35', '2018-08-24 03:15:35', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-08-24 03:15:35', '2018-08-24 03:15:35', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/5.png', 0, 'attachment', 'image/png', 0),
(53, 1, '2018-08-24 03:15:43', '2018-08-24 03:15:43', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-08-24 03:15:43', '2018-08-24 03:15:43', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/6.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2018-08-24 03:15:50', '2018-08-24 03:15:50', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2018-08-24 03:15:50', '2018-08-24 03:15:50', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/7.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2018-08-24 03:15:55', '2018-08-24 03:15:55', '', '8', '', 'inherit', 'open', 'closed', '', '8', '', '', '2018-08-24 03:15:55', '2018-08-24 03:15:55', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/8.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2018-08-24 03:20:46', '2018-08-24 03:20:46', '', 'f79c1055394317.59825b4cbcb55', '', 'inherit', 'open', 'closed', '', 'f79c1055394317-59825b4cbcb55', '', '', '2018-08-24 03:20:46', '2018-08-24 03:20:46', '', 0, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/f79c1055394317.59825b4cbcb55.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-08-24 03:24:49', '2018-08-24 03:24:49', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2', '', '', '2018-08-24 03:24:49', '2018-08-24 03:24:49', '', 7, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog2.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 1, '2018-08-24 03:25:20', '2018-08-24 03:25:20', '', 'blog2', '', 'inherit', 'open', 'closed', '', 'blog2-2', '', '', '2018-08-24 03:25:20', '2018-08-24 03:25:20', '', 5, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/blog2.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:7:{s:64:\"b96d6c5a2c4f8890ed4b19ea2769373d63b598b5eba274a24ed15b3c2d8b48bf\";a:4:{s:10:\"expiration\";i:1536113690;s:2:\"ip\";s:13:\"143.255.179.7\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534904090;}s:64:\"646f0e15834c1639e86f192d7981800d1ff5b768ccea27eb431594ee89cd2073\";a:4:{s:10:\"expiration\";i:1536113922;s:2:\"ip\";s:15:\"200.104.132.181\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534904322;}s:64:\"99178717dd62fce5a698a359e3da298a0bf02616378d3840060206037a3ef3ac\";a:4:{s:10:\"expiration\";i:1536115455;s:2:\"ip\";s:13:\"143.255.179.7\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534905855;}s:64:\"e1dd3fecc6dc964b66e87e2a03b5be76819ec4cc2ea6ab6a39e5ba52e129cd91\";a:4:{s:10:\"expiration\";i:1536115844;s:2:\"ip\";s:13:\"143.255.179.7\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534906244;}s:64:\"21b242cecd06055808336d1305834f6c11a9831f6db9d41ef139e394054639eb\";a:4:{s:10:\"expiration\";i:1536196536;s:2:\"ip\";s:13:\"143.255.179.7\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534986936;}s:64:\"ee6d4681c2e4dce4c1296c666598db7381f768f73b9cf2d523b6317f592d2374\";a:4:{s:10:\"expiration\";i:1536197308;s:2:\"ip\";s:13:\"143.255.179.7\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1534987708;}s:64:\"a2e37f9f9107d8b727155400ed3f755af9a699841edab88a4ed743c880e123fd\";a:4:{s:10:\"expiration\";i:1535251858;s:2:\"ip\";s:12:\"191.125.26.3\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/67.0.3396.99 Safari/537.36\";s:5:\"login\";i:1535079058;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"191.125.26.0\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o'),
(20, 1, 'wp_user-settings-time', '1535078386'),
(23, 1, 'wpseo-remove-upsell-notice', '1'),
(24, 1, 'wp_yoast_notifications', 'a:2:{i:0;a:2:{s:7:\"message\";s:185:\"No se pierda sus errores de rastreo: <a href=\"http://186.64.118.50/~feg7carolina/wp-admin/admin.php?page=wpseo_search_console&tab=settings\">conectar con Google Search Consola aquí</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:7:\"warning\";s:2:\"id\";s:17:\"wpseo-dismiss-gsc\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}i:1;a:2:{s:7:\"message\";s:353:\"Todavía tienes la descripción corta de WordPress, incluso sería mejor dejarla vacía. <a href=\"http://186.64.118.50/~feg7carolina/wp-admin/customize.php?autofocus[control]=blogdescription&amp;url=http%3A%2F%2F186.64.118.50%2F%7Efeg7carolina%2Fwp-admin%2Fpost.php%3Fpost%3D5%26action%3Dedit%26message%3D1\">Puedes solucionarlo en el personalizador</a>.\";s:7:\"options\";a:9:{s:4:\"type\";s:5:\"error\";s:2:\"id\";s:28:\"wpseo-dismiss-tagline-notice\";s:5:\"nonce\";N;s:8:\"priority\";d:0.5;s:9:\"data_json\";a:0:{}s:13:\"dismissal_key\";N;s:12:\"capabilities\";s:20:\"wpseo_manage_options\";s:16:\"capability_check\";s:3:\"all\";s:14:\"yoast_branding\";b:0;}}}'),
(25, 1, 'bwg_photo_gallery', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BF.qfOPvnoPzcMFyzLqZ4hZmpLqwb8.', 'admin', 'catecuevas@gmail.com', '', '2018-08-22 02:14:38', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_seo_links`
--

CREATE TABLE `wp_yoast_seo_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_yoast_seo_links`
--

INSERT INTO `wp_yoast_seo_links` (`id`, `url`, `post_id`, `target_post_id`, `type`) VALUES
(1, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto2g.jpg', 15, 0, 'internal'),
(2, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/foto1g.jpg', 15, 0, 'internal'),
(60, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3c40d755394317.59825b4cbdd8c.png', 18, 0, 'internal'),
(56, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/220d6c55394317.59825b4cbd8b9.png', 18, 0, 'internal'),
(57, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/68bc4755394317.59825b4cbc654.jpg', 18, 0, 'internal'),
(58, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/f79c1055394317.59825b4cbcb55.png', 18, 0, 'internal'),
(59, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2cd4a155394317.59825b4cbd0a1.png', 18, 0, 'internal'),
(48, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/1.png', 47, 0, 'internal'),
(49, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/2.png', 47, 0, 'internal'),
(50, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/3.png', 47, 0, 'internal'),
(51, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/4.png', 47, 0, 'internal'),
(52, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/5.png', 47, 0, 'internal'),
(53, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/6.png', 47, 0, 'internal'),
(54, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/7.png', 47, 0, 'internal'),
(55, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/8.png', 47, 0, 'internal'),
(61, 'http://186.64.118.50/~feg7carolina/wp-content/uploads/2018/08/imgport6.png', 18, 0, 'internal'),
(62, 'https://www.40defiebre.com/como-crear-landing-page-convierta/', 7, 0, 'external'),
(63, 'https://blog.ida.cl/blog/diseno/consiste-customer-journey-map/', 5, 0, 'external');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_yoast_seo_meta`
--

CREATE TABLE `wp_yoast_seo_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT NULL,
  `incoming_link_count` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Volcado de datos para la tabla `wp_yoast_seo_meta`
--

INSERT INTO `wp_yoast_seo_meta` (`object_id`, `internal_link_count`, `incoming_link_count`) VALUES
(13, 0, 0),
(15, 2, 0),
(17, 0, 0),
(18, 6, 0),
(19, 0, 0),
(21, 0, 0),
(23, 0, 0),
(8, 0, 0),
(31, NULL, 0),
(33, NULL, 0),
(34, NULL, 0),
(35, NULL, 0),
(36, NULL, 0),
(9, 0, 0),
(47, 8, 0),
(7, 0, 0),
(5, 0, 0),
(4, 0, 0),
(6, 0, 0),
(20, 0, 0),
(38, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_modula`
--
ALTER TABLE `wp_modula`
  ADD UNIQUE KEY `id` (`Id`);

--
-- Indices de la tabla `wp_modula_images`
--
ALTER TABLE `wp_modula_images`
  ADD UNIQUE KEY `id` (`Id`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`);

--
-- Indices de la tabla `wp_yoast_seo_meta`
--
ALTER TABLE `wp_yoast_seo_meta`
  ADD UNIQUE KEY `object_id` (`object_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_modula`
--
ALTER TABLE `wp_modula`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `wp_modula_images`
--
ALTER TABLE `wp_modula_images`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=474;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_yoast_seo_links`
--
ALTER TABLE `wp_yoast_seo_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
