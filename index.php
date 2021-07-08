<?php
require_once('./tools/header.php');

require_once('./tools/mypathdb.php');
?>
<script>
    function consultarEmpresa() {
        $.ajax({
            type: "POST",
            url: "backend/empresaApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {
                if (respuesta.error == 1) {
                    swal("Houston, tenemos un problema", "No encontramos los datos", "error");
                }
                if (respuesta.exito == 1) {
                    document.getElementById("telefono").innerHTML = respuesta.telefono;
                    document.getElementById("telefonoTienda").innerHTML = respuesta.telefono;
                    document.getElementById("telefonoTienda").href = "tel:" + respuesta.telefono;
                    document.getElementById("nombre").innerHTML = respuesta.nombre;
                    document.getElementById("nombreTienda").innerHTML = respuesta.nombre;
                    document.getElementById("email").innerHTML = respuesta.email;
                    document.getElementById("emailTienda").innerHTML = respuesta.email;
                    document.getElementById("emailTienda").href = "mailto:" + respuesta.email;
                    document.getElementById("titulo1").innerHTML = respuesta.titulo1;
                    document.getElementById("subtitulo1").innerHTML = respuesta.subtitulo1;
                    document.getElementById("descripcion1").innerHTML = respuesta.descripcion1;
                    document.getElementById("titulo2").innerHTML = respuesta.titulo2;
                    document.getElementById("subtitulo2").innerHTML = respuesta.subtitulo2;
                    document.getElementById("descripcion2").innerHTML = respuesta.descripcion2;
                    document.getElementById("titulo3").innerHTML = respuesta.titulo3;
                    document.getElementById("subtitulo3").innerHTML = respuesta.subtitulo3;
                    document.getElementById("descripcion3").innerHTML = respuesta.descripcion3;
                    document.getElementById("facebook").href = respuesta.facebook;
                    document.getElementById("facebookTienda").href = respuesta.facebook;
                    document.getElementById("twitter").href = respuesta.twitter;
                    document.getElementById("twitterTienda").href = respuesta.twitter;
                    document.getElementById("instagram").href = respuesta.instagram;
                    document.getElementById("instagramTienda").href = respuesta.instagram;
                    document.getElementById("linkedin").href = respuesta.linkedin;
                    document.getElementById("linkedinTienda").href = respuesta.linkedin;
                    document.getElementById("emailLink").href = "mailto:" + respuesta.email;
                    document.getElementById("direccion").innerHTML = respuesta.direccion;
                    let imagen = respuesta.imagen;
                    let imagen1 = respuesta.imagen1;
                    let imagen2 = respuesta.imagen2;
                    let imagen3 = respuesta.imagen3;
                    ruta = respuesta.ruta;
                    document.getElementById("imagen").src = ruta + imagen;
                    document.getElementById("imagen1").src = ruta + imagen1;
                    document.getElementById("imagen2").src = ruta + imagen2;
                    document.getElementById("imagen3").src = ruta + imagen3;
                }
            }
        })
    }

    function consultarContactos() {
        $.ajax({
            type: "POST",
            url: "backend/contactosApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {
                if (respuesta.error == 1) {
                    swal("Houston, tenemos un problema", "No encontramos los datos", "error");
                }
                if (respuesta.exito == 1) {
                    document.getElementById("cantidadMensajes").innerHTML = respuesta.cantidadMensajes;
                }
            }
        })
    }

    function consultarCategorias() {
        $.ajax({
            type: "POST",
            url: "backend/categoriasApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {

                document.getElementById("nombreCategoria1").innerHTML = respuesta[0].nombre;
                document.getElementById("nombreCategoria2").innerHTML = respuesta[1].nombre;
                document.getElementById("nombreCategoria3").innerHTML = respuesta[2].nombre;

                let imagenCategoria1 = respuesta[0].imagen;
                let imagenCategoria2 = respuesta[1].imagen;
                let imagenCategoria3 = respuesta[2].imagen;

                document.getElementById("imagenCategoria1").src = ruta + "categorias/" + imagenCategoria1;
                document.getElementById("imagenCategoria2").src = ruta + "categorias/" + imagenCategoria2;
                document.getElementById("imagenCategoria3").src = ruta + "categorias/" + imagenCategoria3;
            }
        })
    }

    function consultarProductos() {
        $.ajax({
            type: "POST",
            url: "backend/productosApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {

                document.getElementById("nombreProducto1").innerHTML = respuesta[0].nombre.substr(0, 80);
                document.getElementById("nombreProducto2").innerHTML = respuesta[1].nombre.substr(0, 80);
                document.getElementById("nombreProducto3").innerHTML = respuesta[2].nombre.substr(0, 80);
                document.getElementById("descripcionProducto1").innerHTML = respuesta[0].descripcion.substr(0, 300);
                document.getElementById("descripcionProducto2").innerHTML = respuesta[1].descripcion.substr(0, 300);
                document.getElementById("descripcionProducto3").innerHTML = respuesta[2].descripcion.substr(0, 300);
                document.getElementById("precioProducto1").innerHTML = respuesta[0].precio;
                document.getElementById("precioProducto2").innerHTML = respuesta[1].precio;
                document.getElementById("precioProducto3").innerHTML = respuesta[2].precio;
                idProducto1 = respuesta[0].id;
                idProducto2 = respuesta[1].id;
                idProducto3 = respuesta[2].id;
                valorOpinion(1, idProducto1);
                valorOpinion(2, idProducto2);
                valorOpinion(3, idProducto3);

                let imagenProducto1 = respuesta[0].imagen;
                let imagenProducto2 = respuesta[1].imagen;
                let imagenProducto3 = respuesta[2].imagen;

                document.getElementById("imagenProducto1").src = ruta + "productos/" + imagenProducto1;
                document.getElementById("imagenProducto2").src = ruta + "productos/" + imagenProducto2;
                document.getElementById("imagenProducto3").src = ruta + "productos/" + imagenProducto3;
            }
        })
    }

    function consultarCalificacion(calificacion, numeroProducto) {
        if (numeroProducto == 1) {
            switch (calificacion) {
                case 0:
                    document.getElementById("imagenCalificacion1").src = ruta + "star0.png";
                    break;
                case 1:
                    document.getElementById("imagenCalificacion1").src = ruta + "star1.png";
                    break;
                case 2:
                    document.getElementById("imagenCalificacion1").src = ruta + "star2.png";
                    break;
                case 3:
                    document.getElementById("imagenCalificacion1").src = ruta + "star3.png";
                    break;
                case 4:
                    document.getElementById("imagenCalificacion1").src = ruta + "star4.png";
                    break;
                case 5:
                    document.getElementById("imagenCalificacion1").src = ruta + "star5.png";
                    break;
                default:
                    document.getElementById("imagenCalificacion1").src = ruta + "star0.png";
                    break;
            }
        }
        if (numeroProducto == 2) {
            switch (calificacion) {
                case 0:
                    document.getElementById("imagenCalificacion2").src = ruta + "star0.png";
                    break;
                case 1:
                    document.getElementById("imagenCalificacion2").src = ruta + "star1.png";
                    break;
                case 2:
                    document.getElementById("imagenCalificacion2").src = ruta + "star2.png";
                    break;
                case 3:
                    document.getElementById("imagenCalificacion2").src = ruta + "star3.png";
                    break;
                case 4:
                    document.getElementById("imagenCalificacion2").src = ruta + "star4.png";
                    break;
                case 5:
                    document.getElementById("imagenCalificacion2").src = ruta + "star5.png";
                    break;
                default:
                    document.getElementById("imagenCalificacion2").src = ruta + "star0.png";
                    break;
            }
        }
        if (numeroProducto == 3) {
            switch (calificacion) {
                case 0:
                    document.getElementById("imagenCalificacion3").src = ruta + "star0.png";
                    break;
                case 1:
                    document.getElementById("imagenCalificacion3").src = ruta + "star1.png";
                    break;
                case 2:
                    document.getElementById("imagenCalificacion3").src = ruta + "star2.png";
                    break;
                case 3:
                    document.getElementById("imagenCalificacion3").src = ruta + "star3.png";
                    break;
                case 4:
                    document.getElementById("imagenCalificacion3").src = ruta + "star4.png";
                    break;
                case 5:
                    document.getElementById("imagenCalificacion3").src = ruta + "star5.png";
                    break;
                default:
                    document.getElementById("imagenCalificacion3").src = ruta + "star0.png";
                    break;
            }
        }

    }

    function valorCalificacion(numeroProducto) {
        $.ajax({
            type: "POST",
            url: "backend/productosApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {
                if (numeroProducto == 1) {
                    consultarCalificacion(parseInt(respuesta[0].calificacion), numeroProducto)
                }
                if (numeroProducto == 2) {
                    consultarCalificacion(parseInt(respuesta[1].calificacion), numeroProducto)
                }
                if (numeroProducto == 3) {
                    consultarCalificacion(parseInt(respuesta[2].calificacion), numeroProducto)
                }
            }
        })
    }

    function valorOpinion(numeroProducto, idProducto) {
        // console.log("numeroProducto: " + numeroProducto);
        // console.log("idProducto: " + idProducto);
        $.ajax({
            type: "POST",
            url: "backend/opinionesApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0&idProducto=" + idProducto,
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {
                if (numeroProducto == 1) {
                    document.getElementById("totalOpiniones1").innerHTML = "Opiniones (" + respuesta.avgCalificacion + ")";
                }
                if (numeroProducto == 2) {
                    document.getElementById("totalOpiniones2").innerHTML = "Opiniones (" + respuesta.avgCalificacion + ")";
                }
                if (numeroProducto == 3) {
                    document.getElementById("totalOpiniones3").innerHTML = "Opiniones (" + respuesta.avgCalificacion + ")";
                }
            }
        })
    }

    function buscarTodasCategorias() {
        $.ajax({
            type: "POST",
            url: "backend/categoriasApi.php?option=consultar&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
            dataType: "json",
            data: $(this).serialize(),
            success: function(respuesta) {
                let res = document.querySelector('#listaTodasCategorias');
                res.innerHTML = '';
                for (let indice of respuesta) {
                    res.innerHTML += `
                    <li><a class="text-decoration-none" href="shop-single.php?categoria=${indice.nombre}">${indice.nombre}</a></li>
                    `
                }
            }
        })
    }

    localStorage.removeItem("bandera");

    function incluirNewsletter() {
        if (localStorage.getItem("bandera") === null) {
            localStorage.setItem("bandera", "entro");
            $("body").on('submit', '#formDefault', function(event) {
                event.preventDefault()
                if ($('#formDefault').valid()) {
                    $.ajax({
                        type: "POST",
                        url: "backend/newsletterApi.php?option=incluir&id=TFVpNU9YVVNwc0ZkUGpTWjFFYTdmZz0",
                        dataType: "json",
                        data: $(this).serialize(),
                        success: function(respuesta) {
                            if (respuesta.error == 1) {
                                swal("Houston, tenemos un problema", "Este email ya existe", "error");
                            }
                            if (respuesta.error == 2) {
                                swal("Houston, tenemos un problema", "Ha ocurrido un error! comuníquese con el administrador del sistema", "error");
                            }
                            if (respuesta.error == 3) {
                                swal("Houston, tenemos un problema", "El campo email es requerido", "error");
                            }
                            if (respuesta.exito == 1) {
                                document.querySelector("#subscribeEmail").value = "";
                                swal("Operación exitosa", "Datos guardados satisfactoriamente", "success");
                            }
                        }
                    })
                }
            })
        }
    }
