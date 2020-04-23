# Simple LDAP server simulating AD for integration testing

This is a simple LDAP server that tries to simulate an AD using
Apache Directory Server.

## Docker

1. Run image `make start`
2. Clean image `make clean`

## Change data
1. Change users.ldif
2. Build image `make build`
