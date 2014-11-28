CREATE DATABASE bitstorm;

CREATE TABLE peer (
  id int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  peer_id char(40) NOT NULL UNIQUE KEY,
  user_agent varchar(80),
  ip_address int(10) unsigned NOT NULL,
  `key` char(40) NOT NULL UNIQUE KEY,
  port smallint(5) unsigned NOT NULL
);

CREATE TABLE peer_torrent (
  id int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  peer_id int(10) unsigned NOT NULL,
  torrent_id int(10) unsigned NOT NULL,
  uploaded bigint(20) unsigned DEFAULT NULL,
  downloaded bigint(20) unsigned DEFAULT NULL,
  `left` bigint(20) unsigned DEFAULT NULL,
  state char(10) NOT NULL DEFAULT 'started',
  attempt INT NOT NULL DEFAULT 0,
  last_updated datetime NOT NULL,
  UNIQUE KEY `update_torrent` (peer_id,torrent_id,attempt)
);

CREATE TABLE `torrent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `hash` char(40) NOT NULL UNIQUE KEY COMMENT 'info_hash',
);
