/*-------------------------------------------------------------------------
 *
 *                foreign-data wrapper  cassandra
 *
 * Copyright (c) 2013, PostgreSQL Global Development Group
 *
 * This software is released under the PostgreSQL Licence
 *
 * Author:  Andrew Dunstan <andrew@dunslane.net>
 *
 * IDENTIFICATION
 *                cassandra_fdw/=sql/cassandra_fdw.sql
 *
 *-------------------------------------------------------------------------
 */

CREATE FUNCTION cassandra_fdw_handler()
RETURNS fdw_handler
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FUNCTION cassandra_fdw_validator(text[], oid)
RETURNS void
AS 'MODULE_PATHNAME'
LANGUAGE C STRICT;

CREATE FOREIGN DATA WRAPPER cassandra_fdw
  HANDLER cassandra_fdw_handler
  VALIDATOR cassandra_fdw_validator;
