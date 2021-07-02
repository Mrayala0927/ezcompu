<footer class="row" id="contactenos">

	<hr>
	
	<h1 class="text-center text-info"><b>CONTÁCTENOS</b></h1>

	<hr>
	
	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
	
		<iframe src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=6.3155782&amp;q=cimitarra%20santander+(My%20Business%20Name)&amp;ie=UTF8&amp;t=&amp;z=19&amp;iwloc=B&amp;output=embed" width="100%"  frameborder="0" style="border:0" allowfullscreen></iframe>
        
       
		<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 jumbotron">

    		<h4 class="blockquote-reverse text-primary">
    			<ul>
	              <li><span class="glyphicon glyphicon-phone"></span>  (57)(4) 555 5555</li>
	              <li><span class="glyphicon glyphicon-map-marker"></span>  Ciudadela Villa del Rio</li>
	              <li><span class="glyphicon glyphicon-envelope"></span>  info@culturacimitarra.com</li>    
	          	</ul>      
    		</h4>

			</div>

	</div>

	<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12" id="formulario" >

		<ol>
    		<li>
        		<a href="http://www.facebook.com" target="_blank">
          		<i class="fa fa-facebook" style="font-size:24px;"></i>  
       		 	</a>
   			</li>

    		<li>
        		<a href="http://www.youtube.com" target="_blank">  
          		<i class="fa fa-youtube" style="font-size:24px;"></i>  
       			</a>
    		</li>
    
    		<li>
        		<a href="http://www.vimeo.com" target="_blank">
          		<i class="fa fa-vimeo" style="font-size:24px;"></i>  
        		</a>
    		</li>
			</ol>

			<form method="post" onsubmit="return validarMensaje()">

			    <input type="text" class="form-control" id="nombre" name="nombre"  placeholder="Nombre" required>

			    <input type="email" class="form-control" id="email" name="email" placeholder="Email" required>

			    <textarea name="mensaje" id="mensaje" cols="30" rows="10" placeholder="Contenido del Mensaje" class="form-control" required></textarea>

			 
			  	<input type="submit" class="btn btn-default" value="Enviar">
		</form>

		<?php

		$mensajes = new MensajesController();
		$mensajes -> registroMensajesController();

		?>
				
	</div>

</footer>
