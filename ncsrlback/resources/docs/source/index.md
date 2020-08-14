---
title: API Reference

language_tabs:
- bash
- javascript

includes:

search: true

toc_footers:
- <a href='http://github.com/mpociot/documentarian'>Documentation Powered by Documentarian</a>
---
<!-- START_INFO -->
# Info

Welcome to the generated API reference.
[Get Postman Collection](http://localhost/docs/collection.json)

<!-- END_INFO -->

#Autenticacion

APIs para autenticarse en el sistema
<!-- START_d7b7952e7fdddc07c978c9bdaf757acf -->
## api/register
> Example request:

```bash
curl -X POST \
    "http://localhost/api/register" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/register"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/register`


<!-- END_d7b7952e7fdddc07c978c9bdaf757acf -->

<!-- START_c3fa189a6c95ca36ad6ac4791a873d23 -->
## Login

Login del sistema

> Example request:

```bash
curl -X POST \
    "http://localhost/api/login" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"email":"iure","password":"officiis"}'

```

```javascript
const url = new URL(
    "http://localhost/api/login"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "email": "iure",
    "password": "officiis"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "token": "string",
    "user": {
        "id_col": 0,
        "nom_col": "string",
        "ape_col": "string"
    }
}
```

### HTTP Request
`POST api/login`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `email` | string |  required  | Email del usuario
        `password` | string |  required  | Contraseña del usuario
    
<!-- END_c3fa189a6c95ca36ad6ac4791a873d23 -->

#Cargos

APIs para cargos
<!-- START_6a159f37e98d2787080a0361914c16b7 -->
## Retornar cargos

Retorna todos los cargos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/cargos/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/cargos/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_car": 0,
            "des_car": "string",
            "est_reg": "string"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/usuarios/cargos/get`


<!-- END_6a159f37e98d2787080a0361914c16b7 -->

<!-- START_5d6d88c0a27be855c36229dab0bc77f5 -->
## Retornar cargo

Retorna cargo por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/cargos/get/qui" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/cargos/get/qui"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_car": 0,
    "des_car": "string",
    "est_reg": "string"
}
```

### HTTP Request
`GET api/usuarios/cargos/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cargo.

<!-- END_5d6d88c0a27be855c36229dab0bc77f5 -->

<!-- START_8509d7915502b8778e2514fb95cab1d4 -->
## Crear cargo

Crea un cargo

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/cargos/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_car":"quaerat"}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/cargos/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_car": "quaerat"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cargo creado"
}
```

### HTTP Request
`POST api/usuarios/cargos/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_car` | string |  required  | Descripcion del cargo.
    
<!-- END_8509d7915502b8778e2514fb95cab1d4 -->

<!-- START_1bd0782303cf645e644ff3a72767c57f -->
## Modificar cargo

Modifica un cargo

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/cargos/update/aut" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_car":"fuga"}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/cargos/update/aut"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_car": "fuga"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cargo actualizado"
}
```

### HTTP Request
`POST api/usuarios/cargos/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cargo.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_car` | string |  required  | Descripcion del cargo.
    
<!-- END_1bd0782303cf645e644ff3a72767c57f -->

<!-- START_93bfece250d52bb56473605e79c8eb52 -->
## Eliminar cargo

Elimina un cargo

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/cargos/delete/ex" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/cargos/delete/ex"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cargo eliminado"
}
```

### HTTP Request
`GET api/usuarios/cargos/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cargo.

<!-- END_93bfece250d52bb56473605e79c8eb52 -->

#Clientes

APIs para clientes
<!-- START_469566eb9e6cfefd45346acdb027924b -->
## Retornar clientes

Retorna todos los clientes

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/clientes/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/clientes/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_cli": 0,
            "razsoc_cli": "string",
            "numdoc_cli": "string",
            "ema_cli": "string",
            "id_tipodoc": 0,
            "est_reg": "string",
            "tipo_documento": {
                "id_tipdoc": 0,
                "des_tipdoc": "string"
            },
            "contactos": [
                {
                    "id_cli_con": 0,
                    "nom_cli_con": "string",
                    "ema_cli_con": "string",
                    "tel_cli_con": 0,
                    "id_cli": 0,
                    "est_reg": "string"
                }
            ],
            "direcciones": [
                {
                    "id_cli_dir": 0,
                    "ciu_cli": "string",
                    "dir_cli": "string",
                    "tel_cli": 0,
                    "id_cli": 0,
                    "est_reg": "string"
                }
            ]
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/clientes/get`


<!-- END_469566eb9e6cfefd45346acdb027924b -->

<!-- START_5008ad09ec4e00207ded4538c54dd748 -->
## Retornar cliente

Retorna cliente por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/clientes/get/nostrum" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/clientes/get/nostrum"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_cli": 0,
    "razsoc_cli": "string",
    "numdoc_cli": "string",
    "ema_cli": "string",
    "id_tipodoc": 0,
    "est_reg": "string",
    "tipo_documento": {
        "id_tipdoc": 0,
        "des_tipdoc": "string"
    },
    "contactos": [
        {
            "id_cli_con": 0,
            "nom_cli_con": "string",
            "ema_cli_con": "string",
            "tel_cli_con": 0,
            "id_cli": 0,
            "est_reg": "string"
        }
    ],
    "direcciones": [
        {
            "id_cli_dir": 0,
            "ciu_cli": "string",
            "dir_cli": "string",
            "tel_cli": 0,
            "id_cli": 0,
            "est_reg": "string"
        }
    ]
}
```

### HTTP Request
`GET api/clientes/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cliente.

<!-- END_5008ad09ec4e00207ded4538c54dd748 -->

<!-- START_a0d7178e5a6e1a47b5726394c2332557 -->
## Crear cliente

Crea un cliente

> Example request:

```bash
curl -X POST \
    "http://localhost/api/clientes/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"razsoc_cli":"in","numdoc_cli":"reprehenderit","ema_cli":"a","id_tipodoc":4}'

```

```javascript
const url = new URL(
    "http://localhost/api/clientes/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "razsoc_cli": "in",
    "numdoc_cli": "reprehenderit",
    "ema_cli": "a",
    "id_tipodoc": 4
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cliente creado"
}
```

### HTTP Request
`POST api/clientes/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `razsoc_cli` | string |  required  | Razon social del cliente.
        `numdoc_cli` | string |  required  | Numero de documento del cliente.
        `ema_cli` | string |  optional  | Email del cliente.
        `id_tipodoc` | integer |  optional  | Tipo de documento del cliente.
    
<!-- END_a0d7178e5a6e1a47b5726394c2332557 -->

<!-- START_154df38aecb171bb5d97700f8f1a6d55 -->
## Modificar cliente

Modifica un cliente

> Example request:

```bash
curl -X POST \
    "http://localhost/api/clientes/update/nobis" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"razsoc_cli":"officiis","numdoc_cli":"et","ema_cli":"nisi","id_tipodoc":18}'

```

```javascript
const url = new URL(
    "http://localhost/api/clientes/update/nobis"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "razsoc_cli": "officiis",
    "numdoc_cli": "et",
    "ema_cli": "nisi",
    "id_tipodoc": 18
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cliente actualizado"
}
```

### HTTP Request
`POST api/clientes/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cliente.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `razsoc_cli` | string |  required  | Razon social del cliente.
        `numdoc_cli` | string |  required  | Numero de documento del cliente.
        `ema_cli` | string |  optional  | Email del cliente.
        `id_tipodoc` | integer |  optional  | Tipo de documento del cliente.
    
<!-- END_154df38aecb171bb5d97700f8f1a6d55 -->

<!-- START_bd1413105f139350c3c2fe553f75b8a6 -->
## Eliminar cliente

Elimina un cliente

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/clientes/delete/aspernatur" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/clientes/delete/aspernatur"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cliente eliminado"
}
```

### HTTP Request
`GET api/clientes/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cliente.

<!-- END_bd1413105f139350c3c2fe553f75b8a6 -->