</script>
<!-- Start Top Nav -->
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="" id="emailLink">
                    <span id="email"></span>
                </a>
                <i class="fa fa-phone mx-2"></i>

                <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">
                    <span id="telefono" name="telefono"></span>
                </a>
            </div>
            <div>
                <a class="text-light" href="" target="_blank" rel="sponsored" id="facebook"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="" target="_blank" id="instagram"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="" target="_blank" id="twitter"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                <a class="text-light" href="" target="_blank" id="linkedin"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
            </div>
        </div>
    </div>
</nav>
<!-- Close Top Nav -->


<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">

        <img src="" alt="logo" id="imagen" name="imagen">
        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill">
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="index.php">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="about.php">Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="shop.php">Tienda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contact.php">Contacto</a>
                    </li>
                </ul>
            </div>
            <div class="navbar align-self-center d-flex">
                <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                    <div class="input-group">
                        <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                        <div class="input-group-text">
                            <i class="fa fa-fw fa-search"></i>
                        </div>
                    </div>
                </div>
                <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                    <i class="fa fa-fw fa-search text-dark mr-2"></i>
                </a>
                <a class="nav-icon position-relative text-decoration-none" href="#">
                    <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">7</span>
                </a>
                <a class="nav-icon position-relative text-decoration-none" href="#">
                    <i class="fa fa-fw fa-user text-dark mr-3"></i>
                    <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark" id="cantidadMensajes"></span>
                </a>
            </div>
        </div>

    </div>
