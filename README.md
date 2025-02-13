# C++ Ontwikkelomgeving met Docker

Dit project bevat een eenvoudige C++ ontwikkelomgeving binnen een Docker-container.

## Hoe de container bouwen

Voer de volgende opdracht uit om de Docker-image te bouwen:
```sh
docker build -t hello_world .
```

## Hoe de container starten

Om de container uit te voeren en de "Hello world"-applicatie te starten:
```sh
docker run --rm hello_world
```

## Over de Dockerfile

De Dockerfile is opgezet met de volgende stappen:
1. Gebruikt een Ubuntu-basisimage.
2. Installeert de benodigde ontwikkeltools zoals CMake, G++, Make en build-essential.
3. Stelt de werkdirectory in op `/app`.
4. Kopieert de projectbestanden naar de container.
5. Maakt een `build` directory en bouwt de C++ applicatie met CMake.
6. Definieert een `CMD` zodat de applicatie automatisch start bij `docker run`.

## De projectstructuur

```
ONTWIKKELOMGEVING/
│── CMakeLists.txt
│── Dockerfile
│── main.cc
│── README.md
```

Dit zorgt ervoor dat de applicatie correct wordt gecompileerd en uitgevoerd binnen de container.