<!-- START_936e0e1b667533ff25ada85e4aa31a56 -->
## Administrar contactos y direcciones

Crea, Actualiza y elimina, contactos y direcciones de un cliente

> Example request:

```bash
curl -X POST \
    "http://localhost/api/clientes/admconydir/esse" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"contactos":[],"direcciones":[]}'

```

```javascript
const url = new URL(
    "http://localhost/api/clientes/admconydir/esse"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "contactos": [],
    "direcciones": []
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "contactos y direcciones actualizados"
}
```

### HTTP Request
`POST api/clientes/admconydir/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del cliente.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `contactos` | array |  required  | Ejemplo: [{"id_cli_con": 0,"nom_cli_con":"string","ema_cli_con":"string","cel_cli_con":"string","ane_cli_con":"string","car_cli_con":"string","est_reg": "string"}]
        `direcciones` | array |  required  | Ejemplo: [{"id_cli_dir": 0,"ciu_cli":"string","dir_cli":"string","tel_cli":"string","est_reg": "string"}]
    
<!-- END_936e0e1b667533ff25ada85e4aa31a56 -->

<!-- START_c3a05690973b165b5b7d092ff97937cd -->
## api/clientes/createContacto
> Example request:

```bash
curl -X POST \
    "http://localhost/api/clientes/createContacto" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/clientes/createContacto"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/clientes/createContacto`


<!-- END_c3a05690973b165b5b7d092ff97937cd -->

<!-- START_0ea9e54cd52cc81af0634d2881a21051 -->
## api/clientes/createDireccion
> Example request:

```bash
curl -X POST \
    "http://localhost/api/clientes/createDireccion" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/clientes/createDireccion"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "POST",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```



### HTTP Request
`POST api/clientes/createDireccion`


<!-- END_0ea9e54cd52cc81af0634d2881a21051 -->

#CotizacionCliente

APIs para cotizaciones de clientes
<!-- START_5df881ff73d3ad0ba216495a06435f1b -->
## Retornar cotizaciones

Retorna todos las cotizaciones activas y anuladas

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/cotizacion-cliente/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/cotizacion-cliente/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "solcli_id": 0,
            "solcli_cod": "string",
            "solcli_fec": "date",
            "solcli_proy_nom": "string",
            "solcli_cli_nom": "string",
            "solcli_cli_dir": "string",
            "solcli_cli_con": "string",
            "est_reg": "string"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/cotizacion-cliente/get`


<!-- END_5df881ff73d3ad0ba216495a06435f1b -->

<!-- START_2a4d06ae000d56028419bba69e2fe409 -->
## Retornar cotizacion

Retorna cotizacion por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/cotizacion-cliente/get/dolor" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/cotizacion-cliente/get/dolor"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "cotizacion": {
        "solcli_id": 0,
        "solcli_cod": "string",
        "solcli_fec": "string",
        "id_proy": 0,
        "solcli_proy_nom": "string",
        "solcli_proy_cod": "string",
        "id_cli": 0,
        "solcli_cli_nom": "string",
        "solcli_cli_numdoc": "string",
        "solcli_cli_tipdoc": "algo",
        "solcli_cli_dir": "string",
        "solcli_cli_con": "string",
        "id_col": 0,
        "solcli_col_nom": "string",
        "est_reg": "string",
        "cotizacion_detalle": [
            {
                "solclidet_id": 0,
                "solcli_id": 0,
                "solclidet_prod_serv": 0,
                "solclidet_des": "string",
                "id_prod": 0,
                "solclidet_prod_can": 0,
                "solclidet_prod_codint": "string",
                "solclidet_prod_numpar": "string",
                "solclidet_prod_fabr": "string",
                "solclidet_prod_marc": "string",
                "solclidet_prod_unimed": "string",
                "solclidet_prod_stock": 0
            }
        ]
    },
    "logo": "string",
    "extension": "string"
}
```

### HTTP Request
`GET api/cotizacion-cliente/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la cotizacion.

<!-- END_2a4d06ae000d56028419bba69e2fe409 -->

<!-- START_aa93d737b9efeb95d7fa883948a13110 -->
## Crear Cotizacion Cliente

Crea una Cotizacion de cliente

> Example request:

```bash
curl -X POST \
    "http://localhost/api/cotizacion-cliente/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"id_cli":16,"solcli_cli_nom":"amet","solcli_cli_numdoc":"tempora","solcli_cli_tipdoc":"repudiandae","solcli_cli_dir":"sed","solcli_cli_con":"sunt","id_col":18,"solcli_col_nom":"rerum","cotizacion_detalle":[]}'

```

```javascript
const url = new URL(
    "http://localhost/api/cotizacion-cliente/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "id_cli": 16,
    "solcli_cli_nom": "amet",
    "solcli_cli_numdoc": "tempora",
    "solcli_cli_tipdoc": "repudiandae",
    "solcli_cli_dir": "sed",
    "solcli_cli_con": "sunt",
    "id_col": 18,
    "solcli_col_nom": "rerum",
    "cotizacion_detalle": []
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cotizacion creada"
}
```

### HTTP Request
`POST api/cotizacion-cliente/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `id_cli` | integer |  required  | Id del cliente.
        `solcli_cli_nom` | string |  optional  | Nombre del cliente.
        `solcli_cli_numdoc` | string |  optional  | Numero de documento del cliente.
        `solcli_cli_tipdoc` | string |  optional  | Tipo de documento del cliente.
        `solcli_cli_dir` | string |  optional  | Direccion del cliente.
        `solcli_cli_con` | string |  optional  | Contacto del cliente.
        `id_col` | integer |  optional  | Id del colaborador.
        `solcli_col_nom` | string |  optional  | Nombre del colaborador.
        `cotizacion_detalle` | array |  required  | Ejemplo: [{"solcli_id": 0,"solclidet_prod_serv": 1,"solclidet_des":"string","id_prod":0,"solclidet_prod_can":0,"solclidet_prod_codint":"string","solclidet_prod_numpar": "string","solclidet_prod_fabr": "string","solclidet_prod_marc": "string","solclidet_prod_unimed": "string","solclidet_prod_stock": 0}]
    
<!-- END_aa93d737b9efeb95d7fa883948a13110 -->

<!-- START_c49b49d21f55b151e904abe4ef1c7e5e -->
## Anular cotizacion

Anula una cotizacion

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/cotizacion-cliente/annul/blanditiis" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/cotizacion-cliente/annul/blanditiis"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "Cotizacion anulada"
}
```

### HTTP Request
`GET api/cotizacion-cliente/annul/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la cotizacion.

<!-- END_c49b49d21f55b151e904abe4ef1c7e5e -->

#Empresa

APIs para empresa
<!-- START_db51a856044c6ddba32b92c2dccd2dd1 -->
## Modificar Empresa

Modifica datos de la empresa (Usar Body-> form-data en Postman)

> Example request:

```bash
curl -X POST \
    "http://localhost/api/empresa/update" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"logo":"minima","nom_emp":"non","numdoc_emp":"veniam","dir_emp":"et","dis_emp":"autem","ciu_emp":"et","tel_emp":"qui","cel_emp":"harum","codciu_emp":"possimus","id_tipodoc":1}'

```

```javascript
const url = new URL(
    "http://localhost/api/empresa/update"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "logo": "minima",
    "nom_emp": "non",
    "numdoc_emp": "veniam",
    "dir_emp": "et",
    "dis_emp": "autem",
    "ciu_emp": "et",
    "tel_emp": "qui",
    "cel_emp": "harum",
    "codciu_emp": "possimus",
    "id_tipodoc": 1
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "Datos actualizados"
}
```

