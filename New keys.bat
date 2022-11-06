::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHreyHcjLQlHcAiYfG2xCPgQ8vr/086CsUYJW/IDfIbJ5raHLtwc+kDqZoUhmH9Cnas=
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFBdODAKJMia2HKcY1Mz+/OGTrV0hUOstRKHezfSlJfkApED8cPY=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
openssl.exe genrsa -out lzprivate.pem 2048
pri2pub.exe -i lzprivate.pem -o lzpublic.pem
move lzprivate.pem lz\private.pem
::copy lzpublic.pem lz\yourPublic.pem
move lzpublic.pem fi\public.pem

openssl.exe genrsa -out fiprivate.pem 2048
pri2pub.exe -i fiprivate.pem -o fipublic.pem
move fiprivate.pem fi\private.pem
::copy fipublic.pem fi\yourPublic.pem
move fipublic.pem lz\public.pem