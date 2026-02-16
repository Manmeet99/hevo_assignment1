# Hevo Assignment 1 (CXE)

## Overview
This project implements a CDC-based pipeline using Hevo to replicate data from PostgreSQL to Snowflake and apply transformations.

## Tech Stack
- PostgreSQL (Docker)
- Hevo Data
- Snowflake
- DBeaver

## Setup

### PostgreSQL
- Ran Postgres in Docker with wal_level=logical
- Enabled logical replication
- Created replication user
- Created publication and slot

### Hevo Pipeline
- Source: PostgreSQL (CDC)
- Destination: Snowflake
- Mode: Log-based replication

### Snowflake
- Database: HEVO_DB
- Schema: Auto-created by Hevo

## CDC Validation
Inserted test records in PostgreSQL and verified replication in Snowflake within ~30 seconds.

## Transformations

### Username Derivation
Extracted username from email using SPLIT_PART.

### Order Events
Converted order status to event_type using CASE logic.

## Assumptions
- Removed UNIQUE constraint on feedback.order_id due to duplicate values in CSV.
- Allowed one-to-many feedback relationship.

## Issues & Workarounds
- DBeaver TimeZone Issue 
- Enabled logical replication via Docker startup flags.
- Unable to connect Partner Connect via Snowflake UI / Connection made via Private Key
- Recreated container with persistent volume.
- Fixed schema mismatch in Snowflake.

## Validation
Validation queries available in /validation folder.





