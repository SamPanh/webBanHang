<!-- banner -->
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<!-- Indicators-->
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner">
			<?php
			$sql_slider = mysqli_query($con,"SELECT * FROM tbl_slider WHERE slider_active='1' ORDER BY slider_id");
			while($row_slider = mysqli_fetch_array($sql_slider)){ 
			?>
			<div class="carousel-inner">
			<div class="carousel-item item1 active" >
				<div class="container">
					<div class="space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3";>
							<p>Gundam</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">FORCE
								<span>IMPULSE</span>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item2">
				<div class="container">
					<div class="space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>Gundam</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">STRIKE
								<span>FREEDOM</span>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item3">
				<div class="container">
					<div class="space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>GunDam</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">01
								<span>RX-78-2</span>
							</h3>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item item4">
				<div class="container">
					<div class="space-banner">
						<div class="carousel-caption p-lg-5 p-sm-4 p-3">
							<p>Gundam</p>
							<h3 class="font-weight-bold pt-2 pb-lg-5 pb-4">02
								<span>RX-78-2</span>
							</h3>

						</div>
					</div>
				</div>
			</div>
		</div>
			<?php
			} 
			?>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- //banner -->