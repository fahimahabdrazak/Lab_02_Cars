<?xml version="1.0" encoding ="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:template match="/">
		<html>
			<body>
			<xsl:for-each select="list/car"> 	<!-- The looping of the car from car_list.xml -->
				<div class="container container-extra"> 	<!-- Call container style from style.css-->

					<table> 				<!-- Used table to add column to the container -->
						<td> 				<!-- first column -->
						<div> 				<!-- division of the first row for first column-->	
							<img class="big-image"> <!-- Call big-image style from style.css  -->
								<xsl:attribute name="src"> 		<!-- to call image from car_list.xml -->
									<xsl:value-of select="img1"/>  
								</xsl:attribute>
							</img>
						</div> 				<!-- end of first row in first column-->	

						<div>				<!-- division of second row in first column-->		
							<img class="small-image">  <!-- Call small-image style from style.css-->
								<xsl:attribute name="src">
									<xsl:value-of select="img2"/>
								</xsl:attribute>
							</img>
							
							<img class="small-image">
								<xsl:attribute name="src">
									<xsl:value-of select="img3"/>
								</xsl:attribute>
							</img>
							
							<img class="small-image">
								<xsl:attribute name="src">
									<xsl:value-of select="img4"/>
								</xsl:attribute>
							</img>
						</div> 				<!-- end of second row in first column-->	
						</td> 				<!-- end of first column-->	


						<!-- all of this details and description below wall extract from car_list.xml. display as one column and five row. the font display as declaration class used from style.css folder -->


						<td> 				<!-- second column -->
						<div> 				<!-- division of the first row for second column-->
							<h3 class="car-title">
								<xsl:value-of select="year "/> 	
								<xsl:value-of select="make"/>
								<xsl:value-of select="mode"/>
								<xsl:value-of select="variant"/>
							</h3>
						</div> 				<!-- end of first row for second column-->

						<div class="car-details"> 			<!-- division of the second row for second column-->	
							<xsl:value-of select="mileage"/> | 
							<xsl:value-of select="capacity"/> | 
							<xsl:value-of select="transmission"/> | 
							<xsl:value-of select="body"/> | 
							<xsl:value-of select="location"/>
						</div> 								<!-- end of second row for second column-->

						<div class="car-price"> 			<!-- division of the third row for second column-->
							<xsl:value-of select="price"/>
						</div> 								<!-- end of third row for second column-->

						<div class="car-desc"> 				<!-- division of the fourth row for second column-->
							<xsl:value-of select="description"/>
						</div> 								<!-- end of fourth row for second column-->

						<div class="car-owner"> 			<!-- division of the fifth row for second column-->
								<xsl:if test="ownerno=1">
									<i class="fa fa-user owner-icon"></i>
								</xsl:if>
								<xsl:if test="ownerno=2">
									<i class="fa fa-sitemap owner-icon"></i>
								</xsl:if>
							<xsl:value-of select="name"/> | <a target="_blank">
								<xsl:attribute name="href">
									<xsl:value-of select="link"/>
								</xsl:attribute>
							<xsl:value-of select="owner"/></a>
						</div> 								<!-- end of fifth row for second column-->
						</td> 								<!-- end of column -->
					</table> 								<!-- end of the table -->
				</div>
			</xsl:for-each> 								<!-- end of the looping -->
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
