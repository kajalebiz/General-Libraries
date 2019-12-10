-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 06, 2018 at 06:18 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eSparkbiz_eportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `adm_permissions`
--

CREATE TABLE `adm_permissions` (
  `id` double NOT NULL,
  `role_id` varchar(765) NOT NULL,
  `menu_id` varchar(765) NOT NULL,
  `view_p` tinyint(1) NOT NULL DEFAULT '0',
  `add_p` tinyint(1) NOT NULL DEFAULT '0',
  `edit_p` tinyint(1) NOT NULL DEFAULT '0',
  `delete_p` tinyint(1) NOT NULL DEFAULT '0',
  `csv_p` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `break_in_out`
--

CREATE TABLE `break_in_out` (
  `break_id` int(11) NOT NULL,
  `check_id` int(11) DEFAULT NULL,
  `breakin_time` datetime DEFAULT NULL,
  `breakout_time` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_on` datetime DEFAULT NULL,
  `flag` varchar(254) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `candidate_qualifications`
--

CREATE TABLE `candidate_qualifications` (
  `qualifications_id` int(10) UNSIGNED NOT NULL,
  `recruit_candidates_id` int(10) UNSIGNED NOT NULL,
  `educational_qualifications_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `education_university` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `passing_year` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `check_in_out`
--

CREATE TABLE `check_in_out` (
  `check_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `checkin_time` datetime DEFAULT NULL,
  `checkout_time` datetime DEFAULT NULL,
  `comments` varchar(255) DEFAULT NULL,
  `penalty_time` datetime DEFAULT NULL,
  `created_on` datetime DEFAULT NULL,
  `updated_on` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `flag` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `company_url` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `technology` varchar(100) NOT NULL,
  `message` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `common_methods`
--

CREATE TABLE `common_methods` (
  `id` int(11) NOT NULL,
  `url` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `idCountry` int(5) NOT NULL,
  `countryCode` char(2) NOT NULL DEFAULT '',
  `countryName` varchar(45) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE `currency` (
  `currency_id` int(11) NOT NULL,
  `currency_name` varchar(64) DEFAULT NULL,
  `currency_code` char(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `educational_qualifications`
--

CREATE TABLE `educational_qualifications` (
  `educational_qualifications_id` int(10) UNSIGNED NOT NULL,
  `educational_qualifications_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `final_leave`
--

CREATE TABLE `final_leave` (
  `id` int(11) NOT NULL,
  `leave_id` int(11) NOT NULL DEFAULT '0',
  `user_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `leave_type` varchar(100) NOT NULL,
  `leave_date` varchar(100) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `installer`
--

CREATE TABLE `installer` (
  `id` int(1) NOT NULL,
  `installer_flag` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leads_statuses`
--

CREATE TABLE `leads_statuses` (
  `leads_statuses_id` int(10) UNSIGNED NOT NULL,
  `leads_statuses_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_apply`
--

CREATE TABLE `leave_apply` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_date` date DEFAULT NULL,
  `description` text,
  `leave_status` int(11) DEFAULT NULL,
  `view_status` int(11) NOT NULL DEFAULT '2',
  `notify_me` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leave_master`
--

CREATE TABLE `leave_master` (
  `id` int(11) NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `leave_name` varchar(255) DEFAULT NULL,
  `leave_title` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `leave_profile`
--

CREATE TABLE `leave_profile` (
  `id` int(11) NOT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `leave_type` varchar(255) DEFAULT NULL,
  `leave_allow` varchar(255) DEFAULT NULL,
  `leave_duration` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_categories`
--

CREATE TABLE `marketing_categories` (
  `marketing_categories_id` int(10) UNSIGNED NOT NULL,
  `marketing_categories_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_countries`
--

CREATE TABLE `marketing_countries` (
  `marketing_countries_id` int(10) UNSIGNED NOT NULL,
  `marketing_countries_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_datas`
--

CREATE TABLE `marketing_datas` (
  `marketing_datas_id` int(10) UNSIGNED NOT NULL,
  `owner_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `marketing_states_id` int(10) UNSIGNED DEFAULT NULL,
  `marketing_categories_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `leads_statuses_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_datas_notes`
--

CREATE TABLE `marketing_datas_notes` (
  `marketing_datas_notes_id` int(10) UNSIGNED NOT NULL,
  `marketing_datas_id` int(11) NOT NULL,
  `message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `note_date` date NOT NULL,
  `note_time` time NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_permissions`
--

CREATE TABLE `marketing_permissions` (
  `id` double NOT NULL,
  `role_id` varchar(1) NOT NULL,
  `menu_id` varchar(2) NOT NULL,
  `view_m` tinyint(1) NOT NULL DEFAULT '0',
  `add_m` tinyint(1) NOT NULL DEFAULT '0',
  `edit_m` tinyint(1) NOT NULL DEFAULT '0',
  `delete_m` tinyint(1) NOT NULL DEFAULT '0',
  `csv_m` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `marketing_states`
--

CREATE TABLE `marketing_states` (
  `marketing_states_id` int(10) UNSIGNED NOT NULL,
  `marketing_states_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `marketing_countries_id` int(11) NOT NULL,
  `timezones_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` double NOT NULL,
  `role_id` varchar(765) NOT NULL,
  `menu_id` varchar(765) NOT NULL,
  `view_p` tinyint(1) NOT NULL DEFAULT '0',
  `add_p` tinyint(1) NOT NULL DEFAULT '0',
  `edit_p` tinyint(1) NOT NULL DEFAULT '0',
  `delete_p` tinyint(1) NOT NULL DEFAULT '0',
  `csv_p` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` double NOT NULL,
  `name` varchar(765) DEFAULT NULL,
  `status` int(10) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activity`
--

CREATE TABLE `tbl_activity` (
  `activity_id` int(255) NOT NULL,
  `employee_id` int(255) NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date` date DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application_list`
--

CREATE TABLE `tbl_application_list` (
  `application_list_id` int(5) NOT NULL,
  `employee_id` int(2) NOT NULL,
  `leave_category_id` int(2) NOT NULL,
  `reason` text NOT NULL,
  `leave_start_date` date NOT NULL,
  `leave_end_date` date NOT NULL,
  `application_status` int(2) NOT NULL DEFAULT '1' COMMENT '1=pending,2=accepted 3=rejected',
  `view_status` tinyint(1) NOT NULL DEFAULT '2',
  `leave_status` tinyint(1) NOT NULL DEFAULT '0',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1',
  `application_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `attendance_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `leave_category_id` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `attendance_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'status 1=present 0=absen and 3= onleave',
  `reason` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cadidate_schedule`
--

CREATE TABLE `tbl_cadidate_schedule` (
  `id` int(255) NOT NULL,
  `candidates_id` int(255) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_time` time NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_source`
--

CREATE TABLE `tbl_client_source` (
  `id` int(11) NOT NULL,
  `client_source` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_days`
--

CREATE TABLE `tbl_days` (
  `day_id` int(5) NOT NULL,
  `day` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(5) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designations`
--

CREATE TABLE `tbl_designations` (
  `designations_id` int(5) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designations` varchar(100) NOT NULL,
  `qualifications` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_document_activity`
--

CREATE TABLE `tbl_document_activity` (
  `document_id` int(255) NOT NULL,
  `activity_id` int(255) NOT NULL,
  `document` varchar(255) NOT NULL,
  `document_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `employee_id` int(5) NOT NULL,
  `employment_id` varchar(200) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `maratial_status` varchar(20) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `photo_a_path` varchar(150) NOT NULL,
  `present_address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `c_city` varchar(255) NOT NULL,
  `c_country_id` varchar(255) NOT NULL,
  `c_mobile` varchar(255) NOT NULL,
  `c_phone` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `country_id` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designations_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `probation_date` date NOT NULL,
  `senier_date` date NOT NULL,
  `tl_id` int(255) NOT NULL,
  `pm_id` int(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active, 2=blocked',
  `parent_id` int(255) NOT NULL,
  `responsible_log` tinyint(4) NOT NULL DEFAULT '0',
  `active_colab_id` int(11) DEFAULT NULL,
  `responsible_log_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_05072017`
--

CREATE TABLE `tbl_employee_05072017` (
  `employee_id` int(5) NOT NULL DEFAULT '0',
  `employment_id` varchar(200) NOT NULL,
  `device_id` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `maratial_status` varchar(20) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `passport_number` varchar(100) NOT NULL,
  `photo` varchar(150) NOT NULL,
  `photo_a_path` varchar(150) NOT NULL,
  `present_address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `c_address` varchar(255) NOT NULL,
  `c_city` varchar(255) NOT NULL,
  `c_country_id` varchar(255) NOT NULL,
  `c_mobile` varchar(255) NOT NULL,
  `c_phone` varchar(255) NOT NULL,
  `c_email` varchar(255) NOT NULL,
  `country_id` int(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `designations_id` int(11) NOT NULL,
  `joining_date` date NOT NULL,
  `probation_date` date NOT NULL,
  `senier_date` date NOT NULL,
  `tl_id` int(255) NOT NULL,
  `pm_id` int(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=active, 2=blocked',
  `parent_id` int(255) NOT NULL,
  `responsible_log` tinyint(4) NOT NULL DEFAULT '0',
  `active_colab_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_award`
--

CREATE TABLE `tbl_employee_award` (
  `employee_award_id` int(11) NOT NULL,
  `award_name` varchar(100) NOT NULL,
  `employee_id` int(2) NOT NULL,
  `gift_item` varchar(300) NOT NULL,
  `award_amount` int(5) NOT NULL,
  `award_date` varchar(10) NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=on 0=off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_bank`
--

CREATE TABLE `tbl_employee_bank` (
  `employee_bank_id` int(5) NOT NULL,
  `employee_id` int(2) NOT NULL,
  `bank_name` varchar(300) NOT NULL,
  `branch_name` varchar(300) NOT NULL,
  `account_name` varchar(300) NOT NULL,
  `account_number` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_document`
--

CREATE TABLE `tbl_employee_document` (
  `document_id` int(5) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `resume` varchar(300) DEFAULT NULL,
  `resume_path` varchar(300) DEFAULT NULL,
  `resume_filename` varchar(100) DEFAULT NULL,
  `offer_letter` varchar(300) DEFAULT NULL,
  `offer_letter_filename` varchar(200) DEFAULT NULL,
  `offer_letter_path` varchar(300) DEFAULT NULL,
  `joining_letter` varchar(300) DEFAULT NULL,
  `joining_letter_filename` varchar(200) DEFAULT NULL,
  `joining_letter_path` varchar(300) DEFAULT NULL,
  `contract_paper` varchar(300) DEFAULT NULL,
  `contract_paper_filename` varchar(200) DEFAULT NULL,
  `contract_paper_path` varchar(300) DEFAULT NULL,
  `id_proff` varchar(300) DEFAULT NULL,
  `id_proff_filename` varchar(200) DEFAULT NULL,
  `id_proff_path` varchar(300) DEFAULT NULL,
  `other_document` varchar(300) DEFAULT NULL,
  `other_document_filename` varchar(200) DEFAULT NULL,
  `other_document_path` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_emergency`
--

CREATE TABLE `tbl_employee_emergency` (
  `emergency_id` int(5) NOT NULL,
  `employee_id` int(5) NOT NULL,
  `e_name` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `e_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_login`
--

CREATE TABLE `tbl_employee_login` (
  `employee_login_id` int(5) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL DEFAULT 'fedf1a2060f53e24589b7566202ed886dd4c5f5b31e73797c9d2a6dfdc2561ca97b34408f1268997f35cad96adf215838ffe258a15144349181b9c07da239e32',
  `role_id` tinyint(1) NOT NULL DEFAULT '6' COMMENT '1=admin 2=marketer 3=employee 4=hr',
  `activate` tinyint(2) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_payroll`
--

CREATE TABLE `tbl_employee_payroll` (
  `payroll_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `house_rent_allowance` varchar(200) DEFAULT NULL,
  `medical_allowance` varchar(200) DEFAULT NULL,
  `special_allowance` varchar(200) DEFAULT NULL,
  `fuel_allowance` varchar(200) DEFAULT NULL,
  `phone_bill_allowance` varchar(200) DEFAULT NULL,
  `other_allowance` varchar(200) DEFAULT NULL,
  `tax_deduction` varchar(200) DEFAULT NULL,
  `provident_fund` varchar(200) DEFAULT NULL,
  `other_deduction` varchar(200) DEFAULT NULL,
  `employment_type` tinyint(1) NOT NULL COMMENT '1=provision, 2=permanent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_event`
--

CREATE TABLE `tbl_event` (
  `event_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `event_name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense`
--

CREATE TABLE `tbl_expense` (
  `expense_id` int(5) NOT NULL,
  `item_name` varchar(300) NOT NULL,
  `purchase_from` varchar(300) NOT NULL,
  `purchase_date` date NOT NULL,
  `amount` double NOT NULL,
  `description` text NOT NULL,
  `bill_copy` varchar(300) DEFAULT NULL,
  `bill_copy_filename` text,
  `bill_copy_path` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form`
--

CREATE TABLE `tbl_form` (
  `form_id` int(11) NOT NULL,
  `English` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_form_body`
--

CREATE TABLE `tbl_form_body` (
  `form_body_id` int(11) NOT NULL,
  `form_id` int(5) NOT NULL,
  `English` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gsettings`
--

CREATE TABLE `tbl_gsettings` (
  `id_gsettings` int(2) NOT NULL,
  `name` varchar(100) NOT NULL,
  `logo` varchar(150) DEFAULT NULL,
  `full_path` varchar(150) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `city` varchar(100) NOT NULL,
  `country_id` int(3) NOT NULL,
  `active_language` varchar(200) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `hotline` varchar(100) NOT NULL,
  `fax` varchar(100) NOT NULL,
  `website` varchar(100) NOT NULL,
  `currency` varchar(200) NOT NULL,
  `require_log` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_holiday`
--

CREATE TABLE `tbl_holiday` (
  `holiday_id` int(11) NOT NULL,
  `event_name` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `compansate_holiday` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `from` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `attach_file_path` text,
  `attach_filename` text,
  `message_time` datetime NOT NULL,
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=on 0=off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_increment`
--

CREATE TABLE `tbl_increment` (
  `increment_id` int(255) NOT NULL,
  `employee_id` int(255) NOT NULL,
  `ctc` varchar(255) NOT NULL,
  `increment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_leave_category`
--

CREATE TABLE `tbl_leave_category` (
  `leave_category_id` int(2) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_marketing_menu`
--

CREATE TABLE `tbl_marketing_menu` (
  `menu_id` int(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `parent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `menu_id` int(11) NOT NULL,
  `English` varchar(200) NOT NULL,
  `link` varchar(200) NOT NULL,
  `icon` varchar(100) NOT NULL,
  `parent` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL,
  `isadmin` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_notice`
--

CREATE TABLE `tbl_notice` (
  `notice_id` int(5) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text,
  `employee_id` int(2) NOT NULL,
  `created_date` varchar(50) NOT NULL,
  `flag` tinyint(1) NOT NULL COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=on 0=off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy`
--

CREATE TABLE `tbl_policy` (
  `policy_id` int(5) NOT NULL,
  `title` text NOT NULL,
  `short_description` text NOT NULL,
  `long_description` text,
  `employee_id` int(2) NOT NULL,
  `created_date` varchar(50) NOT NULL,
  `flag` tinyint(1) NOT NULL COMMENT '0 = unpublished, 1 = published',
  `view_status` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Read 2=Unread',
  `notify_me` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=on 0=off'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_policy_document`
--

CREATE TABLE `tbl_policy_document` (
  `document_id` int(5) NOT NULL,
  `policy_id` int(11) NOT NULL,
  `document` varchar(300) DEFAULT NULL,
  `document_path` varchar(300) DEFAULT NULL,
  `document_filename` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_recruit_candidates`
--

CREATE TABLE `tbl_recruit_candidates` (
  `recruit_candidates_id` int(10) UNSIGNED NOT NULL,
  `recruit_candidates_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_address` text COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_contact_no` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_apply_for` int(11) NOT NULL,
  `recruit_candidates_skills` text COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `current_company` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA',
  `current_ctc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA',
  `expected_ctc` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'NA',
  `recruit_candidates_resume` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `recruit_candidates_status` enum('Pending','Selected','Rejected') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Pending',
  `recruit_candidates_action` enum('Scheduled','Reschedule','Rejected','Selected') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Scheduled',
  `recruit_candidates_schedule_count` smallint(6) NOT NULL,
  `recruit_candidates_selected_date` datetime NOT NULL,
  `reject_date` date NOT NULL,
  `reject_category` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `reject_note` text COLLATE utf8_unicode_ci NOT NULL,
  `pending_note` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `schedule_from_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_to_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_time` time NOT NULL,
  `schedule_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_message` text COLLATE utf8_unicode_ci NOT NULL,
  `schedule_candidate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_applied_for` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_interview_venue` text COLLATE utf8_unicode_ci NOT NULL,
  `schedule_hr_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_hr_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_hr_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `schedule_company_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_from_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_to_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_date` datetime NOT NULL,
  `ofrltr_subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_message` text COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_joining_date` date NOT NULL,
  `ofrltr_joining_time` time NOT NULL,
  `ofrltr_ctc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_candidate_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_post` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_number` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_venue` text COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_hr_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_hr_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_hr_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ofrltr_company_website` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `schedule` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payment`
--

CREATE TABLE `tbl_salary_payment` (
  `salary_payment_id` int(5) NOT NULL,
  `employee_id` int(2) NOT NULL,
  `basic_salary` int(11) NOT NULL,
  `house_rent_allowance` varchar(200) NOT NULL,
  `medical_allowance` varchar(200) NOT NULL,
  `special_allowance` varchar(200) NOT NULL,
  `fuel_allowance` varchar(200) NOT NULL,
  `phone_bill_allowance` varchar(200) NOT NULL,
  `other_allowance` varchar(200) NOT NULL,
  `tax_deduction` varchar(200) NOT NULL,
  `provident_fund` varchar(200) NOT NULL,
  `other_deduction` varchar(200) NOT NULL,
  `payment_for_month` varchar(100) NOT NULL,
  `award_amount` int(5) NOT NULL,
  `fine_deduction` varchar(200) NOT NULL,
  `payment_type` varchar(20) NOT NULL,
  `comments` text,
  `payment_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_payslip`
--

CREATE TABLE `tbl_salary_payslip` (
  `payslip_id` int(5) NOT NULL,
  `payslip_number` varchar(100) DEFAULT NULL,
  `salary_payment_id` int(5) NOT NULL,
  `payslip_generate_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_send`
--

CREATE TABLE `tbl_send` (
  `send_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `to` varchar(100) NOT NULL,
  `subject` varchar(300) NOT NULL,
  `message_body` text NOT NULL,
  `attach_file` varchar(200) DEFAULT NULL,
  `attach_file_path` varchar(500) DEFAULT NULL,
  `attach_filename` varchar(200) DEFAULT NULL,
  `message_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_settings`
--

CREATE TABLE `tbl_settings` (
  `id` int(11) NOT NULL,
  `setting_key` varchar(255) NOT NULL,
  `setting_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(5) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `flag` tinyint(4) NOT NULL DEFAULT '0',
  `role_id` tinyint(1) NOT NULL COMMENT '1=admin 2=marketer 3=employee 4= HR'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_menu`
--

CREATE TABLE `tbl_user_menu` (
  `menu_id` int(11) NOT NULL,
  `label` varchar(100) DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_working_days`
--

CREATE TABLE `tbl_working_days` (
  `working_days_id` int(11) NOT NULL,
  `day_id` int(5) NOT NULL,
  `flag` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `temp_market_data`
--

CREATE TABLE `temp_market_data` (
  `marketing_data_id` int(255) NOT NULL,
  `owner_name` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `by_what` varchar(255) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `owner_phone_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `timezones_id` int(10) UNSIGNED NOT NULL,
  `timezones_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adm_permissions`
--
ALTER TABLE `adm_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `break_in_out`
--
ALTER TABLE `break_in_out`
  ADD PRIMARY KEY (`break_id`),
  ADD KEY `check_id` (`check_id`);

--
-- Indexes for table `candidate_qualifications`
--
ALTER TABLE `candidate_qualifications`
  ADD PRIMARY KEY (`qualifications_id`),
  ADD KEY `users_qualifications_user_id_foreign` (`recruit_candidates_id`);

--
-- Indexes for table `check_in_out`
--
ALTER TABLE `check_in_out`
  ADD PRIMARY KEY (`check_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common_methods`
--
ALTER TABLE `common_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`idCountry`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`currency_id`),
  ADD KEY `idx_currency_name` (`currency_name`);

--
-- Indexes for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  ADD PRIMARY KEY (`educational_qualifications_id`);

--
-- Indexes for table `final_leave`
--
ALTER TABLE `final_leave`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `installer`
--
ALTER TABLE `installer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads_statuses`
--
ALTER TABLE `leads_statuses`
  ADD PRIMARY KEY (`leads_statuses_id`);

--
-- Indexes for table `leave_apply`
--
ALTER TABLE `leave_apply`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_master`
--
ALTER TABLE `leave_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave_profile`
--
ALTER TABLE `leave_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_categories`
--
ALTER TABLE `marketing_categories`
  ADD PRIMARY KEY (`marketing_categories_id`);

--
-- Indexes for table `marketing_countries`
--
ALTER TABLE `marketing_countries`
  ADD PRIMARY KEY (`marketing_countries_id`);

--
-- Indexes for table `marketing_datas`
--
ALTER TABLE `marketing_datas`
  ADD PRIMARY KEY (`marketing_datas_id`),
  ADD KEY `marketing_datas_marketing_states_id_foreign` (`marketing_states_id`),
  ADD KEY `marketing_datas_marketing_categories_id_foreign` (`marketing_categories_id`),
  ADD KEY `marketing_datas_user_id_foreign` (`user_id`),
  ADD KEY `marketing_datas_leads_statuses_id_foreign` (`leads_statuses_id`);

--
-- Indexes for table `marketing_datas_notes`
--
ALTER TABLE `marketing_datas_notes`
  ADD PRIMARY KEY (`marketing_datas_notes_id`);

--
-- Indexes for table `marketing_permissions`
--
ALTER TABLE `marketing_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marketing_states`
--
ALTER TABLE `marketing_states`
  ADD PRIMARY KEY (`marketing_states_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  ADD PRIMARY KEY (`activity_id`);

--
-- Indexes for table `tbl_application_list`
--
ALTER TABLE `tbl_application_list`
  ADD PRIMARY KEY (`application_list_id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `tbl_cadidate_schedule`
--
ALTER TABLE `tbl_cadidate_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_source`
--
ALTER TABLE `tbl_client_source`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_days`
--
ALTER TABLE `tbl_days`
  ADD PRIMARY KEY (`day_id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  ADD PRIMARY KEY (`designations_id`);

--
-- Indexes for table `tbl_document_activity`
--
ALTER TABLE `tbl_document_activity`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`employee_id`),
  ADD UNIQUE KEY `device_id` (`device_id`);

--
-- Indexes for table `tbl_employee_award`
--
ALTER TABLE `tbl_employee_award`
  ADD PRIMARY KEY (`employee_award_id`);

--
-- Indexes for table `tbl_employee_bank`
--
ALTER TABLE `tbl_employee_bank`
  ADD PRIMARY KEY (`employee_bank_id`);

--
-- Indexes for table `tbl_employee_document`
--
ALTER TABLE `tbl_employee_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `tbl_employee_emergency`
--
ALTER TABLE `tbl_employee_emergency`
  ADD PRIMARY KEY (`emergency_id`);

--
-- Indexes for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  ADD PRIMARY KEY (`employee_login_id`);

--
-- Indexes for table `tbl_employee_payroll`
--
ALTER TABLE `tbl_employee_payroll`
  ADD PRIMARY KEY (`payroll_id`);

--
-- Indexes for table `tbl_event`
--
ALTER TABLE `tbl_event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  ADD PRIMARY KEY (`expense_id`);

--
-- Indexes for table `tbl_form`
--
ALTER TABLE `tbl_form`
  ADD PRIMARY KEY (`form_id`);

--
-- Indexes for table `tbl_form_body`
--
ALTER TABLE `tbl_form_body`
  ADD PRIMARY KEY (`form_body_id`);

--
-- Indexes for table `tbl_gsettings`
--
ALTER TABLE `tbl_gsettings`
  ADD PRIMARY KEY (`id_gsettings`);

--
-- Indexes for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  ADD PRIMARY KEY (`holiday_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_increment`
--
ALTER TABLE `tbl_increment`
  ADD PRIMARY KEY (`increment_id`);

--
-- Indexes for table `tbl_leave_category`
--
ALTER TABLE `tbl_leave_category`
  ADD PRIMARY KEY (`leave_category_id`);

--
-- Indexes for table `tbl_marketing_menu`
--
ALTER TABLE `tbl_marketing_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  ADD PRIMARY KEY (`policy_id`);

--
-- Indexes for table `tbl_policy_document`
--
ALTER TABLE `tbl_policy_document`
  ADD PRIMARY KEY (`document_id`);

--
-- Indexes for table `tbl_recruit_candidates`
--
ALTER TABLE `tbl_recruit_candidates`
  ADD PRIMARY KEY (`recruit_candidates_id`);

--
-- Indexes for table `tbl_salary_payment`
--
ALTER TABLE `tbl_salary_payment`
  ADD PRIMARY KEY (`salary_payment_id`);

--
-- Indexes for table `tbl_salary_payslip`
--
ALTER TABLE `tbl_salary_payslip`
  ADD PRIMARY KEY (`payslip_id`);

--
-- Indexes for table `tbl_send`
--
ALTER TABLE `tbl_send`
  ADD PRIMARY KEY (`send_id`);

--
-- Indexes for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `tbl_working_days`
--
ALTER TABLE `tbl_working_days`
  ADD PRIMARY KEY (`working_days_id`);

--
-- Indexes for table `temp_market_data`
--
ALTER TABLE `temp_market_data`
  ADD PRIMARY KEY (`marketing_data_id`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`timezones_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adm_permissions`
--
ALTER TABLE `adm_permissions`
  MODIFY `id` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `break_in_out`
--
ALTER TABLE `break_in_out`
  MODIFY `break_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `candidate_qualifications`
--
ALTER TABLE `candidate_qualifications`
  MODIFY `qualifications_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `check_in_out`
--
ALTER TABLE `check_in_out`
  MODIFY `check_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `common_methods`
--
ALTER TABLE `common_methods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `idCountry` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `currency_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `educational_qualifications`
--
ALTER TABLE `educational_qualifications`
  MODIFY `educational_qualifications_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `final_leave`
--
ALTER TABLE `final_leave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leads_statuses`
--
ALTER TABLE `leads_statuses`
  MODIFY `leads_statuses_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_apply`
--
ALTER TABLE `leave_apply`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_master`
--
ALTER TABLE `leave_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_profile`
--
ALTER TABLE `leave_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_categories`
--
ALTER TABLE `marketing_categories`
  MODIFY `marketing_categories_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_countries`
--
ALTER TABLE `marketing_countries`
  MODIFY `marketing_countries_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_datas`
--
ALTER TABLE `marketing_datas`
  MODIFY `marketing_datas_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_datas_notes`
--
ALTER TABLE `marketing_datas_notes`
  MODIFY `marketing_datas_notes_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_permissions`
--
ALTER TABLE `marketing_permissions`
  MODIFY `id` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `marketing_states`
--
ALTER TABLE `marketing_states`
  MODIFY `marketing_states_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` double NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_activity`
--
ALTER TABLE `tbl_activity`
  MODIFY `activity_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_application_list`
--
ALTER TABLE `tbl_application_list`
  MODIFY `application_list_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_cadidate_schedule`
--
ALTER TABLE `tbl_cadidate_schedule`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_source`
--
ALTER TABLE `tbl_client_source`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_days`
--
ALTER TABLE `tbl_days`
  MODIFY `day_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_designations`
--
ALTER TABLE `tbl_designations`
  MODIFY `designations_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_document_activity`
--
ALTER TABLE `tbl_document_activity`
  MODIFY `document_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `employee_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_award`
--
ALTER TABLE `tbl_employee_award`
  MODIFY `employee_award_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_bank`
--
ALTER TABLE `tbl_employee_bank`
  MODIFY `employee_bank_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_document`
--
ALTER TABLE `tbl_employee_document`
  MODIFY `document_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_emergency`
--
ALTER TABLE `tbl_employee_emergency`
  MODIFY `emergency_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_login`
--
ALTER TABLE `tbl_employee_login`
  MODIFY `employee_login_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_payroll`
--
ALTER TABLE `tbl_employee_payroll`
  MODIFY `payroll_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_event`
--
ALTER TABLE `tbl_event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_expense`
--
ALTER TABLE `tbl_expense`
  MODIFY `expense_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_form`
--
ALTER TABLE `tbl_form`
  MODIFY `form_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_form_body`
--
ALTER TABLE `tbl_form_body`
  MODIFY `form_body_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gsettings`
--
ALTER TABLE `tbl_gsettings`
  MODIFY `id_gsettings` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_holiday`
--
ALTER TABLE `tbl_holiday`
  MODIFY `holiday_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_increment`
--
ALTER TABLE `tbl_increment`
  MODIFY `increment_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_leave_category`
--
ALTER TABLE `tbl_leave_category`
  MODIFY `leave_category_id` int(2) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_marketing_menu`
--
ALTER TABLE `tbl_marketing_menu`
  MODIFY `menu_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_notice`
--
ALTER TABLE `tbl_notice`
  MODIFY `notice_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_policy`
--
ALTER TABLE `tbl_policy`
  MODIFY `policy_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_policy_document`
--
ALTER TABLE `tbl_policy_document`
  MODIFY `document_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_recruit_candidates`
--
ALTER TABLE `tbl_recruit_candidates`
  MODIFY `recruit_candidates_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payment`
--
ALTER TABLE `tbl_salary_payment`
  MODIFY `salary_payment_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_payslip`
--
ALTER TABLE `tbl_salary_payslip`
  MODIFY `payslip_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_send`
--
ALTER TABLE `tbl_send`
  MODIFY `send_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_settings`
--
ALTER TABLE `tbl_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user_menu`
--
ALTER TABLE `tbl_user_menu`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_working_days`
--
ALTER TABLE `tbl_working_days`
  MODIFY `working_days_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `temp_market_data`
--
ALTER TABLE `temp_market_data`
  MODIFY `marketing_data_id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `timezones_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