### HTTP Request
`POST api/empresa/update`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `logo` | blob |  optional  | Logotipo de la empresa usar form-data para subir.
        `nom_emp` | string |  optional  | Nombre de la Empresa.
        `numdoc_emp` | string |  optional  | Numero de Documento de la empresa.
        `dir_emp` | string |  optional  | Direccion de la empresa.
        `dis_emp` | string |  optional  | Distrito de la empresa.
        `ciu_emp` | string |  optional  | Ciudad de la empresa.
        `tel_emp` | string |  optional  | Telefono de la empresa.
        `cel_emp` | string |  optional  | Celular de la empresa.
        `codciu_emp` | string |  optional  | Codigo de ciudad de la empresa.
        `id_tipodoc` | integer |  optional  | Tipo de documento de la empresa.
    
<!-- END_db51a856044c6ddba32b92c2dccd2dd1 -->

<!-- START_2ab6aba2163afe2a159d9781adaade1d -->
## Retornar empresa

Retorna empresa

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/empresa/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/empresa/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "empresa": {
        "id_emp": 0,
        "nom_emp": "string",
        "numdoc_emp": "string",
        "dir_emp": "string",
        "dis_emp": "string",
        "ciu_emp": "string",
        "tel_emp": "string",
        "cel_emp": "string",
        "codciu_emp": "string",
        "img_emp": "string",
        "imgext_emp": "string",
        "id_tipdoc": 0,
        "tipo_documento": {
            "id_tipdoc": 0,
            "des_tipdoc": "string"
        }
    },
    "logo": "Archivo codificado en base 64"
}
```

### HTTP Request
`GET api/empresa/get`


<!-- END_2ab6aba2163afe2a159d9781adaade1d -->

#Fabricantes

APIs para fabricantes
<!-- START_ed1154e29d4306ade3e2407e81d331ad -->
## Retornar fabricantes

Retorna todos los fabricantes

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/fabricantes/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/fabricantes/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_fab": 0,
            "des_fab": "string",
            "est_reg": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/almacen/fabricantes/get`


<!-- END_ed1154e29d4306ade3e2407e81d331ad -->

<!-- START_8165b5852b1554588f015c10fedad905 -->
## Retornar fabricante

Retorna fabricante por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/fabricantes/get/voluptates" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/fabricantes/get/voluptates"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_fab": 0,
    "des_fab": "string",
    "est_reg": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/almacen/fabricantes/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del fabricante.

<!-- END_8165b5852b1554588f015c10fedad905 -->

<!-- START_1e959666509ff036e57740b703012195 -->
## Crear fabricante

Crea un fabricante

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/fabricantes/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_fab":"provident"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/fabricantes/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_fab": "provident"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "fabricante creado"
}
```

### HTTP Request
`POST api/almacen/fabricantes/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_fab` | string |  required  | Descripcion del fabricante.
    
<!-- END_1e959666509ff036e57740b703012195 -->

<!-- START_182689a1e28df85353bc86c1ed28d98e -->
## Modificar fabricante

Modifica un fabricante

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/fabricantes/update/soluta" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_fab":"labore"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/fabricantes/update/soluta"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_fab": "labore"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "fabricante actualizado"
}
```

### HTTP Request
`POST api/almacen/fabricantes/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del fabricante.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_fab` | string |  required  | Descripcion del fabricante.
    
<!-- END_182689a1e28df85353bc86c1ed28d98e -->

<!-- START_46ca20df31bce23f3c78e2aaec00303c -->
## Eliminar fabricante

Elimina un fabricante

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/fabricantes/delete/ipsam" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/fabricantes/delete/ipsam"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "fabricante eliminado"
}
```

### HTTP Request
`GET api/almacen/fabricantes/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del fabricante.

<!-- END_46ca20df31bce23f3c78e2aaec00303c -->

#Marcas

APIs para marcas
<!-- START_c2df0de9ffdc95845ab6f549a8829d8c -->
## Retornar marcas

Retorna todas las marcas

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/marcas/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/marcas/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_mar": 0,
            "des_mar": "string",
            "est_reg": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/almacen/marcas/get`


<!-- END_c2df0de9ffdc95845ab6f549a8829d8c -->

<!-- START_5aba8f9beeb54f9409ab52e1067229b7 -->
## Retornar marca

Retorna marca por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/marcas/get/sunt" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/marcas/get/sunt"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_mar": 0,
    "des_mar": "string",
    "est_reg": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/almacen/marcas/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la marca.

<!-- END_5aba8f9beeb54f9409ab52e1067229b7 -->

<!-- START_87a63502c5de6f9841d601dc5e99ea60 -->
## Crear marca

Crea una marca

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/marcas/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_mar":"iusto"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/marcas/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_mar": "iusto"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "marca creada"
}
```

### HTTP Request
`POST api/almacen/marcas/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_mar` | string |  required  | Descripcion de la marca.
    
<!-- END_87a63502c5de6f9841d601dc5e99ea60 -->

<!-- START_434e3f2f0b22dbe23ae222ba03c8bb10 -->
## Modificar marca

Modifica una marca

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/marcas/update/pariatur" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_mar":"recusandae"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/marcas/update/pariatur"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_mar": "recusandae"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "marca actualizada"
}
```

### HTTP Request
`POST api/almacen/marcas/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la marca.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_mar` | string |  required  | Descripcion de la marca.
    
<!-- END_434e3f2f0b22dbe23ae222ba03c8bb10 -->

<!-- START_ae05c126fe9cc1356bda3bc783bbe2a9 -->
## Eliminar marca

Elimina una marca

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/marcas/delete/eos" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/marcas/delete/eos"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "marca eliminada"
}
```

### HTTP Request
`GET api/almacen/marcas/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la marca.

<!-- END_ae05c126fe9cc1356bda3bc783bbe2a9 -->

#Modelos

APIs para modelos
<!-- START_580de7b4e645118fa0f7d867cdd8a286 -->
## Retornar modelos

Retorna todos los modelos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/modelos/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/modelos/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_mod": 0,
            "des_mod": "string",
            "est_reg": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/almacen/modelos/get`


<!-- END_580de7b4e645118fa0f7d867cdd8a286 -->

<!-- START_a07002ec47cab710b7535ba5bd0d41d1 -->
## Retornar modelo

Retorna modelo por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/modelos/get/nisi" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/modelos/get/nisi"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_mod": 0,
    "des_mod": "string",
    "est_reg": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/almacen/modelos/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del modelo.

<!-- END_a07002ec47cab710b7535ba5bd0d41d1 -->

<!-- START_9ae8a5047214787eeb41592ae141ab29 -->
## Crear modelo

Crea un modelo

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/modelos/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_mod":"a"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/modelos/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_mod": "a"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "modelo creado"
}
```

### HTTP Request
`POST api/almacen/modelos/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_mod` | string |  required  | Descripcion del modelo.
    
<!-- END_9ae8a5047214787eeb41592ae141ab29 -->

<!-- START_a8d0ba9de070da5f721f74abe7c5fe3d -->
## Modificar modelo

Modifica un modelo

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/modelos/update/repellendus" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"des_mod":"ducimus"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/modelos/update/repellendus"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "des_mod": "ducimus"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "modelo actualizado"
}
```

### HTTP Request
`POST api/almacen/modelos/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del modelo.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `des_mod` | string |  required  | Descripcion del modelo.
    
<!-- END_a8d0ba9de070da5f721f74abe7c5fe3d -->

<!-- START_8f6bed46b5e476ca653b6237386ecb63 -->
## Eliminar modelo

Elimina un modelo

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/modelos/delete/magni" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/modelos/delete/magni"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "modelo eliminado"
}
```

### HTTP Request
`GET api/almacen/modelos/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del modelo.

<!-- END_8f6bed46b5e476ca653b6237386ecb63 -->

#Productos

APIs para Productos
<!-- START_f64ee4f3c13aa091c2183bcdf42ae6e3 -->
## Retornar productos

Retorna todos los productos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/productos/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/productos/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prod": 0,
            "cod_prod": "string",
            "num_parte_prod": "string",
            "stk_prod": 0,
            "des_prod": "string",
            "pre_com_prod": 0,
            "mon_prod": 0,
            "id_unimed": 0,
            "id_mar": 0,
            "id_mod": 0,
            "id_fab": 0,
            "est_reg": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z",
            "unidad_medida": {
                "id_unimed": 0,
                "nom_unimed": "string"
            },
            "marca": {
                "id_mar": 0,
                "des_mar": "string"
            },
            "modelo": {
                "id_mod": 0,
                "des_mod": "string"
            },
            "fabricante": {
                "id_fab": 0,
                "des_fab": "string"
            }
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/almacen/productos/get`


