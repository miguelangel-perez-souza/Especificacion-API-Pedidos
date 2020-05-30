# Especificación API Servicio completo

_El proyecto implementa la API de pedidos creada por el grupo 3 junto a las especificaciones de los demás equipos_

_Realizado por Santiago Caro, Miguel Angel Perez & Ivan Pulido_

## Comenzando 🚀

_Estas instrucciones te permitirán obtener una copia del proyecto en funcionamiento en tu máquina local para propósitos de desarrollo y pruebas._

Mira **Deployment** para conocer como desplegar el proyecto.


### Clonado del proyecto 📋
_En un GitBash se ejecutara el siguente comnando_

```git clone  https://github.com/miguelangel-perez-souza/Especificacion-API-Servicio-Completo.git```

### Arranque de la especificación🔧

_Se ejecutaran los siguentes comandos para el arranque_

1. Para ejecutar el servidor de **prism** para realizar el **mock**:

```docker run -p 4010:4010 -p 4011:4011 -p 4012:4012 -p 4013:4013 mangel10/api-grupo3-servicio-completo-mock```

**Ó**

en local:
(dentro de la carpeta api):

``` docker build -t api_mock_grupo3_servicio_completo . ```

y despues :

```docker run --p 4010:4010 -p 4011:4011 -p 4012:4012 -p 4013:4013 api_mock_grupo3_servicio_completo```

2. Para ejecutar la interfaz gráfica de **Swagger/UI**:

```docker run -p 8080:8080 mangel10/api-grupo3-servicio-completo-ui```

**Ó**

en local:
(fuera de la carpeta api):

``` docker build -t api_ui_grupo3_servicio_completo . ```

y despues :

```docker run -p 8080:8080 api_ui_grupo3_servicio_completo```

## Ejecutando las pruebas ⚙️

Entrar a ``` http://127.0.0.1 ``` y se pueden ver los metodos soportados con la interfaz gráfica de Swagger

Tambien se puede ingresar a ``` http://127.0.0.1:4010/pedidos ``` para probar el metodo get de pedidos directamente al servidor.
