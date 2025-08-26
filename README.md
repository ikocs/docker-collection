# Коллекция docker-файлов для сборки проектов различных SoC

В каждой папке находится docker-файл для создания контейнера. Список:
* [📂 buildroot-docker](./buildroot-docker) - котейнер для сборки buildroot с использованием external tree (можно применять в GiLab CI).
* [📂 buildroot-sdk-docker](./buildroot-sdk-docker) - котейнер для сборки проекта (в том числе для CI систем) c помощью заранее собранного buildroot sdk.
* [📂 petalinux-docker](./petalinux-docker) - котейнер для сборки проекта (в том числе для CI систем) c помощью заранее собранного petalinux sdk.