<!-- END_f64ee4f3c13aa091c2183bcdf42ae6e3 -->

<!-- START_02751239cf9e43742135f451ba959154 -->
## Retornar producto

Retorna producto por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/productos/get/incidunt" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/productos/get/incidunt"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_prod": 0,
    "cod_prod": "string",
    "num_parte_prod": "string",
    "stk_prod": 0,
    "des_prod": "string",
    "pre_com_prod": 0,
    "mon_prod": 0,
    "id_unimed": 0,
    "id_mar": 0,
    "id_mod": 0,
    "id_fab": 0,
    "est_reg": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z",
    "unidad_medida": {
        "id_unimed": 0,
        "nom_unimed": "string"
    },
    "marca": {
        "id_mar": 0,
        "des_mar": "string"
    },
    "modelo": {
        "id_mod": 0,
        "des_mod": "string"
    },
    "fabricante": {
        "id_fab": 0,
        "des_fab": "string"
    }
}
```

### HTTP Request
`GET api/almacen/productos/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del producto.

<!-- END_02751239cf9e43742135f451ba959154 -->

<!-- START_58088cd6d4e7184322baad82507f4465 -->
## Crear producto

Crea un producto

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/productos/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"cod_prod":"alias","num_parte_prod":"voluptatem","stk_prod":6,"des_prod":"voluptate","pre_com_prod":19,"mon_prod":3,"id_unimed":11,"id_mar":9,"id_mod":19,"id_fab":17}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/productos/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "cod_prod": "alias",
    "num_parte_prod": "voluptatem",
    "stk_prod": 6,
    "des_prod": "voluptate",
    "pre_com_prod": 19,
    "mon_prod": 3,
    "id_unimed": 11,
    "id_mar": 9,
    "id_mod": 19,
    "id_fab": 17
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "cliente creado"
}
```

### HTTP Request
`POST api/almacen/productos/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `cod_prod` | string |  optional  | Codigo del producto.
        `num_parte_prod` | string |  optional  | Numero de parte del producto.
        `stk_prod` | integer |  optional  | Stock del producto.
        `des_prod` | string |  required  | Descripcion del producto
        `pre_com_prod` | integer |  optional  | Precio de compra del producto.
        `mon_prod` | integer |  optional  | Moneda del producto (1=sol, 2=dolar).
        `id_unimed` | integer |  optional  | Codigo de unidad de medida.
        `id_mar` | integer |  optional  | Codigo de marca.
        `id_mod` | integer |  optional  | Codigo de modelo.
        `id_fab` | integer |  optional  | Codigo de fabricante
    
<!-- END_58088cd6d4e7184322baad82507f4465 -->

<!-- START_0b7c984f2b1e370365ad7f5939e70fb5 -->
## Modificar producto

Modifica un producto

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/productos/update/magnam" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"cod_prod":"error","num_parte_prod":"neque","stk_prod":3,"des_prod":"odit","pre_com_prod":5,"mon_prod":12,"id_unimed":12,"id_mar":18,"id_mod":1,"id_fab":15}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/productos/update/magnam"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "cod_prod": "error",
    "num_parte_prod": "neque",
    "stk_prod": 3,
    "des_prod": "odit",
    "pre_com_prod": 5,
    "mon_prod": 12,
    "id_unimed": 12,
    "id_mar": 18,
    "id_mod": 1,
    "id_fab": 15
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "producto actualizado"
}
```

### HTTP Request
`POST api/almacen/productos/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del producto.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `cod_prod` | string |  optional  | Codigo del producto.
        `num_parte_prod` | string |  optional  | Numero de parte del producto.
        `stk_prod` | integer |  optional  | Stock del producto.
        `des_prod` | string |  required  | Descripcion del producto
        `pre_com_prod` | integer |  optional  | Precio de compra del producto.
        `mon_prod` | integer |  optional  | Moneda del producto (1=sol, 2=dolar).
        `id_unimed` | integer |  optional  | Codigo de unidad de medida.
        `id_mar` | integer |  optional  | Codigo de marca.
        `id_mod` | integer |  optional  | Codigo de modelo.
        `id_fab` | integer |  optional  | Codigo de fabricante
    
<!-- END_0b7c984f2b1e370365ad7f5939e70fb5 -->

<!-- START_7111f8ee9991ca0044f11045c4f92132 -->
## Eliminar producto

Elimina un producto

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/productos/delete/aliquid" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/productos/delete/aliquid"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "producto eliminado"
}
```

### HTTP Request
`GET api/almacen/productos/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del producto.

<!-- END_7111f8ee9991ca0044f11045c4f92132 -->

#Proveedores

APIs para proveedores
<!-- START_fe13c639e54fea7d6d5434c99c2e19d4 -->
## Retornar proveedores

Retorna todos los proveedores

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prov": 0,
            "razsoc_prov": "string",
            "ema_prov": "string",
            "num_doc_prov": "string",
            "id_tipodoc": 0,
            "est_reg": "string",
            "tipo_documento": {
                "id_tipdoc": 0,
                "des_tipdoc": "string"
            },
            "bancos": [
                {
                    "id_prov_ban": 0,
                    "tip_prov_ban": "string",
                    "cue_prov_ban": "string",
                    "ban_prov_ban": "string",
                    "id_prov": 0,
                    "com_prov_ban": "string",
                    "est_reg": "string"
                }
            ],
            "colaboradores": [
                {
                    "id_prov_col": 0,
                    "nom_prov_col": "string",
                    "ema_prov_col": "string",
                    "tel_prov_col": "string",
                    "id_prov": 0,
                    "est_reg": "string"
                }
            ],
            "direcciones": [
                {
                    "id_prov_dir": 0,
                    "ciu_prov": "string",
                    "dir_prov": "string",
                    "tel_prov": "string",
                    "id_prov": 0,
                    "est_reg": "string"
                }
            ]
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proveedores/get`


<!-- END_fe13c639e54fea7d6d5434c99c2e19d4 -->

<!-- START_2e3e23e27dc0c412312570deda01ac0d -->
## Retornar proveedor

Retorna proveedor por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores/get/qui" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/get/qui"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prov": 0,
            "razsoc_prov": "string",
            "ema_prov": "string",
            "num_doc_prov": "string",
            "id_tipodoc": 0,
            "est_reg": "string",
            "tipo_documento": {
                "id_tipdoc": 0,
                "des_tipdoc": "string"
            },
            "bancos": [
                {
                    "id_prov_ban": 0,
                    "tip_prov_ban": "string",
                    "cue_prov_ban": "string",
                    "ban_prov_ban": "string",
                    "id_prov": 0,
                    "com_prov_ban": "string",
                    "est_reg": "string"
                }
            ],
            "colaboradores": [
                {
                    "id_prov_col": 0,
                    "nom_prov_col": "string",
                    "ema_prov_col": "string",
                    "tel_prov_col": "string",
                    "id_prov": 0,
                    "est_reg": "string"
                }
            ],
            "direcciones": [
                {
                    "id_prov_dir": 0,
                    "ciu_prov": "string",
                    "dir_prov": "string",
                    "tel_prov": "string",
                    "id_prov": 0,
                    "est_reg": "string"
                }
            ]
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proveedores/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proveedor.

<!-- END_2e3e23e27dc0c412312570deda01ac0d -->

<!-- START_66db8d5120748b07c7cae153ffec2df9 -->
## Crear proveedor

Crea un proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"razsoc_prov":"et","ema_prov":"dolor","num_doc_prov":"ab","id_tipodoc":3}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "razsoc_prov": "et",
    "ema_prov": "dolor",
    "num_doc_prov": "ab",
    "id_tipodoc": 3
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proveedor creado"
}
```

