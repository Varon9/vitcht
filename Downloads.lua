--global
local resource1 = nil
local resource2 = nil
local resource3 = nil
local concrete = nil
local repatchmanual = Version.."sce_sys/manual/03/"
local resfi = nil
--endglobal
local checka = nil
wave:begin("wave.png")--AQui te fallaba el wavw porque la png esta en la carpeta install y solo tenias wave:begin("wave.png")
color.loadpalette()
--images

nudebachelorsprev = image.load("images/nudebachelorsprev.png")
pamwakeupprev = image.load("images/pamwakeupprev.png")
hornybachelorsprev = image.load("images/hornybachelorsprev.png")
nudefarmermuscledprev = image.load("images/nudefarmermuscle.png")
gayrdewprev = image.load("images/gayrdewvalley.png")

function manual()
	if not checka then
		if resource1 then
			my_table = files.listfiles(Version.."/sce_sys/manual/03/")
			count = table.getn(my_table)
			local new_filename = "0"..count +1 ..".png"
			files.copy(concrete..resource1, repatchmanual.."working/")
			files.rename(repatchmanual.."working/"..resource1, new_filename)
			files.move(repatchmanual.."working/.",repatchmanual)
		end
		if resource2 then
			my_table = files.listfiles(Version.."/sce_sys/manual/03/")
			count = table.getn(my_table)
			local new_filename = "0"..count +1 ..".png"
			files.copy(concrete..resource2, repatchmanual.."working/")
			files.rename(repatchmanual.."working/"..resource2, new_filename)
			files.move(repatchmanual.."working/.",repatchmanual)
		end
		if resource3 then
			my_table = files.listfiles(Version.."/sce_sys/manual/03/")
			count = table.getn(my_table)
			local new_filename = "0"..count +1 ..".png"
			files.copy(concrete..resource3, repatchmanual.."working/")
			files.rename(repatchmanual.."working/"..resource3, new_filename)
			files.move(repatchmanual.."working/.",repatchmanual)
		end
	end
end
--descargas
function NUDEBACHELORS()
	local routedfilename = "/mods/NDBACHELORS.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/Nudebachelors")
					concrete = "/resources/NDBACHELORS/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					checka = Nudebachelors_check
					manual()
					Nudebachelors_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10853806/NDBACHELORS.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Nudebachelors")
							concrete = "/resources/NDBACHELORS/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = Nudebachelors_check
							manual()
							Nudebachelors_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
	else
		if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Comenzando la descarga... \n")
		URL = "https://github.com/Varon9/vitcht/files/10853806/NDBACHELORS.zip"
		os.delay(1000)
		http.download(URL,routedfilename)
		if http.download then
			files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				message_wait("\n Instalado con éxito.\n")
				os.delay(1000)
				files.mkdir(Version.."/checks/Nudebachelors")
				Nudebachelors_check = true
				concrete = "/resources/NDBACHELORS/"
				resource1 = "000.png"
				resource2 = "001.png"
				resource3 = "002.png"
				checka = Nudebachelors_check
				manual()
				Nudebachelors_check = true
				dofile("funcion.lua")
				MODS()
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
end

function HORNYBACHELORS()
	local routedfilename = "/mods/HornyBachel.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/Hornybachelors")
					concrete = "/resources/HORNYBACHELORS/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					checka = HornyBachelors_check
					manual()
					HornyBachelors_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834352/HornyBachel.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Hornybachelors")
							concrete = "/resources/HORNYBACHELORS/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = HornyBachelors_check
							manual()
							HornyBachelors_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
	else
		if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834352/HornyBachel.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Hornybachelors")
							concrete = "/resources/HORNYBACHELORS/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = HornyBachelors_check
							manual()
							HornyBachelors_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
		end
end

