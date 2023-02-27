
FILENAME = "mod.zip"
wave:begin("wave.png")--AQui te fallaba el wavw porque la png esta en la carpeta install y solo tenias wave:begin("wave.png")
color.loadpalette()
--images
x = image.load("images/x.png")
triangles = image.load("images/triangle.png")
nudebachelorsprev = image.load("images/nudebachelorsprev.png")
pamwakeupprev = image.load("images/pamwakeupprev.png")
hornybachelorsprev = image.load("images/hornybachelorsprev.png")
nudefarmermuscledprev = image.load("images/nudefarmermuscle.png")
--descargas
function NUDEBACHELORS()
		if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Comenzando la descarga... \n")
		URL = "https://github.com/Varon9/vitcht/files/10834365/NDBACHELORS.zip"
		os.delay(1000)
		http.download(URL,"ux0:temp/"..FILENAME)
		if http.download then
			files.extract("ux0:temp/"..FILENAME,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito, borrando archivo zip residual... \n")
					os.delay(1000)
					files.delete("ux0:temp/"..FILENAME)
					if files.delete then
						if back then back:blit(0,0) end
						wave:blit(1.5,300)
						message_wait("\n Archivo residual borrado con éxito, volviendo al menú de mods... \n")
						os.delay(1000)
						MODS()
					else
						if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n No se ha podido borrar el archivo, comprueba desde vitashell\n que no exista el archivo mod.zip en la carpeta ux0:temp/\n y si existe, elimínalo manualmente. \n")
					os.delay(4000)
					MODS()
					end
				else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Se ha producido un error en la extracción, volviendo al menú... \n")
					os.delay(1000)
					MODS()
				end
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Se ha producido un error en la descarga \n")
			os.delay(1000)
		end
end

function NUDEFARMER()
		if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Comenzando la descarga... \n")
		URL = "https://github.com/Varon9/vitcht/files/10834256/NFARMERMUSCLE.zip"
		os.delay(1000)
		http.download(URL,"ux0:temp/"..FILENAME)
		if http.download then
			files.extract("ux0:temp/"..FILENAME,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito, borrando archivo zip residual... \n")
					os.delay(1000)
					files.delete("ux0:temp/"..FILENAME)
					if files.delete then
						if back then back:blit(0,0) end
						wave:blit(1.5,300)
						message_wait("\n Archivo residual borrado con éxito, volviendo al menú de mods... \n")
						os.delay(1000)
						MODS()
					else
						if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n No se ha podido borrar el archivo, comprueba desde vitashell\n que no exista el archivo mod.zip en la carpeta ux0:temp/\n y si existe, elimínalo manualmente. \n")
					os.delay(4000)
					MODS()
					end
				else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Se ha producido un error en la extracción, volviendo al menú... \n")
					os.delay(1000)
					MODS()
				end
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Se ha producido un error en la descarga \n")
			os.delay(1000)
		end
end

function HORNYBACHELORS()
if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Comenzando la descarga... \n")
		URL = "https://github.com/Varon9/vitcht/files/10834352/HornyBachel.zip"
		os.delay(1000)
		http.download(URL,"ux0:temp/"..FILENAME)
		if http.download then
			files.extract("ux0:temp/"..FILENAME,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito, borrando archivo zip residual... \n")
					os.delay(1000)
					files.delete("ux0:temp/"..FILENAME)
					if files.delete then
						if back then back:blit(0,0) end
						wave:blit(1.5,300)
						message_wait("\n Archivo residual borrado con éxito, volviendo al menú de mods... \n")
						os.delay(1000)
						MODS()
					else
						if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n No se ha podido borrar el archivo, comprueba desde vitashell\n que no exista el archivo mod.zip en la carpeta ux0:temp/\n y si existe, elimínalo manualmente. \n")
					os.delay(4000)
					MODS()
					end
				else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Se ha producido un error en la extracción, volviendo al menú... \n")
					os.delay(1000)
					MODS()
				end
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Se ha producido un error en la descarga \n")
			os.delay(1000)
		end
end

function PAMWAKEUP()
if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Comenzando la descarga... \n")
		URL = "https://github.com/Varon9/vitcht/files/10834385/PAMWAKEUP.zip"
		os.delay(1000)
		http.download(URL,"ux0:temp/"..FILENAME)
		if http.download then
			files.extract("ux0:temp/"..FILENAME,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito, borrando archivo zip residual... \n")
					os.delay(1000)
					files.delete("ux0:temp/"..FILENAME)
					if files.delete then
						if back then back:blit(0,0) end
						wave:blit(1.5,300)
						message_wait("\n Archivo residual borrado con éxito, volviendo al menú de mods... \n")
						os.delay(1000)
						MODS()
					else
						if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n No se ha podido borrar el archivo, comprueba desde vitashell\n que no exista el archivo mod.zip en la carpeta ux0:temp/\n y si existe, elimínalo manualmente. \n")
					os.delay(4000)
					MODS()
					end
				else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Se ha producido un error en la extracción, volviendo al menú... \n")
					os.delay(1000)
					MODS()
				end
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Se ha producido un error en la descarga \n")
			os.delay(1000)
		end
end
		
		
		
		
		
--menu
	menu = {
		{ text = "Nude Bachelors", desc = "Desnuda a todos los npcs masculinos.", moddesc = "Desnuda a todos los npcs masculinos.\n", imageprev = nudebachelorsprev,	funct = NUDEBACHELORS  },
		{ text = "Nude Muscular Farmer", desc = "Convierte a tu protagonista masculino en un bodybuilder desnudo.", imageprev = nudefarmermuscledprev, moddesc = "En la pantalla de creación de personaje, con la barra\nde color de los pantalones, puedes cambiar el color\ndel miembro de tu personaje.",	funct = NUDEFARMER},
		{ text = "Horny Bachelors", desc = "Añade un toque picante al juego", imageprev = hornybachelorsprev, moddesc = "Desnuda a todos los npcs masculinos y les añade tareas como,\npor ejemplo:\n\n-Masturbarse a ciertas horas y en ciertos lugares segun el día\n de la semana.\n\n-Tener encuentros sexuales entre ellos.\n\n-Incesto.\n\nEl mod aún está en desarrollo y esta expuesto a cambios.",	funct = HORNYBACHELORS},
		{ text = "Pam, despierta, coño!", desc = "Cambia la hora a la que Pam va al bus", imageprev = pamwakeupprev, moddesc = "Archivo de tarea modificado para que Pam vaya al autobús\n a las 06:30.",		funct = PAMWAKEUP  },
		{ text = "nude bachelorettes", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Gayrdew Valley", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Explorar Mods", desc = "Instala el pack completo con contenido sexual de temática gay", moddesc = "Desnuda a todos los npcs masculinos.",		funct = XXXUSA  },
		{ text = "Mods Básicos", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Nude Bachelors", desc = "Desnuda a todos los npcs masculinos.",	 moddesc = "Desnuda a todos los npcs masculinos.",	funct = NUDEBACHELORS  },
		{ text = "Nude Muscular Farmer", desc = "Convierte a tu protagonista masculino en un bodybuilder desnudo.", moddesc = "Desnuda a todos los npcs masculinos.",	funct = NUDEFARMER},
		{ text = "Desinstalar todos los mods", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Explorar Mods", desc = "Instala el pack completo con contenido sexual de temática gay", moddesc = "Desnuda a todos los npcs masculinos.",		funct = XXXUSA  },
		{ text = "Mods Básicos", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Desinstalar todos los mods", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Explorar Mods", desc = "Instala el pack completo con contenido sexual de temática gay", moddesc = "Desnuda a todos los npcs masculinos.",		funct = XXXUSA  },
		{ text = "Mods Básicos", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Nude Bachelors", desc = "Desnuda a todos los npcs masculinos.", moddesc = "Desnuda a todos los npcs masculinos.",		funct = NUDEBACHELORS  },
		{ text = "Nude Muscular Farmer", desc = "Convierte a tu protagonista masculino en un bodybuilder desnudo.", moddesc = "Desnuda a todos los npcs masculinos.",	funct = NUDEFARMER},
		{ text = "Desinstalar todos los mods", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Explorar Mods", desc = "Instala el pack completo con contenido sexual de temática gay", moddesc = "Desnuda a todos los npcs masculinos.",		funct = XXXUSA  },
		{ text = "Mods Básicos", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Desinstalar todos los mods", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Explorar Mods", desc = "Instala el pack completo con contenido sexual de temática gay", moddesc = "Desnuda a todos los npcs masculinos.",		funct = XXXUSA  },
		{ text = "Mods Básicos", desc = "Instala solo las modificaciones basicas sin contenido sexual", moddesc = "Desnuda a todos los npcs masculinos.",	funct = FFUSA},
		{ text = "Desinstalar todos los mods", desc = "Desinstala los mods de la carpeta repatch", moddesc = "Desnuda a todos los npcs masculinos.",	funct = UNINSTALLUSA},
		{ text = "Atrás", desc = "Volver al menú principal",	funct = VOLVER  }
	}
