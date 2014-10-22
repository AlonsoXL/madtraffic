function(){
	tabPanel("About",
		p(style="text-align:justify",'La calidad del aire en las grandes ciudades como MADRID depende, entre otros factores, de las emisiones contaminantes de los vehiculos a motor. Nuestra aplicación web pretende visualizar esta relación y alertar de situaciones alarmantes de contaminación.'),	
		br(),

		HTML('<div style="clear: left;"><img src="http://www.gravatar.com/avatar/52c27b8719a7543b4b343775183122ea.png" alt="" style="float: left; margin-right:5px" /></div>'),
		strong('Autores'),
		p('Miguel FIANDOR',br(),
			'Ing. Informático',br(),
			a('Blog', href="http://www.adirse.org/", target="_blank"),
			'|',
			a('Twitter', href="https://twitter.com/mfiandor/", target="_blank"),
			'|',
			a('LinkedIn', href="http://www.linkedin.com/in/", target="_blank")	
		),
		p('Jose L. ALONSO',br(),
			'Ing. Industrial',br(),
			a('Blog', href="http://www.adirse.org/", target="_blank"),
			'|',
			a('Twitter', href="https://twitter.com/alonsoxl/", target="_blank"),
			'|',
			a('LinkedIn', href="http://es.linkedin.com/in/joselalonso", target="_blank")	
		),
		br(),
		
		div(class="row-fluid",
			div(class="span4",strong('Other apps'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Random variables: App tutorial part 1", href="http://shiny.snap.uaf.edu/RV_distributions/", target="_blank"),HTML('</li>'),

				HTML('</ul>')),
				strong('Code'),
				p('Codigo fuente de la App disponible en',
				a('GitHub', href="https://github.com/ADIRSE/maddata", target="_blank")),
				br()
			),
			div(class="span4", strong('Difusion mediatica'),
				p(HTML('<ul>'),
					HTML('<li>'),a("Random variables: App tutorial part 1", href="http://blog.snap.uaf.edu/2013/05/20/introducing-r-shiny-web-apps/", target="_blank"),HTML('</li>'),
					
				HTML('</ul>')),
				br()
			),
			div(class="span4",
				strong('References'),
				p(HTML('<ul>'),
					HTML('<li>'),a('Coded in R', href="http://www.r-project.org/", target="_blank"),HTML('</li>'),
					HTML('<li>'),a('Built with the Shiny package', href="http://www.rstudio.com/shiny/", target="_blank"),HTML('</li>'),
					HTML('<li>'),"Primary supporting R packages",HTML('</li>'),
					HTML('<ul>'),
						HTML('<li>'),a('ggplot2', href="http://ggplot2.org", target="_blank"),HTML('</li>'),
				
					HTML('<ul>'),
				HTML('</ul>'))
			)
		),
		br(),
		
		p(strong('Flag Dataset metadata')),
		p("A sample from the raw file found here, with some of minor edits, for instance I shortened some names and I don't use numeric IDs for factor variables in this app:
		Bache, K. & Lichman, M. (2013). UCI Machine Learning Repository [http://archive.ics.uci.edu/ml]. Irvine, CA: University of California, School of Information and Computer Science."),

		value="about"
	)
}
