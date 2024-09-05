
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Donna Pizza</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap"
              rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Montagu+Slab:opsz,wght@16..144,100..700&display=swap"
              rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body {
                width: 100%;
            }

            /* Fondo de inicio y medidas */
            #container-principal {
                background-image: url("img/fondo-principal.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }

            /* Navbar */
            .navbar {
                background: linear-gradient(to bottom, rgba(0, 0, 0, 0.39) 68%, rgba(102, 102, 102, 0) 100%);
            }

            .navbar-nav .nav-item .nav-link {
                color: white;
                padding: 5px 20px !important;
                font-family: "Montserrat";
                font-weight: 200;
            }

            .active {
                color: white !important;
                font-weight: 600 !important;
            }

            /* Apartado de Platos */
            #container-info {
                background-image: url("img/fondo-secundario.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                width: 100%;
            }

            .contenedor-titulo-platos {
                color: white;
                font-family: "Montagu Slab";
                font-size: 3rem;
                font-weight: 900;
                text-shadow: 4px 4px 2px rgba(0, 0, 0, 0.5);
            }

            #plato {
                border-radius: 25px !important;
                background-color: rgb(0, 164, 77) !important;
                box-shadow: 6px 6px 4px rgba(0, 0, 0, 0.5) !important;
            }

            .card-img-top {
                max-height: 12.5rem !important;
                border-radius: 25px 25px 0 0 !important;
            }

            #nombre-plato {
                color: white;
                font-family: "Montagu Slab";
                font-size: 1.25rem;
                font-weight: 900;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }

            #ingredientes-plato {
                color: rgb(240, 240, 240);
                font-family: "Montserrat";
                font-size: 0.75rem;
                font-style: italic;
                font-weight: 200;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }

            #precio-plato {
                color: rgb(255, 215, 0);
                font-family: "Montserrat";
                font-size: 0.625rem;
                font-weight: 700;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.25);
            }

            /* Contactanos */
            #container-contacto {
                background-image: url("img/fondo-contacto.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                padding: 8.625rem;
                width: 100%;
            }

            #form-contacto {
                background-color: rgb(10, 10, 10, 0.8);
                border-radius: 25px;
            }

            #titulo-contacto {
                color: white;
                font-family: "Montserrat";
                font-size: 2rem;
                font-weight: 900;
            }

            #subtitulo-contacto {
                color: white;
                font-family: "Montserrat";
                font-size: 1rem;
                font-weight: 100;
            }

            #input-contacto input {
                background-color: rgb(255, 255, 255, 0.8);
                color: rgb(0, 0, 0, 0.8);
                font-family: "Montserrat";
                font-size: 1.125rem;
                font-weight: 400;
                border-radius: 0.375rem;
            }

            /* Botones */
            .btn-success {
                background-color: rgb(0, 164, 77) !important;
                color: white !important;
                padding: 0.938rem 1.25rem !important;
                border: none !important;
                border-radius: 0.375rem !important;
                font-family: "Montserrat" !important;
                font-weight: 850 !important;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
            }

            .btn-success:hover {
                background-color: rgb(22, 75, 34) !important;
            }

            .btn-danger {
                background-color: rgb(240, 26, 36) !important;
                color: white !important;
                border: none !important;
                border-radius: 0.375rem !important;
                padding: 0.938rem 1.25rem !important;
                font-family: "Montserrat" !important;
                font-size: 18px !important;
                font-weight: 850 !important;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
            }

            .btn-danger:hover {
                background-color: rgb(184, 23, 31) !important;
            }

            .btn-compra {
                background-color: rgb(240, 26, 36) !important;
                color: white !important;
                font-family: "Montserrat" !important;
                font-size: 0.625rem !important;
                font-weight: 850 !important;
                text-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
                box-shadow: 0px 4px 4px rgba(0, 0, 0, 0.4);
            }

            .btn-compra:hover {
                background-color: rgb(184, 23, 31) !important;
            }
        </style>
    </head>

    <body>
        <div class="container-fluid d-flex" id="container-principal">
            <nav class="navbar fixed-top navbar-expand-md" style="height: 6.25rem;">
                <div class="container-fluid d-flex">
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon border-light"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-center align-items-center" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" aria-current="page" href="index.html">Inicio</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Carta</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Membresia</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Locales</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#">Iniciar Sesión</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <div class="container-fluid d-flex justify-content-center align-items-center flex-column"
                 style="padding: 12.05rem 0;">
                <img class="img-fluid" src="img/logo.png" alt="logo-principal">
                <a class="btn btn-success mt-2" href="#" role="button">PIDE AHORA</a>
            </div>
        </div>
        <div class="container-fluid d-flex flex-column align-items-center py-5" id="container-info">
            <div class="contenedor-titulo-platos mt-4">
                <p class="text-center">Disfruta Nuestros Platos</p>
            </div>
            <div class="container-fluid d-flex justify-content-center">
                <div class="row g-2">
                    <div class="col-12 col-md-6 col-xl-4 mb-4 d-flex justify-content-center">
                        <div class="card border border-0 bg-success mx-3 my-0 "
                             style="max-width: 21.875rem; height: 23.125rem;" id="plato">
                            <img src="img/pizza-pepperoni.jpg" class="card-img-top img-fluid" alt="pizza-pepperoni">
                            <div class="card-body d-flex justify-content-center align-items-center flex-column m-0 p-0">
                                <h5 class="card-title text-center m-0 p-0" id="nombre-plato">Pizza Americana</h5>
                                <p class="card-text text-center mb-1 mx-1 p-0" id="ingredientes-plato">Queso mozzarella,
                                    jamón ingles, aceituna, pimiento
                                    y salsa pizzera</p>
                                <p class="card-text my-2 p-0" id="precio-plato">29 Familiar 15 Media</p>
                                <a class="btn btn-compra border border-0 px-2 py-1" href="#" role="button">Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-6 col-xl-4 mb-4 d-flex justify-content-center">
                        <div class="card border border-0 bg-success mx-3 my-0"
                             style="max-width: 21.875rem; height: 23.125rem;" id="plato">
                            <img src="img/pizza-pepperoni.jpg" class="card-img-top img-fluid" alt="pizza-pepperoni">
                            <div class="card-body d-flex justify-content-center align-items-center flex-column m-0 p-0">
                                <h5 class="card-title text-center m-0 p-0" id="nombre-plato">Pizza Pepperoni</h5>
                                <p class="card-text text-center mb-1 mx-1 p-0" id="ingredientes-plato">Queso mozzarella,
                                    pepperoni, aceituna, pimiento y
                                    salsa pizzera</p>
                                <p class="card-text my-2 p-0" id="precio-plato">32 Familiar 17 Media</p>
                                <a class="btn btn-compra border border-0 px-2 py-1" href="#" role="button">Comprar</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-xl-4 mb-4 d-flex justify-content-center">
                        <div class="card border border-0 bg-success mx-3 my-0"
                             style="max-width: 21.875rem; height: 23.125rem;" id="plato">
                            <img src="img/pizza-pepperoni.jpg" class="card-img-top img-fluid" alt="pizza-pepperoni">
                            <div class="card-body d-flex justify-content-center align-items-center flex-column m-0 p-0">
                                <h5 class="card-title text-center m-0 p-0" id="nombre-plato">Donna Pizza</h5>
                                <p class="card-text text-center mb-1 mx-1 p-0" id="ingredientes-plato">Queso mozzarella,
                                    pechuga de pollo deshilachado,
                                    cebolla blanca, aceituna, pimiento, tocino y salsa pizzera</p>
                                <p class="card-text my-2 p-0" id="precio-plato">34 Familiar 18 Media</p>
                                <a class="btn btn-compra border border-0 px-2 py-1" href="#" role="button">Comprar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="contenedor-boton-compra">
                <button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                    Carta Completa
                </button>
            </div>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
                 aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header text-light bg-danger">
                            <h1 class="modal-title fs-5" id="staticBackdropLabel">Carta Completa</h1>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <img src="img/carta.png" class="img-fluid" alt="carta">
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-success" data-bs-dismiss="modal">Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container-fluid container-fluid d-flex justify-content-center align-items-center flex-column"
             id="container-nosotros">
            <div class="row">
                <div class="col col-lg-6 col-sm-12">

                </div>
                <div class="col col-lg-6 col-sm-12">

                </div>
            </div>
        </div>
        <div class="container-fluid d-flex justify-content-center align-items-center flex-column" id="container-contacto">
            <div class="form-container py-5 px-4" id="form-contacto">
                <h2 class="text-left font-weight-bold mx-2 my-0" id="titulo-contacto">¡Estamos para Servirte!</h2>
                <p class="text-left font-weight-bold mx-2" id="subtitulo-contacto">¿Tienes alguna pregunta o quieres hacer
                    un
                    pedido? ¡Estamos aquí para ayudarte! Escríbenos o llámanos, y con gusto te atenderemos.</p>
                <form id="consultaForm" class="row">
                    <div class="form-group col-lg-3 col-md-6 col-sm-12 mb-3" id="input-contacto">
                        <input type="text" class="form-control p-2" id="nombre" placeholder="Nombre" required>
                    </div>
                    <div class="form-group col-lg-3 col-md-6 col-sm-12 mb-3" id="input-contacto">
                        <input type="email" class="form-control p-2" id="email" placeholder="Email" required>
                    </div>
                    <div class="form-group col-lg-3 col-md-6 col-sm-12 mb-3" id="input-contacto">
                        <input type="tel" class="form-control p-2" id="telefono" placeholder="Teléfono" required>
                    </div>
                    <div class="form-group col-lg-3 col-md-6 col-sm-12 mb-3 d-flex justify-content-center"
                         id="input-contacto">
                        <button type="submit" class="btn btn-danger p-2 w-100" id="boton-contacto">Solicitar Ayuda</button>
                    </div>
                </form>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
    </body>

</html>