</nav>
<!-- Close Header -->

<!-- Modal -->
<div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="w-100 pt-1 mb-5 text-right">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <form action="" method="get" class="modal-content modal-body border-0 p-0">
            <div class="input-group mb-2">
                <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                <button type="submit" class="input-group-text bg-success text-light">
                    <i class="fa fa-fw fa-search text-white"></i>
                </button>
            </div>
        </form>
    </div>
</div>



<!-- Start Banner Hero -->
<div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
    <ol class="carousel-indicators">
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
        <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="" alt="imagen" id="imagen1">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left align-self-center">
                            <h1 class="h1 text-success" id="titulo1"></h1>
                            <h3 class="h2" id="subtitulo1"></h3>
                            <p id="descripcion1"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="" alt="imagen slider" id="imagen2">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h1" id="titulo2"></h1>
                            <h3 class="h2" id="subtitulo2"></h3>
                            <p id="descripcion2"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="carousel-item">
            <div class="container">
                <div class="row p-5">
                    <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                        <img class="img-fluid" src="" alt="imagen slider" id="imagen3">
                    </div>
                    <div class="col-lg-6 mb-0 d-flex align-items-center">
                        <div class="text-align-left">
                            <h1 class="h1" id="titulo3"></h1>
                            <h3 class="h2" id="subtitulo3"></h3>
                            <p id="descripcion3"></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
        <i class="fas fa-chevron-left"></i>
    </a>
    <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
        <i class="fas fa-chevron-right"></i>
    </a>