### HTTP Request
`POST api/proveedores/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `razsoc_prov` | string |  required  | Razon social del proveedor.
        `ema_prov` | string |  optional  | email del proveeedor.
        `num_doc_prov` | char |  required  | Numero de documento del proveedor.
        `id_tipodoc` | integer |  optional  | Tipo de documento del proveedor.
    
<!-- END_66db8d5120748b07c7cae153ffec2df9 -->

<!-- START_220eeeda41fa3bfb0ce84362efed7339 -->
## Modificar proveedor

Modifica un proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores/update/fugiat" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"razsoc_prov":"soluta","ema_prov":"quibusdam","num_doc_prov":"nisi","id_tipodoc":20}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/update/fugiat"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "razsoc_prov": "soluta",
    "ema_prov": "quibusdam",
    "num_doc_prov": "nisi",
    "id_tipodoc": 20
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proveedor actualizado"
}
```

### HTTP Request
`POST api/proveedores/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proveedor.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `razsoc_prov` | string |  required  | Razon social del proveedor.
        `ema_prov` | string |  optional  | email del proveeedor.
        `num_doc_prov` | char |  required  | Numero de documento del proveedor.
        `id_tipodoc` | integer |  optional  | Tipo de documento del proveedor.     *
    
<!-- END_220eeeda41fa3bfb0ce84362efed7339 -->

<!-- START_5d82d3b8419166f2c2a885264350abbb -->
## Eliminar proveedor

Elimina un proveedor

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores/delete/esse" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/delete/esse"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proveedor eliminado"
}
```

### HTTP Request
`GET api/proveedores/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proveedor.

<!-- END_5d82d3b8419166f2c2a885264350abbb -->

<!-- START_1395a7bc1a9549961d50207b08f7caeb -->
## Administrar banco, colaborador y direcciones

Crea, Actualiza y elimina, banco, colaborador y direcciones de un proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores/admbancolydir/rerum" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"banco":[],"colaborador":[],"direcciones":[]}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores/admbancolydir/rerum"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "banco": [],
    "colaborador": [],
    "direcciones": []
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "banco, colaborador y direcciones actualizados"
}
```

### HTTP Request
`POST api/proveedores/admbancolydir/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proveedor.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `banco` | array |  required  | Ejemplo: [{"id_prov_ban": 0,"tip_prov_ban":"string","cue_prov_ban":"string","ban_prov_ban":"string","com_prov_ban":"string","est_reg": "string"}]
        `colaborador` | array |  required  | Ejemplo: [{"id_prov_col": 0,"nom_prov_col":"string","ema_prov_col":"string","tel_prov_col":"string","ane_prov_col":"string","car_prov_col":"string","est_reg": "string"}]
        `direcciones` | array |  required  | Ejemplo: [{"id_prov_dir": 0,"ciu_prov":"string","dir_prov":"string","tel_prov":"string","est_reg": "string"}]
    
<!-- END_1395a7bc1a9549961d50207b08f7caeb -->

#Proveeedor Banco

APIs para el Banco del proveedor
<!-- START_804de439b5dae68b95ee6a89846dcc39 -->
## Retornar banco proveedor

Retorna todos los bancos del proveedor

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-banco/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-banco/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prov_ban": 0,
            "tip_prov_ban": "string",
            "cue_prov_ban": "string",
            "ban_prov_ban": "string",
            "com_prov_ban": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proveedores-banco/get`


<!-- END_804de439b5dae68b95ee6a89846dcc39 -->

<!-- START_da8d5c06987f76ed0cbbeaf8ea3e89c9 -->
## Retornar banco proveedor

Retorna banco del proveedor por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-banco/get/vitae" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-banco/get/vitae"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_prov_ban": 0,
    "tip_prov_ban": "string",
    "cue_prov_ban": "string",
    "ban_prov_ban": "string",
    "com_prov_ban": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/proveedores-banco/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de banco proveedor.

<!-- END_da8d5c06987f76ed0cbbeaf8ea3e89c9 -->

<!-- START_1de2d7ddea2e00d9802c11f44282b0bb -->
## Crear banco proveedor

Crea un banco proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-banco/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"tip_prov_ban":"laboriosam","cue_prov_ban":"fugiat","ban_prov_ban":"maiores","id_prov":18,"com_prov_ban":"cum"}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-banco/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "tip_prov_ban": "laboriosam",
    "cue_prov_ban": "fugiat",
    "ban_prov_ban": "maiores",
    "id_prov": 18,
    "com_prov_ban": "cum"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "banco proveedor creado"
}
```

### HTTP Request
`POST api/proveedores-banco/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `tip_prov_ban` | string |  required  | Tipo de cuenta que dispone el proveedor.
        `cue_prov_ban` | string |  required  | Nro de cuenta del banco segun el tipo .
        `ban_prov_ban` | string |  required  | Nombre del banco a quien pertenece la cuenta.
        `id_prov` | integer |  required  | id del proveedor asociado.
        `com_prov_ban` | string |  required  | Comentarios que pueda tener esta cuenta.
    
<!-- END_1de2d7ddea2e00d9802c11f44282b0bb -->

<!-- START_f3d4625d59faead7eaddb8defb1f1eb7 -->
## Modificar banco proveedor

Modifica un banco del proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-banco/update/dolorem" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"tip_prov_ban":"aut","cue_prov_ban":"aut","ban_prov_ban":"rerum","id_prov":1,"com_prov_ban":"repellat"}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-banco/update/dolorem"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "tip_prov_ban": "aut",
    "cue_prov_ban": "aut",
    "ban_prov_ban": "rerum",
    "id_prov": 1,
    "com_prov_ban": "repellat"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "banco proveedor actualizado"
}
```

### HTTP Request
`POST api/proveedores-banco/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del banco proveedor.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `tip_prov_ban` | string |  required  | Tipo de cuenta que dispone el proveedor.
        `cue_prov_ban` | string |  required  | Nro de cuenta del banco segun el tipo .
        `ban_prov_ban` | string |  required  | Nombre del banco a quien pertenece la cuenta.
        `id_prov` | integer |  required  | id del proveedor asociado.
        `com_prov_ban` | string |  required  | Comentarios que pueda tener esta cuenta.
    
<!-- END_f3d4625d59faead7eaddb8defb1f1eb7 -->

<!-- START_50180ca8892b33d98257618e37c35422 -->
## Eliminar banco del proveedor

Elimina un banco del proveedor

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-banco/delete/exercitationem" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-banco/delete/exercitationem"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "banco proveedor eliminado"
}
```

### HTTP Request
`GET api/proveedores-banco/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del banco de proveedor.

<!-- END_50180ca8892b33d98257618e37c35422 -->

#Proveeedor Colaborador

APIs para el colaborador del proveedor
<!-- START_b48b98efbfb006c034f55ecd1655622b -->
## Retornar colaboradores proveedores

Retorna todos los colaboradores proveedores

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-colaborador/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-colaborador/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prov_col": 0,
            "nom_prov_col": "string",
            "ema_prov_col": "string",
            "tel_prov_col": "char",
            "ane_prov_col": "char",
            "car_prov_col": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proveedores-colaborador/get`


<!-- END_b48b98efbfb006c034f55ecd1655622b -->

<!-- START_32bcbc57494c0491d6748426fd1fa91e -->
## Retornar colaborador proveedor

Retorna colaborador proveedor por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-colaborador/get/eum" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-colaborador/get/eum"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_prov_Col": 0,
    "nom_prov_col": "string",
    "ema_prov_col": "string",
    "tel_prov_col": "char",
    "ane_prov_col": "char",
    "car_prov_col": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/proveedores-colaborador/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del colaborador proveedor.

<!-- END_32bcbc57494c0491d6748426fd1fa91e -->

<!-- START_aaaee19d4b986ebda9f33a4b700f1f00 -->
## Crear colaborador proveedor

Crea un colaborador proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-colaborador/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_prov":"ut","ema_prov":"expedita","tel_prov":"ut","ane_prov_col":"non","car_prov_col":"enim","id_prov":4}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-colaborador/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_prov": "ut",
    "ema_prov": "expedita",
    "tel_prov": "ut",
    "ane_prov_col": "non",
    "car_prov_col": "enim",
    "id_prov": 4
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "colaborador proveedor creado"
}
```

