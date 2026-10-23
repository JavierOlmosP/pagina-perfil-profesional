# Página Perfil Profesional — Javier Olmos

## Objetivo del proyecto
Desarrollar y publicar una página web de perfil profesional que presente información personal y académica, áreas de interés tecnológico y enlaces relacionados, incluyendo un formulario de contacto. El sitio se sirve mediante Nginx dentro de un contenedor Docker.

## Tecnologías utilizadas
- **HTML5:** estructura y contenido de la página.
- **CSS:** estilos, distribución, efectos visuales y diseño adaptable (si se han implementado reglas responsivas).
- **Nginx:** servidor web que entrega los archivos estáticos.
- **Docker:** empaquetado y ejecución del sitio en un contenedor.
- **Git y GitHub:** control de versiones y publicación del código fuente.
- **Docker Hub:** alojamiento de la imagen Docker.

## Estructura del proyecto

```text
Pagina_Perfil_Profesional/
├── Mockup.png
├── index.html
├── estilos.css
├── Dockerfile
├── README.md
└── imagenes/
    ├── Portada-jpg
    ├── fotoPerfil.jpg
    ├── DesarrolloSoftware.jpeg
    ├── ciberseguridad.png
    ├── inteligenciaArtificial.jpeg
    ├── desarrolloWeb.jpg
    ├── desarrolloVideojuegos.jpeg
    └── tecnologiasEmergentes.jpeg
```

## Construir la imagen Docker

Abre una terminal en la carpeta del proyecto y ejecuta:

```bash
docker build -t pagina-perfil-profesional .
```

## Ejecutar el contenedor

```bash
docker run -d --name pagina-perfil-profesional -p 8084:80 pagina-perfil-profesional
```

Luego visita [http://localhost:8084](http://localhost:8084).

Si el contenedor ya existe y necesitas volver a crearlo después de reconstruir la imagen:

```bash
docker rm -f pagina-perfil-profesional
docker build -t pagina-perfil-profesional .
docker run -d --name pagina-perfil-profesional -p 8083:80 pagina-perfil-profesional
```

## Publicar en Docker Hub

```bash
docker login
docker tag pagina-perfil-profesional javierolmos/pagina-perfil-profesional:1.0
docker push javierolmos/pagina-perfil-profesional:1.0
```

Para descargar y ejecutar la imagen publicada:

```bash
docker pull javierolmos/pagina-perfil-profesional:1.0
docker run -d --name pagina-perfil-profesional -p 8083:80 javierolmos/pagina-perfil-profesional:1.0
```

## Enlaces del proyecto

- **Repositorio GitHub:** `https://github.com/JavierOlmosP/pagina-perfil-profesional`
- **Imagen Docker Hub:** `https://hub.docker.com/repository/docker/javierolmos/pagina-perfil-profesional/general`