</div>
<!-- End Banner Hero -->


<!-- Start Categories of The Month -->
<section class="container py-5">
    <div class="row text-center pt-3">
        <div class="col-lg-6 m-auto">
            <h1 class="h1">Categories of The Month</h1>
            <p>
                Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                deserunt mollit anim id est laborum.
            </p>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-md-4 p-5 mt-3">
            <a href="#"><img src="" class="rounded-circle img-fluid border" id="imagenCategoria1"></a>
            <h5 class="text-center mt-3 mb-3" id="nombreCategoria1"></h5>
            <p class="text-center"><a class="btn btn-success">Ir a la tienda</a></p>
        </div>
        <div class="col-12 col-md-4 p-5 mt-3">
            <a href="#"><img src="" class="rounded-circle img-fluid border" id="imagenCategoria2"></a>
            <h2 class="h5 text-center mt-3 mb-3" id="nombreCategoria2"></h2>
            <p class="text-center"><a class="btn btn-success">Ir a la tienda</a></p>
        </div>
        <div class="col-12 col-md-4 p-5 mt-3">
            <a href="#"><img src="" class="rounded-circle img-fluid border" id="imagenCategoria3"></a>
            <h2 class="h5 text-center mt-3 mb-3" id="nombreCategoria3"></h2>
            <p class="text-center"><a class="btn btn-success">Ir a la tienda</a></p>
        </div>
    </div>
</section>
<!-- End Categories of The Month -->


<!-- Start Featured Product -->
<section class="bg-light">
    <div class="container py-5">
        <div class="row text-center py-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">Featured Product</h1>
                <p>
                    Reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    Excepteur sint occaecat cupidatat non proident.
                </p>
            </div>
        </div>
        <div class="row">
            <div class="col-12 col-md-4 mb-4">
                <div class="card h-100">
                    <a href="shop-single.php">
                        <img src="" class="card-img-top" alt="imagen producto" id="imagenProducto1">
                    </a>
                    <div class="card-body">
                        <ul class="list-unstyled d-flex justify-content-between">
                            <img src="" class="" alt="imagen calificacion" id="imagenCalificacion1">
                            <li class="text-muted text-right" id="precioProducto1"></li>
                        </ul>
                        <a href="shop-single.php" class="h2 text-decoration-none text-dark" id="nombreProducto1"></a>
                        <p class="card-text" id="descripcionProducto1"></p>
                        <p class="text-muted" id="totalOpiniones1"></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-4">
                <div class="card h-100">
                    <a href="shop-single.php">
                        <img src="" class="card-img-top" alt="imagen producto" id="imagenProducto2">
                    </a>
                    <div class="card-body">
                        <ul class="list-unstyled d-flex justify-content-between">
                            <img src="" class="" alt="imagen calificacion" id="imagenCalificacion2">
                            <li class="text-muted text-right" id="precioProducto2"></li>
                        </ul>
                        <a href="shop-single.php" class="h2 text-decoration-none text-dark" id="nombreProducto2"></a>
                        <p class="card-text" id="descripcionProducto2"></p>
                        <p class="text-muted" id="totalOpiniones2"></p>
                    </div>
                </div>
            </div>
            <div class="col-12 col-md-4 mb-4">
                <div class="card h-100">
                    <a href="shop-single.php">
                        <img src="" class="card-img-top" alt="imagen producto" id="imagenProducto3">
                    </a>
                    <div class="card-body">
                        <ul class="list-unstyled d-flex justify-content-between">
                            <img src="" class="" alt="imagen calificacion" id="imagenCalificacion3">
                            <li class="text-muted text-right" id="precioProducto3"></li>
                        </ul>
                        <a href="shop-single.php" class="h2 text-decoration-none text-dark" id="nombreProducto3"></a>
                        <p class="card-text" id="descripcionProducto3"></p>
                        <p class="text-muted" id="totalOpiniones3"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Featured Product -->

<?php
require_once('./tools/footer.php');
?>