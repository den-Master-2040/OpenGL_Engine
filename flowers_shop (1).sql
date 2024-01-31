SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE `accounts_customuser` (
  `id` bigint NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `partonymic` varchar(100) NOT NULL,
  `rules` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `accounts_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `partonymic`, `rules`) VALUES
(1, 'pbkdf2_sha256$720000$xyqUeuYKW06ebO2J8rLomW$MnNL+giHApVX6p/rBGxL4c0n683fRTz9rzxZvw6XSGo=', '2024-01-31 10:18:28.666066', 1, 'admin', '', '', '', 1, 1, '2024-01-19 10:29:53.789795', '', 0),
(2, 'pbkdf2_sha256$720000$cbWp0eFdFADRNGeJPVLS1K$cIY8zkTGOsIqwCQzSbhUJPdt/tHQRzmd7m/wE3adbXE=', '2024-01-28 12:42:49.503483', 1, '1', '', '', '', 1, 1, '2024-01-28 12:42:32.679580', '', 0),
(3, 'pbkdf2_sha256$720000$zne5DA5rMjr9PUomLzQjsw$45dzO3APJnqT/EF2L14pO56/8MfdVV2yE/2nRw2yw04=', NULL, 0, '31', '12', '1234', '3123', 0, 1, '2024-01-28 21:06:13.181569', '321', 1),
(4, 'pbkdf2_sha256$720000$GC7tCJ4XQot0yUWu6TNur4$aCbBJLkMfErcGoyoxoeDJpaN8JQ93Z8VFdeGw0HEYsM=', NULL, 0, 'testusername', '1234', '12', '3123', 0, 1, '2024-01-28 21:12:39.088531', '31', 1),
(6, 'pbkdf2_sha256$720000$gUmORDFSW6NlXBDmP6SdP8$4OXL7+U1IKVb5KCTD0ESpqrS1LtgYL9bxSDsYT3Z+Tc=', NULL, 0, 'zabrodin_2017@mail.ru', '2857-22', '13213', 'vasya123dadka@gmail.com', 0, 1, '2024-01-28 21:54:22.522052', '12312', 1),
(7, 'pbkdf2_sha256$720000$AcpmInezyAeDj7qKwZ0ZP7$Cq1HHtb1pnYlA2wx0CuebJbnYZgVuvdwhrBGjkRFlpU=', NULL, 0, 'DEN_CHIK_master', 'Забродин', 'Данил', 'zabrodin_2017@mail.ru', 0, 1, '2024-01-29 10:01:22.265870', 'Евгеньевич', 1),
(8, 'pbkdf2_sha256$720000$V8dt8JpYpy2CoxCCmUlBID$LoEvgor+7LLvTofRCHxcWa5B2AAi/PMUw4I167n/2eM=', NULL, 0, '', '21', '`2', '', 0, 1, '2024-01-29 10:26:51.154996', '2`1', 1),
(12, 'pbkdf2_sha256$720000$82hJSXunY2hkWvSsOlvtYI$kp8LIQ2KBJSoFYOWXNbt8cmyn0Xz9dhZHgd8YP1KFKo=', NULL, 0, 'wer', 'erwe', 'rwe', '', 0, 1, '2024-01-29 10:45:36.221157', 'rwe', 0),
(22, 'pbkdf2_sha256$720000$DPTsTbSDCAM6T25DpjSqke$OBdeFdHmCTnal4EpF8F67me4F2auNZK1b3DJ1Qx2OW0=', NULL, 0, '132', '32', '312', '132@31', 0, 1, '2024-01-29 11:39:49.729920', '312', 0),
(26, 'pbkdf2_sha256$720000$xPfq6BNeW4GgbLYqpA55kW$+Ag3XLvC5gFB3eXrZA6ye7hZO7AFlZDXIVhjIzS5+Mw=', NULL, 0, '23', '312', '312', '12@123', 0, 1, '2024-01-29 11:47:51.618197', '123', 1),
(27, 'pbkdf2_sha256$720000$YzG1lCj56jXcNb0vdZhVKZ$uLKAjSD/I4WybZXRrTvJZtYeKbUm+KVrxmqnr/OKR50=', NULL, 0, '321', '213', '31', '312312@121', 0, 1, '2024-01-29 12:11:32.405886', '312', 1),
(31, 'pbkdf2_sha256$720000$UrK4f3rnYUUnbHFczF2LXX$QILUqNRt3KzzIKHoo4P648rsV3tv2Jq9hZgc8Oi06B4=', NULL, 0, '123333', 'test', 'tset', '312312@121', 0, 1, '2024-01-29 12:15:12.907993', '312', 1),
(33, 'pbkdf2_sha256$720000$33UNtmEInNPA2LHO5yWMib$9TIs5wYZ54oN7PWFmCEULTQWPuXmPfT6OyiB8Pyk3i4=', '2024-01-30 16:49:50.358327', 0, '2', '2857-22', '31', 'vasya123dadka@gmail.com', 0, 1, '2024-01-29 12:50:06.190983', '312', 0),
(34, 'pbkdf2_sha256$720000$0uOa3gX6UhDYHHuh0ubVfD$e2SUFFXT6WzQMzc3o2MvDDIWHhY46HlNTg1Cq5on5Ts=', '2024-01-29 22:03:19.894150', 1, '12', '', '', '', 1, 1, '2024-01-29 21:05:21.756966', '', 0),
(35, 'pbkdf2_sha256$720000$PkWW1iwfpMfAxgsGPTFexC$pSeIUT1Cir80ibX0p0omdJVFMPophsxxp9NSq6iqS0c=', '2024-01-30 11:15:56.994132', 0, 'GGWP', 'Буба', 'Бубов', 'anohinila088@gmail.com', 0, 1, '2024-01-30 11:15:05.428556', 'Бубович', 1);

CREATE TABLE `accounts_customuser_groups` (
  `id` bigint NOT NULL,
  `customuser_id` bigint NOT NULL,
  `group_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `accounts_customuser_user_permissions` (
  `id` bigint NOT NULL,
  `customuser_id` bigint NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `auth_group` (
  `id` int NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `auth_permission` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add cart', 7, 'add_cart'),
(26, 'Can change cart', 7, 'change_cart'),
(27, 'Can delete cart', 7, 'delete_cart'),
(28, 'Can view cart', 7, 'view_cart'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add country', 9, 'add_country'),
(34, 'Can change country', 9, 'change_country'),
(35, 'Can delete country', 9, 'delete_country'),
(36, 'Can view country', 9, 'view_country'),
(37, 'Can add carts', 10, 'add_carts'),
(38, 'Can change carts', 10, 'change_carts'),
(39, 'Can delete carts', 10, 'delete_carts'),
(40, 'Can view carts', 10, 'view_carts'),
(41, 'Can add orders', 11, 'add_orders'),
(42, 'Can change orders', 11, 'change_orders'),
(43, 'Can delete orders', 11, 'delete_orders'),
(44, 'Can view orders', 11, 'view_orders'),
(45, 'Can add status order', 12, 'add_statusorder'),
(46, 'Can change status order', 12, 'change_statusorder'),
(47, 'Can delete status order', 12, 'delete_statusorder'),
(48, 'Can view status order', 12, 'view_statusorder');

CREATE TABLE `django_admin_log` (
  `id` int NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` bigint NOT NULL
) ;

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-01-19 11:46:52.638964', '1', 'Cart object (1)', 1, '[{\"added\": {}}]', 7, 1),
(2, '2024-01-21 15:07:41.369320', '2', 'Cart object (2)', 1, '[{\"added\": {}}]', 7, 1),
(3, '2024-01-21 15:38:44.134778', '3', 'Cart object (3)', 1, '[{\"added\": {}}]', 7, 1),
(4, '2024-01-21 16:41:48.684418', '4', 'Cart object (4)', 1, '[{\"added\": {}}]', 7, 1),
(5, '2024-01-21 16:42:38.183637', '3', 'Cart object (3)', 3, '', 7, 1),
(6, '2024-01-21 18:41:47.432836', '5', 'Cart object (5)', 1, '[{\"added\": {}}]', 7, 1),
(7, '2024-01-22 15:08:09.077645', '1', 'Carts object (1)', 1, '[{\"added\": {}}]', 10, 1),
(8, '2024-01-22 15:25:31.697865', '2', 'Carts object (2)', 1, '[{\"added\": {}}]', 10, 1),
(9, '2024-01-22 15:26:16.233145', '3', 'Carts object (3)', 1, '[{\"added\": {}}]', 10, 1),
(10, '2024-01-22 15:26:42.036736', '4', 'Carts object (4)', 1, '[{\"added\": {}}]', 10, 1),
(11, '2024-01-28 12:44:34.335382', '5', 'Carts object (5)', 1, '[{\"added\": {}}]', 10, 2),
(12, '2024-01-29 21:06:55.614838', '1', 'StatusOrder object (1)', 1, '[{\"added\": {}}]', 12, 34),
(13, '2024-01-31 10:18:52.781457', '2', 'Category object (2)', 1, '[{\"added\": {}}]', 8, 1),
(14, '2024-01-31 10:34:59.090369', '6', 'Carts object (6)', 1, '[{\"added\": {}}]', 10, 1);

CREATE TABLE `django_content_type` (
  `id` int NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(6, 'accounts', 'customuser'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(7, 'testBootstrap', 'cart'),
(10, 'testBootstrap', 'carts'),
(8, 'testBootstrap', 'category'),
(9, 'testBootstrap', 'country'),
(11, 'testBootstrap', 'orders'),
(12, 'testBootstrap', 'statusorder');

CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-01-19 10:29:03.346341'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-01-19 10:29:03.422578'),
(3, 'auth', '0001_initial', '2024-01-19 10:29:03.718806'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-01-19 10:29:03.769778'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-01-19 10:29:03.774494'),
(6, 'auth', '0004_alter_user_username_opts', '2024-01-19 10:29:03.778636'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-01-19 10:29:03.784635'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-01-19 10:29:03.785631'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-01-19 10:29:03.804359'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-01-19 10:29:03.808351'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-01-19 10:29:03.813351'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-01-19 10:29:03.828679'),
(13, 'auth', '0011_update_proxy_permissions', '2024-01-19 10:29:03.834234'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-01-19 10:29:03.838244'),
(15, 'accounts', '0001_initial', '2024-01-19 10:29:04.195655'),
(16, 'admin', '0001_initial', '2024-01-19 10:29:04.355982'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-01-19 10:29:04.364262'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-01-19 10:29:04.369389'),
(19, 'sessions', '0001_initial', '2024-01-19 10:29:04.424227'),
(20, 'testBootstrap', '0001_initial', '2024-01-19 11:38:56.780202'),
(21, 'testBootstrap', '0002_alter_cart_price', '2024-01-19 11:38:56.827205'),
(22, 'testBootstrap', '0003_category_country_alter_cart_path_img_cart_category', '2024-01-22 14:40:59.463690'),
(23, 'testBootstrap', '0004_alter_category_options_alter_country_options', '2024-01-22 14:40:59.465639'),
(24, 'testBootstrap', '0005_remove_cart_category_cart_category_tov', '2024-01-22 14:40:59.467639'),
(25, 'testBootstrap', '0006_alter_category_name_alter_country_name', '2024-01-22 14:40:59.468642'),
(26, 'testBootstrap', '0007_alter_category_name_alter_country_name', '2024-01-22 14:40:59.471638'),
(27, 'testBootstrap', '0008_cart_country', '2024-01-22 14:59:50.752055'),
(28, 'testBootstrap', '0009_carts_delete_cart', '2024-01-22 15:03:27.472159'),
(29, 'testBootstrap', '0010_statusorder_alter_carts_country_orders', '2024-01-29 20:57:30.096447');

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1pq1ohc60pfesqbv8of2nki5jw5ccdxs', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUrB5:SaZbSMQdC9DOUY4ADeKIld5cb1VMYRm8Q4PF2m4Umek', '2024-02-13 16:41:39.198921'),
('31yvk0i8y771jyk3kykic48f6o3s126t', '.eJxVjDsOwjAQBe_iGlmsNv5R0nMGy7te4wBypDipIu4OkVJA-2bmbSqmdalx7TLHMauLQqNOvyMlfkrbSX6kdp80T22ZR9K7og_a9W3K8roe7t9BTb1-ayaywJ6EBVGgiFCwJWRxyUIozg18hsKIAxtmH4QZPBEFbwgIi3p_AFB_OcU:1rUm5s:rKjW43kSB9AA3PxIquxZI8xSfI2PXcOPmj9FVhOcNOs', '2024-02-13 11:15:56.998133'),
('6s0i9d7pvf9htiwkjnw4wz5fc4z76d20', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUTm4:f55FJgeadgvn4VZenXnHIy7dJSvO5SZEVy61XALG69o', '2024-02-12 15:42:16.580345'),
('7ya2jrzee3srcckaza93x1t3m2lfmv41', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUU7t:rvqKQRUAsmQe0O-iqZWLX140mPw1PyG8r4lE8Pk0L9E', '2024-02-12 16:04:49.006497'),
('ehcnaatt3oy6cyto76oxbiylsvee5zs8', '.eJxVjEEOwiAQRe_C2hDAGQSX7j0DGZipVA1NSrsy3l2bdKHb_977L5VoXWpau8xpZHVWTh1-t0zlIW0DfKd2m3SZ2jKPWW-K3mnX14nledndv4NKvX5r70xEjyQhhsgIwRawhvPgyMV4DOgz4gDeAaApyIImA1vJJ_HBEqj3B7TgNvE:1rU4Ur:6mMk0A0CnP83fJYu56UdMCWYmJ8nfosSAgAc3sD7Kos', '2024-02-11 12:42:49.509001'),
('en9lyah7yee6d3i9bds11wcivr33z2v9', '.eJxVjEEOwiAQRe_C2hAGCgMu3XsGMjBgq4YmpV0Z765NutDtf-_9l4i0rWPcelnixOIsQJx-t0T5UdoO-E7tNss8t3WZktwVedAurzOX5-Vw_w5G6uO3RoZARvnCRDW7Yj1yVWABybPWBgfU2aaAjsGkIQGhrioF0sqVACzeH-hIN8k:1rV7fo:9QRzCLmEk4blhXBVJf9otEQgTr9RVtiUWmXusAHvcww', '2024-02-14 10:18:28.669066'),
('eq3yjksw0p2mb83m22wpc7yyz8yu6th2', '.eJxVjMsOgjAUBf-la9PYFgrXpXu-gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZiQmNOvyMhPzTvRO6Yb8Vyyesyk90Ve9BqhyL6vB7u38GEdfrWrG0XEzbkQCG2EBiEk0DviZ1QFJLEUX3Qtodz9ITUEWPoseHOQTDvDzmeOTo:1rUYvO:KxKexAn9lmcoeS6Orh8jqhaKFHhzzinXRaPca0Fu0Cs', '2024-02-12 21:12:14.297219'),
('ner7cbk0vrldy9yoe1uk0errefclbemp', '.eJxVjMsOgjAUBf-la9PYFgrXpXu-gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZiQmNOvyMhPzTvRO6Yb8Vyyesyk90Ve9BqhyL6vB7u38GEdfrWrG0XEzbkQCG2EBiEk0DviZ1QFJLEUX3Qtodz9ITUEWPoseHOQTDvDzmeOTo:1rUYoq:Bsj_4GItPrFSANeNdWqzVMLlc1ToiiZuqnuFR7jKny4', '2024-02-12 21:05:28.623019'),
('nua43wumacqxzlsz7neusw37u4ic6hr9', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUkfJ:qVlUzEXUV7RH_lAIUeXNlgIz_jK9uDHSEsHDDWRHB-w', '2024-02-13 09:44:25.074631'),
('o8jkn93qxxiokpzdu6o0q6ptfnu7innv', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUrJ0:2RVmB1gWwAqsqoaCjrPaB2kSmPAcl_30xw0n1trOuPI', '2024-02-13 16:49:50.362328'),
('ssft4wfp5sypkqoar7aqqwc8xf9ff3wh', '.eJxVjEEOwiAQRe_C2hBwoKUu3fcMZGYYpGpoUtqV8e7apAvd_vfef6mI21ri1mSJU1IXBaBOvyMhP6TuJN2x3mbNc12XifSu6IM2Pc5JntfD_Tso2Mq3ZmImnyUb46EfgjMd22CBIXMnHfbOZS9nHIIQZhcCOQCCAbyzWRjU-wMgczht:1rUk0l:e1g4KWSE-ZcE0DbzX9LBH9ujsy9eT2joRqZbCQr4F4w', '2024-02-13 09:02:31.232318'),
('tpggmi5fao49iwfew6lpgsb5mi6r0shf', '.eJxVjMsOgjAUBf-la9PYFgrXpXu-gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZiQmNOvyMhPzTvRO6Yb8Vyyesyk90Ve9BqhyL6vB7u38GEdfrWrG0XEzbkQCG2EBiEk0DviZ1QFJLEUX3Qtodz9ITUEWPoseHOQTDvDzmeOTo:1rUZip:qBGmd6zmt-EsgqrFvdKkOykcf1j2y_4a5qnS22FxoqQ', '2024-02-12 22:03:19.897150'),
('xlw2imqasd6xlf456pvtl9yar2ygq6nn', '.eJxVjEEOwiAQRe_C2hAGCgMu3XsGMjBgq4YmpV0Z765NutDtf-_9l4i0rWPcelnixOIsQJx-t0T5UdoO-E7tNss8t3WZktwVedAurzOX5-Vw_w5G6uO3RoZARvnCRDW7Yj1yVWABybPWBgfU2aaAjsGkIQGhrioF0sqVACzeH-hIN8k:1rQm8X:h0S5kOewSSdHJiHKxeYYTA0cIXBeYxMpm--3Yjp49zU', '2024-02-02 10:30:09.141053'),
('y7tfcwu5bc9j0fzott0tsoxro7ij1cky', '.eJxVjMsOgjAUBf-la9PYFgrXpXu-gdxXBTVtQmFl_HclYaHbMzPnZUbc1mncqi7jLOZiQmNOvyMhPzTvRO6Yb8Vyyesyk90Ve9BqhyL6vB7u38GEdfrWrG0XEzbkQCG2EBiEk0DviZ1QFJLEUX3Qtodz9ITUEWPoseHOQTDvDzmeOTo:1rUZHn:6HG5zCHGLWlwmV7X9xTOvSIHbxJXZSyZ2uVXZCQyCqU', '2024-02-12 21:35:23.642052');

CREATE TABLE `testBootstrap_carts` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `quality` int NOT NULL,
  `path_img` varchar(100) NOT NULL,
  `category_tov_id` bigint NOT NULL,
  `country_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testBootstrap_carts` (`id`, `name`, `price`, `quality`, `path_img`, `category_tov_id`, `country_id`) VALUES
(1, 'Розы', '3000.00', 10, 'uploads/krasivie.jpg', 1, 1),
(2, 'Большой букет роз', '10000.00', 2, 'uploads/30433b02b3ab99605eba40b663197d0e.jpeg', 1, 1),
(3, 'Садовые', '1000.00', 12, 'uploads/1663349005_27-mykaleidoscope-ru-p-malenkie-sadovie-tsveti-oboi-37.jpg', 1, 1),
(4, 'Искуственные', '1200.00', 15, 'uploads/2018Nature___Flowers_A_beautiful_bouquet_stands_on_an_iron_chair_130443_.jpg', 1, 1),
(5, 'Одна роза', '500.00', 5, 'uploads/1635278824_50-mykaleidoscope-ru-p-roza-na-dlinnoi-nozhke-tsveti-58.jpg', 1, 1),
(6, 'Ваза для цветов', '2000.00', 2, 'uploads/Vaza_iz_dereva_mango_kuvshin-1-1000x1000.jpg', 2, 1);

CREATE TABLE `testBootstrap_category` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testBootstrap_category` (`id`, `name`) VALUES
(1, 'Цветы'),
(2, 'Вазы для цветов');

CREATE TABLE `testBootstrap_country` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testBootstrap_country` (`id`, `name`) VALUES
(1, 'Россия');

CREATE TABLE `testBootstrap_orders` (
  `id` bigint NOT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `status_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testBootstrap_orders` (`id`, `quantity`, `order_id`, `user_id`, `status_id`) VALUES
(1, 1, 2, 34, 1);

CREATE TABLE `testBootstrap_statusorder` (
  `id` bigint NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `testBootstrap_statusorder` (`id`, `name`) VALUES
(1, 'оформление');


ALTER TABLE `accounts_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

ALTER TABLE `accounts_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_groups_customuser_id_group_id_c074bdcb_uniq` (`customuser_id`,`group_id`),
  ADD KEY `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` (`group_id`);

ALTER TABLE `accounts_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_customuser_user_customuser_id_permission_9632a709_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` (`permission_id`);

ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` (`user_id`);

ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

ALTER TABLE `testBootstrap_carts`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `testBootstrap_category`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `testBootstrap_country`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `testBootstrap_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testBootstrap_orders_order_id_b129f233_fk_testBootstrap_carts_id` (`order_id`),
  ADD KEY `testBootstrap_orders_user_id_e9aa4901_fk_accounts_customuser_id` (`user_id`),
  ADD KEY `testBootstrap_orders_status_id_a68084d7_fk_testBoots` (`status_id`);

ALTER TABLE `testBootstrap_statusorder`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `accounts_customuser`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

ALTER TABLE `accounts_customuser_groups`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

ALTER TABLE `accounts_customuser_user_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_group`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT;

ALTER TABLE `auth_permission`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

ALTER TABLE `django_admin_log`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `django_content_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

ALTER TABLE `django_migrations`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

ALTER TABLE `testBootstrap_carts`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

ALTER TABLE `testBootstrap_category`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

ALTER TABLE `testBootstrap_country`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `testBootstrap_orders`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `testBootstrap_statusorder`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;


ALTER TABLE `accounts_customuser_groups`
  ADD CONSTRAINT `accounts_customuser__customuser_id_bc55088e_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser_groups_group_id_86ba5f9e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

ALTER TABLE `accounts_customuser_user_permissions`
  ADD CONSTRAINT `accounts_customuser__customuser_id_0deaefae_fk_accounts_` FOREIGN KEY (`customuser_id`) REFERENCES `accounts_customuser` (`id`),
  ADD CONSTRAINT `accounts_customuser__permission_id_aea3d0e5_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);

ALTER TABLE `testBootstrap_orders`
  ADD CONSTRAINT `testBootstrap_orders_order_id_b129f233_fk_testBootstrap_carts_id` FOREIGN KEY (`order_id`) REFERENCES `testBootstrap_carts` (`id`),
  ADD CONSTRAINT `testBootstrap_orders_status_id_a68084d7_fk_testBoots` FOREIGN KEY (`status_id`) REFERENCES `testBootstrap_statusorder` (`id`),
  ADD CONSTRAINT `testBootstrap_orders_user_id_e9aa4901_fk_accounts_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