### HTTP Request
`POST api/proveedores-colaborador/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_prov` | string |  required  | nombre del colaborador del proveedor.
        `ema_prov` | string |  required  | email del colaborador proveedor.
        `tel_prov` | string |  optional  | telefono opcional del colaborador proveedor.
        `ane_prov_col` | char |  optional  | anexo del colaborador del proveedor.
        `car_prov_col` | string |  optional  | cargo del colaborador del proveedor.
        `id_prov` | integer |  required  | id del proveedor asociado.
    
<!-- END_aaaee19d4b986ebda9f33a4b700f1f00 -->

<!-- START_d369125c1aa116cb5a60db6df169d68d -->
## Modificar colaborador proveedor

Modifica un colaborador proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-colaborador/update/aut" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_prov":"et","ema_prov":"voluptatem","tel_prov":"dolor","ane_prov_col":"possimus","car_prov_col":"debitis","id_prov":5}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-colaborador/update/aut"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_prov": "et",
    "ema_prov": "voluptatem",
    "tel_prov": "dolor",
    "ane_prov_col": "possimus",
    "car_prov_col": "debitis",
    "id_prov": 5
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "colaborador proveedor actualizado"
}
```

### HTTP Request
`POST api/proveedores-colaborador/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del colaborador proveedor.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_prov` | string |  required  | nombre del colaborador del proveedor.
        `ema_prov` | string |  required  | email del colaborador proveedor.
        `tel_prov` | string |  optional  | telefono opcional del colaborador proveedor.
        `ane_prov_col` | char |  optional  | anexo del colaborador del proveedor.
        `car_prov_col` | string |  optional  | cargo del colaborador del proveedor.
        `id_prov` | integer |  required  | id del proveedor asociado.
    
<!-- END_d369125c1aa116cb5a60db6df169d68d -->

<!-- START_0cfc74ba23427f7b73c414a0df3b95c5 -->
## Eliminar colaborador proveedor

Elimina un colaborador proveedor

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-colaborador/delete/qui" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-colaborador/delete/qui"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "colaborador proveedor eliminado"
}
```

### HTTP Request
`GET api/proveedores-colaborador/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del colaborador proveedor.

<!-- END_0cfc74ba23427f7b73c414a0df3b95c5 -->

#Proveeedor Direccion

APIs para direccion del Proveedor
<!-- START_15e0ff732c710063b0dc8df09e1b1449 -->
## Retornar direcciones proveedores

Retorna todos las direcciones de proveedores

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-direccion/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-direccion/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_prov_dir": 0,
            "ciu_prov": "string",
            "dir_prov": "string",
            "tel_prov": "char",
            "id_prov": "@",
            "est_reg": "char",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proveedores-direccion/get`


<!-- END_15e0ff732c710063b0dc8df09e1b1449 -->

<!-- START_87ac2326fce62dd53d8c46bef6afa79e -->
## Retornar direccion proveedor

Retorna la direccion de proveedor por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-direccion/get/rerum" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-direccion/get/rerum"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_prov_dir": 0,
    "ciu_prov": "string",
    "dir_prov": "string",
    "tel_prov": "char",
    "id_prov": "@",
    "est_reg": "char",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z",
    "proveedor_identificador": {
        "id_prov": 0,
        "razsoc_prov": "string"
    }
}
```

### HTTP Request
`GET api/proveedores-direccion/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la direccion del proveedor.

<!-- END_87ac2326fce62dd53d8c46bef6afa79e -->

<!-- START_ba0340f18d742d4657665b13b963b428 -->
## Modificar direccion proveedor

Modifica una direccion de proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-direccion/update/autem" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"ciu_prov":"magnam","dir_prov":"est","tel_prov":"ipsam","id_prov":11}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-direccion/update/autem"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "ciu_prov": "magnam",
    "dir_prov": "est",
    "tel_prov": "ipsam",
    "id_prov": 11
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "direccion proveedor actualizado"
}
```

### HTTP Request
`POST api/proveedores-direccion/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la direccion proveedor.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `ciu_prov` | string |  required  | ciudad del proveedor.
        `dir_prov` | string |  required  | direccion proveedor.
        `tel_prov` | string |  optional  | telefono required del proveedor.
        `id_prov` | integer |  required  | id del proveedor asociado.
    
<!-- END_ba0340f18d742d4657665b13b963b428 -->

<!-- START_276d47de9dc8e51a7241d0b07607ad8d -->
## Crear proveedor

Crea una direccion de proveedor

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proveedores-direccion/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"ciu_prov":"omnis","dir_prov":"repellat","tel_prov":"quis","id_prov":19}'

```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-direccion/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "ciu_prov": "omnis",
    "dir_prov": "repellat",
    "tel_prov": "quis",
    "id_prov": 19
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "direccion del proveedor creado"
}
```

### HTTP Request
`POST api/proveedores-direccion/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `ciu_prov` | string |  required  | ciudad del proveedor.
        `dir_prov` | string |  required  | direccion proveedor.
        `tel_prov` | char |  optional  | telefono required del proveedor.
        `id_prov` | integer |  required  | id del proveedor asociado.
    
<!-- END_276d47de9dc8e51a7241d0b07607ad8d -->

<!-- START_f3918fa27ae8af8ba6e606a22b8e8647 -->
## Eliminar direccion proveedor

Elimina un direccion proveedor

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proveedores-direccion/delete/distinctio" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proveedores-direccion/delete/distinctio"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "direccion proveedor eliminado"
}
```

### HTTP Request
`GET api/proveedores-direccion/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la direccion del proveedor.

<!-- END_f3918fa27ae8af8ba6e606a22b8e8647 -->

#Proyecto

APIs para proyecto
<!-- START_00c284ab55ec1fe6a94bd21321498aed -->
## Retornar proyectos

Retorna todos los proyectos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proyecto/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_proy": 0,
            "nom_proy": "string",
            "ser_proy": "NTWC-P-",
            "num_proy": "000X",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proyecto/get`


<!-- END_00c284ab55ec1fe6a94bd21321498aed -->

<!-- START_f6cf98b68d92280c35f29c33b68e3099 -->
## Retornar proyectos solo terminados

Retorna todos los proyectos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proyecto/getTerminados" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/getTerminados"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_proy": 0,
            "nom_proy": "string",
            "ser_proy": "NTWC-P-",
            "num_proy": "000X",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proyecto/getTerminados`


<!-- END_f6cf98b68d92280c35f29c33b68e3099 -->

<!-- START_735f2f44a3d1663f5ad59d2f055bce9b -->
## Retornar proyectos solo en proceso

Retorna todos los proyectos

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proyecto/getProceso" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/getProceso"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_proy": 0,
            "nom_proy": "string",
            "ser_proy": "NTWC-P-",
            "num_proy": "000X",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/proyecto/getProceso`


<!-- END_735f2f44a3d1663f5ad59d2f055bce9b -->

<!-- START_2b7bb4e079c717330c0d69f13269020f -->
## Retornar proyecto

Retorna proyecto  por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proyecto/get/at" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/get/at"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_proy": 0,
    "nom_proy": "string",
    "ser_proy": "NTWC-P-",
    "num_proy": "char",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/proyecto/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proyecto .

<!-- END_2b7bb4e079c717330c0d69f13269020f -->

<!-- START_9262b403430c7522a12949e559fd8622 -->
## Crear proyecto

Crea un proyecto

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proyecto/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_proy":"maxime","id_cli":"voluptatem"}'

```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_proy": "maxime",
    "id_cli": "voluptatem"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proyecto creado"
}
```

