# Сборка образа
```powershell
docker build -t petalinux2020.1 . 
```

# Запуск контейнера
```powershell
docker run -it --rm petalinux2020.1
```

# Присвоение тега
```powershell
docker tag petalinux2020.1 registry.filial.local:5000/software-group/prm-2-4/xsdk_workspace:v0.1
```

# Загрузка в реестр
```powershell
docker push registry.filial.local:5000/software-group/prm-2-4/xsdk_workspace:v0.1
```