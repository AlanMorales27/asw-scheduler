# ASW Blocks API Reference

This document provides the sanitized **cURL** commands for the endpoints used to authenticate, schedule, and manage classes on the **Blocks** platform.

## 01. Login

```bash
curl --url 'https://blocks.asw.edu.co/api/student/login' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer null' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw '{"user":{"email":"TU_EMAIL","password":"TU_PASSWORD","manetner_sesion":0}}'
```

## 02. Agendar Clase

```bash
curl --url 'https://blocks.asw.edu.co/api/student/agendar' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer <TOKEN>' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw '{"zona_horaria":"America/Bogota","tema_id":null,"hora":"19:30:00","dia":"2026-09-07","tipo_clase":"regular","tipo_solicitud":"normal"}'
```

## 03. Ver Disponibilidad

```bash
curl --url 'https://blocks.asw.edu.co/api/student/ver_disponibilidad' \
  -X 'POST' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer <TOKEN>' \
  -H 'content-length: 0' \
  -H 'content-type: application/json;charset=utf-8' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest'
```

## 04. Listar Clases

```bash
curl --url 'https://blocks.asw.edu.co/api/student/clases' \
  -X 'POST' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer <TOKEN>' \
  -H 'content-length: 0' \
  -H 'content-type: application/json;charset=utf-8' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest'
```

## 05. Cancelar Clase

```bash
curl --url 'https://blocks.asw.edu.co/api/student/cancelar' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer <TOKEN>' \
  -H 'content-type: application/json;charset=UTF-8' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest' \
  --data-raw '{"agendamiento_id":20529127}'
```

## 06. Certificar Nivel

```bash
curl --url 'https://blocks.asw.edu.co/api/student/certificar_nivel' \
  -H 'accept: application/json, text/plain, */*' \
  -H 'accept-language: en-US,en;q=0.9,es;q=0.8' \
  -H 'authorization: Bearer <TOKEN>' \
  -H 'origin: https://blocks.asw.edu.co' \
  -H 'priority: u=1, i' \
  -H 'referer: https://blocks.asw.edu.co/' \
  -H 'sec-ch-ua: "Chromium";v="152", "Not?A_Brand";v="24", "Google Chrome";v="152"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Windows"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-origin' \
  -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/152.0.0.0 Safari/537.36' \
  -H 'x-requested-with: XMLHttpRequest'
```
