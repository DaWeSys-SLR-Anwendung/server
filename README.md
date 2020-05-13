# server

1. Repo Clonen
2. in Ordner wechseln
3. Container bauen z.B.: docker build -t django_react .
4. Container starten z.B.: docker run -it -p 8010:8000 -w /usr/workspace -v $(pwd):/usr/workspace django_react:latest
5. neues consolen fenster öffnen
6. in frontend ordner navigieren: cd slr_app/frontend/
7. react dependencies installieren: npm install
8. react project: npm run build
9. im browser http://localhost:8010/
