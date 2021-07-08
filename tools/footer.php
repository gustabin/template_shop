 <!-- Start Footer -->
 <footer class="bg-dark" id="tempaltemo_footer">
     <div class="container">
         <div class="row">

             <div class="col-md-4 pt-5">
                 <h2 class="h2 text-success border-bottom pb-3 border-light logo" id="nombreTienda"></h2>
                 <ul class="list-unstyled text-light footer-link-list">
                     <li>
                         <i class="fas fa-map-marker-alt fa-fw"></i>
                         <span id="direccion"></span>
                     </li>
                     <li>
                         <i class="fa fa-phone fa-fw"></i>
                         <a class="text-decoration-none" href="" id="telefonoTienda"></a>
                     </li>
                     <li>
                         <i class="fa fa-envelope fa-fw"></i>
                         <a class="text-decoration-none" href="" id="emailTienda"></a>
                     </li>
                 </ul>
             </div>

             <div class="col-md-4 pt-5">
                 <h2 class="h2 text-light border-bottom pb-3 border-light">Categorias</h2>
                 <ul class="list-unstyled text-light footer-link-list" id="listaTodasCategorias">
                 </ul>
             </div>

             <div class="col-md-4 pt-5">
                 <h2 class="h2 text-light border-bottom pb-3 border-light">Más información</h2>
                 <ul class="list-unstyled text-light footer-link-list">
                     <li><a class="text-decoration-none" href="index.php">Inicio</a></li>
                     <li><a class="text-decoration-none" href="about.php">Nosotros</a></li>
                     <li><a class="text-decoration-none" href="shop.php">Tienda</a></li>
                     <li><a class="text-decoration-none" href="contact.php">Contacto</a></li>
                 </ul>
             </div>

         </div>

         <div class="row text-light mb-4">
             <div class="col-12 mb-3">
                 <div class="w-100 my-3 border-top border-light"></div>
             </div>
             <div class="col-auto me-auto">
                 <ul class="list-inline text-left footer-icons">
                     <li class="list-inline-item border border-light rounded-circle text-center">
                         <a class="text-light text-decoration-none" target="_blank" href="" id="facebookTienda"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                     </li>
                     <li class="list-inline-item border border-light rounded-circle text-center">
                         <a class="text-light text-decoration-none" target="_blank" href="" id="instagramTienda"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                     </li>
                     <li class="list-inline-item border border-light rounded-circle text-center">
                         <a class="text-light text-decoration-none" target="_blank" href="" id="twitterTienda"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                     </li>
                     <li class="list-inline-item border border-light rounded-circle text-center">
                         <a class="text-light text-decoration-none" target="_blank" href="" id="linkedinTienda"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                     </li>
                 </ul>
             </div>
             <div class="col-auto">
                 <label class="sr-only" for="subscribeEmail">Email</label>
                 <form class="form-horizontal" id="formDefault">
                     <div class="input-group mb-2">
                         <input type="email" class="form-control border-light" id="subscribeEmail" name="subscribeEmail" placeholder="Email" value="">
                         <button type="submit" class="btn btn-primary" onclick="incluirNewsletter()">
                             Subscribirme
                         </button>
                     </div>
                 </form>
             </div>
         </div>
     </div>

     <div class="w-100 bg-black py-3">
         <div class="container">
             <div class="row pt-2">
                 <div class="col-12">
                     <p class="text-left text-light">
                         Copyright &copy; 2021
                         <span id="nombre" name="nombre"></span>
                         | Designed by <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a>
                     </p>
                 </div>
             </div>
         </div>
     </div>

 </footer>
 <!-- End Footer -->

 <!-- Start Script -->
 <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <script src="assets/js/jquery-1.11.0.min.js"></script>
 <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
 <script src="assets/js/bootstrap.bundle.min.js"></script>
 <script src="assets/js/templatemo.js"></script>
 <script src="assets/js/custom.js"></script>
 <!-- End Script -->
 <!--  jquery script  -->
 <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
 <!--  validation script  -->
 <script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.19.0/jquery.validate.min.js"></script>

 <!--  jsrender script  -->
 <script src="http://cdn.syncfusion.com/js/assets/external/jsrender.min.js"></script>

 <!-- Essential JS UI widget -->
 <script src="http://cdn.syncfusion.com/16.4.0.52/js/web/ej.web.all.min.js"></script>
 <!-- Start Slider Script -->
 <script src="assets/js/slick.min.js"></script>
 <script>
     $('#carousel-related-product').slick({
         infinite: true,
         arrows: false,
         slidesToShow: 4,
         slidesToScroll: 3,
         dots: true,
         responsive: [{
                 breakpoint: 1024,
                 settings: {
                     slidesToShow: 3,
                     slidesToScroll: 3
                 }
             },
             {
                 breakpoint: 600,
                 settings: {
                     slidesToShow: 2,
                     slidesToScroll: 3
                 }
             },
             {
                 breakpoint: 480,
                 settings: {
                     slidesToShow: 2,
                     slidesToScroll: 3
                 }
             }
         ]
     });
 </script>
 <!-- End Slider Script -->
 <script>
     consultarEmpresa();
     consultarContactos();
     consultarCategorias();
     consultarProductos();
     buscarTodasCategorias();
     valorCalificacion(1);
     valorCalificacion(2);
     valorCalificacion(3);
 </script>
 </body>

 </html>