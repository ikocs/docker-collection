# Сборка образа
```powershell
docker build -t br-sdk . 
```

# Запуск контейнера
```powershell
docker run -it --rm br-sdk
```

# Присвоение тега
```powershell
docker tag br-sdk registry.filial.local:5000/software-group/solovey/soloveyapplication:v0.1
```

# Загрузка в реестр
```powershell
docker push registry.filial.local:5000/software-group/solovey/soloveyapplication:v0.1
```