### HTTP Request
`POST api/proyecto/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_proy` | string |  required  | nombre del proyecto.
        `id_cli` | del |  optional  | cliente.
    
<!-- END_9262b403430c7522a12949e559fd8622 -->

<!-- START_305244eced08de9883257580ec5a1bf4 -->
## Modificar proyecto

Modifica un proyecto

> Example request:

```bash
curl -X POST \
    "http://localhost/api/proyecto/update/dicta" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_proy":"eum","est_reg":"tempore","id_cli":"culpa"}'

```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/update/dicta"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_proy": "eum",
    "est_reg": "tempore",
    "id_cli": "culpa"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proyecto  actualizado"
}
```

### HTTP Request
`POST api/proyecto/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proyecto .
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_proy` | string |  required  | nombre del proyecto.
        `est_reg` | char |  optional  | Estado de registro para cambiar .
        `id_cli` | char |  optional  | Estado de registro para cambiar .
    
<!-- END_305244eced08de9883257580ec5a1bf4 -->

<!-- START_f8b71c84a9677888ea6d4e626f995af3 -->
## Eliminar proyecto

Elimina un proyecto

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/proyecto/delete/ut" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/proyecto/delete/ut"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "proyecto  eliminado"
}
```

### HTTP Request
`GET api/proyecto/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del proyecto .

<!-- END_f8b71c84a9677888ea6d4e626f995af3 -->

#Registro de Cambios

APIs para Registro de cambios
<!-- START_8098da551e46346182bb2d2cb55b6886 -->
## Retornar Registros de Cambio

Retorna todos los registros de cambio

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/logs/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/logs/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
null
```

### HTTP Request
`GET api/logs/get`


<!-- END_8098da551e46346182bb2d2cb55b6886 -->

#Tipo de Documento

APIs para tipos de documento
<!-- START_6e2ed9234917d79887308ec01d705076 -->
## Retornar tipos de documento

Retorna todos los tipos de documento

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/tiposdoc/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/tiposdoc/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_tipdoc": 0,
            "cod_tipdoc": "string",
            "des_tipdoc": "string",
            "est_reg": "string"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/usuarios/tiposdoc/get`


<!-- END_6e2ed9234917d79887308ec01d705076 -->

<!-- START_7acd094ca28545da2e3fb235a1683bc5 -->
## Retornar tipo de documento

Retorna tipo de documento por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/tiposdoc/get/voluptas" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/tiposdoc/get/voluptas"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_tipdoc": 0,
    "cod_tipdoc": "string",
    "des_tipdoc": "string",
    "est_reg": "string"
}
```

### HTTP Request
`GET api/usuarios/tiposdoc/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del tipo de documento.

<!-- END_7acd094ca28545da2e3fb235a1683bc5 -->

<!-- START_438e338c1db045e173ad1141746066f9 -->
## Crear tipo de documento

Crea un tipo de documento

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/tiposdoc/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"cod_tipdoc":"nam","des_tipdoc":"voluptatibus"}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/tiposdoc/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "cod_tipdoc": "nam",
    "des_tipdoc": "voluptatibus"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "tipo de documento creado"
}
```

### HTTP Request
`POST api/usuarios/tiposdoc/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `cod_tipdoc` | string |  required  | Codigo del tipo de documento.
        `des_tipdoc` | string |  required  | Descripcion del tipo de documento.
    
<!-- END_438e338c1db045e173ad1141746066f9 -->

<!-- START_90e006fa44f4d1fde8bdaee13a4b198a -->
## Modificar tipo de documento

Modifica un tipo de documento

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/tiposdoc/update/eius" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"cod_tipdoc":"accusantium","des_tipdoc":"et"}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/tiposdoc/update/eius"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "cod_tipdoc": "accusantium",
    "des_tipdoc": "et"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "tipo de documento actualizado"
}
```

### HTTP Request
`POST api/usuarios/tiposdoc/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del tipo de documento.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `cod_tipdoc` | string |  required  | Codigo del tipo de documento.
        `des_tipdoc` | string |  required  | Descripcion del tipo de documento.
    
<!-- END_90e006fa44f4d1fde8bdaee13a4b198a -->

<!-- START_5fbb4f0e8844146c78715d42d3e19d27 -->
## Eliminar tipo de documento

Elimina un tipo de documento

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/tiposdoc/delete/et" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/tiposdoc/delete/et"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "tipo de documento eliminado"
}
```

### HTTP Request
`GET api/usuarios/tiposdoc/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del tipo de documento.

<!-- END_5fbb4f0e8844146c78715d42d3e19d27 -->

#Unidades de Medida

APIs para unidades de medida
<!-- START_a45c2f2096d97df80747fec5594bfdc0 -->
## Retornar unidades de medida

Retorna todas las unidades de medida

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/unidadesmedida/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/unidadesmedida/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_unimed": 0,
            "nom_unimed": "string",
            "des_unimed": "string",
            "est_reg": "string",
            "created_at": "2020-06-14T06:07:02.419Z",
            "updated_at": "2020-06-14T06:07:02.419Z"
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/almacen/unidadesmedida/get`


<!-- END_a45c2f2096d97df80747fec5594bfdc0 -->

<!-- START_42048eb4be2330c0b04bee79e749dd89 -->
## Retornar unidad de medida

Retorna unidad de medida por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/unidadesmedida/get/veniam" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/unidadesmedida/get/veniam"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_unimed": 0,
    "nom_unimed": "string",
    "des_unimed": "string",
    "est_reg": "string",
    "created_at": "2020-06-14T06:07:02.419Z",
    "updated_at": "2020-06-14T06:07:02.419Z"
}
```

### HTTP Request
`GET api/almacen/unidadesmedida/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la unidad de medida.

<!-- END_42048eb4be2330c0b04bee79e749dd89 -->

<!-- START_d0d6daad18c017bc16bc9ff0f039b43b -->
## Crear unidad de medida

Crea una unidad de medida

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/unidadesmedida/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_unimed":"incidunt","des_mar":"est"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/unidadesmedida/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_unimed": "incidunt",
    "des_mar": "est"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "unidad de medida creada"
}
```

### HTTP Request
`POST api/almacen/unidadesmedida/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_unimed` | string |  required  | Nombre de la unidad de medida.
        `des_mar` | string |  optional  | Descripcion de la unidad de medida.
    
<!-- END_d0d6daad18c017bc16bc9ff0f039b43b -->

<!-- START_0c3b2a0402520912d9705a912f01427e -->
## Modificar unidad de medida

Modifica una unidad de medida

> Example request:

```bash
curl -X POST \
    "http://localhost/api/almacen/unidadesmedida/update/in" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_unimed":"iure","des_mar":"rerum"}'

```

```javascript
const url = new URL(
    "http://localhost/api/almacen/unidadesmedida/update/in"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_unimed": "iure",
    "des_mar": "rerum"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "unidad de medida actualizada"
}
```

### HTTP Request
`POST api/almacen/unidadesmedida/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la unidad de medida.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_unimed` | string |  required  | Nombre de la unidad de medida.
        `des_mar` | string |  optional  | Descripcion de la unidad de medida.
    
<!-- END_0c3b2a0402520912d9705a912f01427e -->

<!-- START_98375b40e3b8a4fe3068c1e4b856b6bb -->
## Eliminar unidad de medida

Elimina una unidad de medida

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/almacen/unidadesmedida/delete/eos" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/almacen/unidadesmedida/delete/eos"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "unidad de medida eliminada"
}
```

### HTTP Request
`GET api/almacen/unidadesmedida/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID de la unidad de medida.

<!-- END_98375b40e3b8a4fe3068c1e4b856b6bb -->

#Usuarios

APIs para usuarios
<!-- START_c833fd1165a6e10c027fa9c0d22a0cd8 -->
## Retornar usuarios

Retorna todos los usuarios

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/get" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/get"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "data": [
        {
            "id_col": 0,
            "nom_col": "string",
            "ape_col": "string",
            "email": "string",
            "num_doc_col": "string",
            "id_tipdoc": 0,
            "cod_col": "string",
            "cel_col": "string",
            "id_car": 0,
            "est_reg": "string",
            "tipo_documento": {
                "id_tipdoc": 0,
                "des_tipdoc": "string"
            },
            "cargo": {
                "id_car": 0,
                "des_car": "string"
            }
        }
    ],
    "size": 0
}
```

