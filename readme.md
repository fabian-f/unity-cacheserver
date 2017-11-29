Unity Cacheserver
==========================

Repo for [Docker Hub auto-build](https://hub.docker.com/r/garyritchie/unity-cacheserver/) with sane defaults. Fork and pass your own build-time arguments if your desired tag doesn't exist.

Basic Usage
--------------------------

Refer to the included `docker-compose.yml` or, if you prefer:

```bash
docker run -d -P garyritchie/unity-cacheserver:2017.2.0f3
```

Building the Docker Image
--------------------------

For the following download URL: 
`https://netstorage.unity3d.com/unity/46dda1414e51/CacheServer-2017.2.0f3.zip`

Our build command would be:

```bash
docker build -t unity-cacheserver:2017.2.0f3 --build-arg VERSION=2017.2.0f3 --build-arg UCPATH=https://netstorage.unity3d.com/unity/46dda1414e51/ .
```

PATH (URL) and VERSION args for your desired version can be researched here: https://unity3d.com/get-unity/download/archive