#!/bin/bash

echo "[+] Starting SSH..."
service ssh start

echo "[+] Starting Nginx..."
nginx

echo "[+] Starting Tor..."
tor