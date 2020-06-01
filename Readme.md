# Especificación API Servicio completo

_El proyecto implementa la API de pedidos creada por el grupo 3 junto a las especificaciones de los demás equipos_

_Realizado por Santiago Caro, Miguel Angel Perez & Ivan Pulido_

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


## Clonado del proyecto 📋
_En un GitBash se ejecutara el siguente comnando_

```git clone  https://github.com/miguelangel-perez-souza/Especificacion-API-Servicio-Completo.git```

## Con manejador de Contenedores:
Para correr la especificacion de la API del grupo 3 y su respectivo servidor de simulacion se deben ejecutar los siguientes comandos según el manejador de contenedores que se quiera correr. 
  * En nuestro caso la interfaz grafica de *Swagger UI* Se ejecutará en el puerto **8000**
  * El servidor de simulacion por *Stoplight Prism* se ejecutará en el puerto **4010**

Esto una vez ya se hay clonado el repositorio entrar desde una terminal al proyecto y ejecutar:

### Docker-Compse

```docker-compose up ```

Este comando tomará la configuración consiganada en el archivo [docker-compose.yml](docker-compose.yml) y ejecutara las imagenes correspondientes.

### Kubernetes

Una vez ya se tenga *Minikube* en ejecución se puede ejecutar el siguiente comando:

``` kubectl apply -f Grupo3.yml ```

Tomará la configuración del archivo [Grupo3.yml](Grupo3.yml) y pondrá en ejecución los contenedores correspondientes dentro del sistema.


## Arranque de la especificación completa (4 Especificaciones)🔧

_Se ejecutaran los siguentes comandos para el arranque_

1. Para ejecutar el servidor de **prism** para realizar el **mock**:

```docker run -p 4010:4010 -p 4011:4011 -p 4012:4012 -p 4013:4013 mangel10/api-grupo3-servicio-completo-mock```

2. Para ejecutar la interfaz gráfica de **Swagger/UI**:

```docker run -p 8080:8080 mangel10/api-grupo3-servicio-completo-ui```


### Ejecutando las pruebas ⚙️

Entrar a un navegador e introducir ``` http://127.0.0.1:8080 ``` y se pueden ver los metodos soportados con la interfaz gráfica de Swagger. Aparece por defecto la especificación de los pedidos.

Para realizar los cambios de especificación y su respectiva simulación se deben de hacer los siguientes pasos:

  **1**. En la **barra de navegación** del UI de Swagger introducir las rutas para cada especificación:\
    - **Pedidos**: /api/openapi.json (defecto)\
    - **Eventos**: /api/openapi-logs.json\
    - **Facturación**: /api/openapi-factura.json\
    - **Productos**: /api/openapi-productos.json\
  
  **2**. En la sección de **Server Variables** introducir los siguientes números dependiendo de la especificación.
  Ya que el puerto del Servidor mock va a depender de la especificacion que se quiera ejecutra se tiene que cambiar con respecto a los siguientes valores:\
    - **Pedidos**: 4010 (defecto)\
    - **Eventos**: 4011\
    - **Facturación**: 4012\
    - **Productos**: 4013
