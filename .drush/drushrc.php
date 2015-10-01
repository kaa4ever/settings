<?php
// Drush alias CA for clearing all cache.
$options['shell-aliases']['ca'] = 'cache-clear all';

// Drush alias dump to dump a database into the current dir.
$options['result-file'] = '@DATABASE_@DATE.sql';
$options['structure-tables']['common'] = array('cache', 'cache_*', 'history', 'search_*', 'sessions', 'watchdog');
$options['shell-aliases']['dump'] = 'sql-dump –skip-tables-key=common';