function NUDEFARMER()
	routedfilename = "/mods/NUDEFARMER.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/Nudefarmer")
					concrete = "/resources/NUDEFARMER/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					checka = Nudefarmer_check
					manual()
					Nudefarmer_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834256/NFARMERMUSCLE.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Nudefarmer")
							concrete = "/resources/NUDEFARMER/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = Nudefarmer_check
							manual()
							Nudefarmer_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
	else
		if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834256/NFARMERMUSCLE.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Nudefarmer")
							concrete = "/resources/NUDEFARMER/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = Nudefarmer_check
							manual()
							Nudefarmer_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
end

function PAMWAKEUP()
	local routedfilename = "/mods/Pam.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/Pam")
					concrete = "/resources/PAMWAKEUP/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					checka = Pam_check
					manual()
					Pam_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834385/PAMWAKEUP.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Pam")
							concrete = "/resources/PAMWAKEUP/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = Pam_check
							manual()
							Pam_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
	else
		if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10834385/PAMWAKEUP.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/Pam")
							concrete = "/resources/PAMWAKEUP/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = Pam_check
							manual()
							Pam_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
end

function GAYRDEWVALLEY()
	local routedfilename = "/mods/GAYRDEWVALLEY.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/GAYRDEWVALLEY")
					concrete = "/resources/GAYRDEWVALLEY/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					checka = GAYRDEWVALLEY_check
					manual()
					GAYRDEWVALLEY_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10892298/GAYRDEWVALLEY.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/GAYRDEWVALLEY")
							concrete = "/resources/GAYRDEWVALLEY/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = GAYRDEWVALLEY_check
							manual()
							GAYRDEWVALLEY_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
	else
		if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					URL = "https://github.com/Varon9/vitcht/files/10892298/GAYRDEWVALLEY.zip"
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/GAYRDEWVALLEY")
							concrete = "/resources/GAYRDEWVALLEY/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							checka = GAYRDEWVALLEY_check
							manual()
							GAYRDEWVALLEY_check = true
							dofile("funcion.lua")
							MODS()
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
						MODS()
					end
			end
	
end
		
--menu
	menu = {
		{ text = "Nude Bachelors", desc = "Desnuda a todos los npcs masculinos.", moddesc = "Desnuda a todos los npcs masculinos.\n", imageprev = nudebachelorsprev, modcheck = Nudebachelors_check,	funct = NUDEBACHELORS  },
		{ text = "Nude Muscular Farmer", desc = "Convierte a tu protagonista masculino en un bodybuilder desnudo.", imageprev = nudefarmermuscledprev, modcheck = Nudefarmer_check, moddesc = "En la pantalla de creación de personaje, con la barra\nde color de los pantalones, puedes cambiar el color\ndel miembro de tu personaje.",	funct = NUDEFARMER},
		{ text = "Horny Bachelors", desc = "Añade un toque picante al juego", imageprev = hornybachelorsprev, modcheck = HornyBachelors_check, moddesc = "Desnuda a todos los npcs masculinos y les añade tareas como,\npor ejemplo:\n\n-Masturbarse a ciertas horas y en ciertos lugares segun el día\n de la semana.\n\n-Tener encuentros sexuales entre ellos.\n\n-Incesto.\n\nEl mod aún está en desarrollo y esta expuesto a cambios.",	funct = HORNYBACHELORS},
		{ text = "Pam, despierta, coño!", desc = "Cambia la hora a la que Pam va al bus", imageprev = pamwakeupprev, modcheck = Pam_check, moddesc = "Archivo de tarea modificado para que Pam vaya al autobús\n a las 06:30.",		funct = PAMWAKEUP  },
		{ text = "Gayrdew Valley", desc = "Modifica el menú principal", imageprev = gayrdewprev, modcheck = GAYRDEWVALLEY_check, moddesc = "Modifica el menú principal:\n\n-Nombre del juego\n\n-Botones de Nueva partida y Cargar partida\n\n-Logo de Concerned Ape al hacerle click en la cara.",	funct = GAYRDEWVALLEY},
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