### HTTP Request
`GET api/usuarios/get`


<!-- END_c833fd1165a6e10c027fa9c0d22a0cd8 -->

<!-- START_cda86a80e8f24c1ae3988d85afbd11a5 -->
## Retornar usuario

Retorna usuario por Id

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/get/nesciunt" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/get/nesciunt"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "id_col": 0,
    "nom_col": "string",
    "ape_col": "string",
    "email": "string",
    "num_doc_col": "string",
    "cod_col": "string",
    "cel_col": "string",
    "id_tipdoc": 0,
    "id_car": 0,
    "est_reg": "string",
    "tipo_documento": {
        "id_tipdoc": 0,
        "des_tipdoc": "string"
    },
    "cargo": {
        "id_car": 0,
        "des_car": "string"
    }
}
```

### HTTP Request
`GET api/usuarios/get/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del usuario.

<!-- END_cda86a80e8f24c1ae3988d85afbd11a5 -->

<!-- START_59c971d0776052043fa5d10649291b4e -->
## Crear usuario

Crea un usuario

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/create" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_col":"et","ape_col":"quis","email":"iure","password":"fugit","num_doc_col":"vel","cod_col":"modi","cel_col":"consequatur","id_tipdoc":17,"id_car":12}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/create"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_col": "et",
    "ape_col": "quis",
    "email": "iure",
    "password": "fugit",
    "num_doc_col": "vel",
    "cod_col": "modi",
    "cel_col": "consequatur",
    "id_tipdoc": 17,
    "id_car": 12
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "usuario creado"
}
```

### HTTP Request
`POST api/usuarios/create`

#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_col` | string |  required  | Nombre del usuario
        `ape_col` | string |  required  | Apellido del usuario.
        `email` | string |  required  | Email del usuario.
        `password` | string |  optional  | Contraseña del usuario.
        `num_doc_col` | string |  required  | Numero de documento del usuario.
        `cod_col` | string |  required  | Codigo interno del usuario.
        `cel_col` | string |  optional  | Celular del usuario.
        `id_tipdoc` | integer |  optional  | codigo de Tipo de documento.
        `id_car` | integer |  optional  | codigo de Cargo.
    
<!-- END_59c971d0776052043fa5d10649291b4e -->

<!-- START_0895921cb7cebd6c32b286aaf9650920 -->
## Modificar usuario

Modifica un usuario

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/update/repudiandae" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"nom_col":"sint","ape_col":"natus","email":"aut","num_doc_col":"voluptas","cod_col":"voluptatum","cel_col":"necessitatibus","id_tipdoc":5,"id_car":2}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/update/repudiandae"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "nom_col": "sint",
    "ape_col": "natus",
    "email": "aut",
    "num_doc_col": "voluptas",
    "cod_col": "voluptatum",
    "cel_col": "necessitatibus",
    "id_tipdoc": 5,
    "id_car": 2
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "usuario actualizado"
}
```

### HTTP Request
`POST api/usuarios/update/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del usuario.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `nom_col` | string |  required  | Nombre del usuario
        `ape_col` | string |  required  | Apellido del usuario.
        `email` | string |  required  | Email del usuario.
        `num_doc_col` | string |  required  | Numero de documento del usuario.
        `cod_col` | string |  required  | Codigo interno del usuario.
        `cel_col` | string |  optional  | Celular del usuario.
        `id_tipdoc` | integer |  optional  | codigo de Tipo de documento.
        `id_car` | integer |  optional  | codigo de Cargo.
    
<!-- END_0895921cb7cebd6c32b286aaf9650920 -->

<!-- START_324b540109078071900da77f2e1d7db6 -->
## Eliminar usuario

Elimina un usuario

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/usuarios/delete/quaerat" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/delete/quaerat"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "usuario eliminado"
}
```

### HTTP Request
`GET api/usuarios/delete/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del usuario.

<!-- END_324b540109078071900da77f2e1d7db6 -->

<!-- START_db4094c137e82a41fa012566ad016c41 -->
## Modificar Contraseña

Modifica la contraseña persona

> Example request:

```bash
curl -X POST \
    "http://localhost/api/usuarios/update/password/qui" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json" \
    -d '{"email":"aut","old_password":"velit","new_password":"doloremque"}'

```

```javascript
const url = new URL(
    "http://localhost/api/usuarios/update/password/qui"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

let body = {
    "email": "aut",
    "old_password": "velit",
    "new_password": "doloremque"
}

fetch(url, {
    method: "POST",
    headers: headers,
    body: body
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
{
    "resp": "Contraseña actualizada o credenciales no validas",
    "code": "200 o 101"
}
```

### HTTP Request
`POST api/usuarios/update/password/{id}`

#### URL Parameters

Parameter | Status | Description
--------- | ------- | ------- | -------
    `id` |  required  | El ID del usuario.
#### Body Parameters
Parameter | Type | Status | Description
--------- | ------- | ------- | ------- | -----------
    `email` | string |  required  | Enail del usuario
        `old_password` | string |  required  | Contraseña antigua.
        `new_password` | string |  required  | Contraseña nueva.
    
<!-- END_db4094c137e82a41fa012566ad016c41 -->

#general


<!-- START_f7b7ea397f8939c8bb93e6cab64603ce -->
## Display Swagger API page.

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/documentation" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/documentation"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
null
```

### HTTP Request
`GET api/documentation`


<!-- END_f7b7ea397f8939c8bb93e6cab64603ce -->

<!-- START_1ead214f30a5e235e7140eb2aaa29eee -->
## Dump api-docs content endpoint. Supports dumping a json, or yaml file.

> Example request:

```bash
curl -X GET \
    -G "http://localhost/docs/" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/docs/"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (404):

```json
{
    "message": "Unable to generate documentation file to: \"C:\\Users\\SH4-L\\Documents\\workspace\\PIS\\proyecto\\ncsrlback\\storage\\api-docs\/api-docs.json\". Please make sure directory is writable. Error: Required @OA\\Info() not found"
}
```

### HTTP Request
`GET docs/{jsonFile?}`

`POST docs/{jsonFile?}`

`PUT docs/{jsonFile?}`

`PATCH docs/{jsonFile?}`

`DELETE docs/{jsonFile?}`

`OPTIONS docs/{jsonFile?}`


<!-- END_1ead214f30a5e235e7140eb2aaa29eee -->

<!-- START_1a23c1337818a4de9e417863aebaca33 -->
## docs/asset/{asset}
> Example request:

```bash
curl -X GET \
    -G "http://localhost/docs/asset/1" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/docs/asset/1"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (404):

```json
{
    "message": "(1) - this L5 Swagger asset is not allowed"
}
```

### HTTP Request
`GET docs/asset/{asset}`


<!-- END_1a23c1337818a4de9e417863aebaca33 -->

<!-- START_a2c4ea37605c6d2e3c93b7269030af0a -->
## Display Oauth2 callback pages.

> Example request:

```bash
curl -X GET \
    -G "http://localhost/api/oauth2-callback" \
    -H "Content-Type: application/json" \
    -H "Accept: application/json"
```

```javascript
const url = new URL(
    "http://localhost/api/oauth2-callback"
);

let headers = {
    "Content-Type": "application/json",
    "Accept": "application/json",
};

fetch(url, {
    method: "GET",
    headers: headers,
})
    .then(response => response.json())
    .then(json => console.log(json));
```


> Example response (200):

```json
null
```

### HTTP Request
`GET api/oauth2-callback`


<!-- END_a2c4ea37605c6d2e3c93b7269030af0a -->


