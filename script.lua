dofile("commons.lua")
x = image.load("images/x.png")
triangles = image.load("images/triangle.png")
circles = image.load("images/circle.png")
square = image.load("images/square.png")
ELE = image.load("images/l.png")
erre = image.load("images/r.png")
rightd = image.load("images/right.png")
leftd = image.load("images/left.png")
dofile("Checks.lua")
dofile("funcion.lua")
--Juego en cuestion
_NOMBRE = "Stardew Valley Mod"
_TAMANO = "20/100 MB"
--Descargas

function onExtractFiles(size, written, name, totalsize, totalwritten)
	if back then back:blit(0,0) end
	power.tick(__POWER_TICK_ALL)
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
	draw.fillrect(0,0,960,67,color.shadow)
	screen.print(480,5, _NOMBRE.." Installer", 1, color.white, 0x0, __ACENTER)
	screen.print(480,25, "Extrayendo archivos: "..tostring(name).." "..math.floor((written*100)/size).." %", 1, color.white, 0x0, __ACENTER)
	screen.print(480,45, "Progreso total: "..math.floor((totalwritten*100)/totalsize).." %", 1, color.white, 0x0, __ACENTER)
	draw.fillrect(0, 544-30, (totalwritten*960)/totalsize, 30, color.green)
	screen.flip()
end

function onNetGetFile(size,written,speed)
	if back then back:blit(0,0) end
	power.tick(__POWER_TICK_ALL)
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
	draw.fillrect(0,0,960,67,color.shadow)
	screen.print(10,10, "Descargando...")
	screen.print(480,40, "Progreso: "..math.floor((written*100)/size).." %", 1, color.white, 0x0, __ACENTER)
	draw.fillrect(0, 520, (written*960)/size, 30, color.blue)
	screen.flip()
end
if not files.exists(Version.."sce_sys/manual/") or not files.exists(Version.."sce_sys/") then
if not files.exists("manual.zip") then
	http.download("https://github.com/Varon9/vitcht/raw/main/manual.zip","manual.zip")
	files.extract("manual.zip", Version)
else
		files.extract("/manual.zip", Version)
end
end

if files.exists(Version.."Content") and files.exists(ruta.."Content.psarc")then
	files.rename(ruta.."Content.psarc","Content.psarca")
end


if files.exists(ruta.."Content.psarc") and not files.exists(Version.."Contenta") then
	if back then back:blit(0,0) end
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
	if not files.exists("/base.zip") then
		http.download("https://github.com/Varon9/vitcht/files/10832220/base.zip","/base.zip")
		if http.download then
			files.extract("/base.zip", Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
					files.rename(ruta.."Content.psarc", "Content.psarca")
					if not files.exists("/manual.zip") then
						http.download("https://github.com/Varon9/vitcht/raw/main/manual.zip","/manual.zip")
						if http.download then
							if back then back:blit(0,0) end
							wave2:blit(1.5,300)
							wave:blit(1.5,300)
							files.extract("/manual.zip", Version)
							message_wait("\n Todo listo para el modding \n")
							os.delay(2000)
						end
					else
						files.extract("/manual.zip", Version)
						if back then back:blit(0,0) end
						wave2:blit(1.5,300)
						wave:blit(1.5,300)
						message_wait("\n Todo listo para el modding \n")
						os.delay(2000)
					end
			else
				if back then back:blit(0,0) end
				wave2:blit(1.5,300)
				wave:blit(1.5,300)
				message_wait("\n Ha ocurrido un error al descomprimir la base de modding, saliendo. \n")
				os.delay(2000)
				os.exit()
			end
		else
			message_wait("\n No se ha podido descargar la base de modding, saliendo \n")
			os.delay(2000)
			os.exit()
		end
	else
		files.extract("base.zip", Version)
		if files.extract then
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
			files.rename(ruta.."Content.psarc", "Content.psarca")
			if not files.exists("manual.zip") then
				http.download("https://github.com/Varon9/vitcht/raw/main/manual.zip","/manual.zip")
				if http.download then
					if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
					files.extract("/manual.zip", Version)
					message_wait("\n Todo listo para el modding \n")
					os.delay(2000)
				end
			else
				if back then back:blit(0,0) end
				wave2:blit(1.5,300)
				wave:blit(1.5,300)
				files.extract("/manual.zip", Version)
				message_wait("\n Todo listo para el modding \n")
				os.delay(2000)
			end
		else
			message_wait("\n Ha ocurrido un error al descomprimir la base de modding, saliendo. \n")
			os.delay(2000)
			os.exit()
		end
	end
end
if not files.exists("resources") then
	http.download("https://github.com/Varon9/vitcht/raw/main/resources.xip","resources.zip")
	files.extract("resources.zip","/")
	files.delete("resources.zip")
	dofile("Downloads.lua")
end

	--Check Vitacheat
	_Vitacheat = false
	_Repatch = false
	reboot = false
	if tai.find("KERNEL", "vitacheat.skprx") and files.exists("ur0:tai/vitacheat.skprx") then

		--Cuando uses message_wait debes poner antes un back:blit ya que esa funcion tiene un flip interno y asi no parpadera en pantalla negra
		if back then back:blit(0,0) end
		wave2:blit(1.5,300)
		wave:blit(1.5,300)
		_Vitacheat = true
	else
		if back then back:blit(0,0) end
		wave2:blit(1.5,300)
		wave:blit(1.5,300)
		message_wait("\n No se ha encontrado Vitacheat instalado, procediendo con\n\n  su instalación... \n")
		os.delay(2000)
		http.download("https://github.com/Varon9/vitcht/raw/main/vitacheat.skprx","ur0:tai/vitacheat.skprx")
		http.download("https://github.com/Varon9/vitcht/raw/main/vitacheat.suprx","ux0:vitacheat/vitacheat.suprx")
		tai.put("KERNEL", "ur0:tai/vitacheat.skprx", 1)
		tai.sync()
		os.message("\n Vitacheat instalado con exito, \n\n será necesario reiniciar al finalizar la instalación. \n")
		reboot = true
	end

	--Check repatch
	_repatch = false
	if tai.find("KERNEL", "repatch.skprx") and files.exists("ur0:tai/repatch.skprx") or files.exists("vs0:tai/repatch.skprx") then
		if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
	else
		if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
		message_wait("\n No se ha podido detectar la instalación de rePatch, comenzando instalación. \n")
		os.delay(2000)
		http.download("https://github.com/dots-tb/rePatch-reDux0/releases/download/3.0/repatch.skprx","ur0:tai/repatch.skprx")
		tai.put("KERNEL", "ur0:tai/repatch.skprx", 1)
		tai.sync()
		os.message("\n rePatch instalado con exito, \n\n será necesario reiniciar al finalizar la instalación. \n")
		reboot = true
	end
	



function USA()
	local menu = nil
	if disableded then
	menu = {
		{ text = "Explorar Mods", desc = "El mod manager debe estar en MOD para poder instalar mods.",		funct = disabled},
		{ text = "Mod Toggler", desc = "Habilita/Deshabilita la instalación de mods.",	funct = disabled},
		{ text = "Desinstalar", desc = "Desinstala los mods de la carpeta repatch",	funct = disabled},
		{ text = "Salir", desc = "Salir del Mod Installer",	funct = EXIT}
	}
	else 
	menu = {
		{ text = "Explorar Mods", desc = "El mod manager debe estar en MOD para poder instalar mods.",		funct = MODS},
		{ text = "Mod Toggler", desc = "Habilita/Deshabilita la instalación de mods.",	funct = toggler},
		{ text = "Desinstalar", desc = "Desinstala los mods de la carpeta repatch",	funct = uninstall},
		{ text = "Salir", desc = "Salir del Mod Installer",	funct = EXIT}
	}
	end
	local scroll = newScroll(menu,#menu)
	_estado = nil
	usuario = os.nick()
	_color1 = nil
	_color2 = nil
	_color3 = nil
	_color4 = nil
	buttons.interval(10,6)
	_tristate = false
	

	while true do
		power.tick(0)
		buttons.read()
		if change or ReloadConfig then buttons.homepopup(0) else buttons.homepopup(1) end
		
		if back then back:blit(0,0) end
		--checks 

--end checks
	    if files.exists(ruta.."Content.psarc") or files.exists(Version.."Content/Content.psarc")then
			_estado = "Vanilla"
			_tristate = false
			_color3 = color.blue
			_color2 = color.white
			_color4 = color.cyan
			_color1 = color.green
		else
			if not files.exists(ruta.."Content.psarc") and not files.exists(Version.."Content/Content.psarc") then
			_estado = "Mod"
			_tristate = true
			_color1 = color.yellow
			_color2 = color.turquoise
			_color3 = color.green
			_color4 = color.orange
			end
		end 
		if snow then stars.render() end
		--local Img2 = image.load("images/x.png")
		--local Img3 = image.load("images/triangle.png")
		--image.blit(Img2,800,505)
		--image.blit(Img3,900,505)
		wave2:blit(1.1,300)
		wave:blit(1.5,300)
		draw.fillrect(0,0,960,50,color.orange:a(90))
		draw.rect(0,0,960,50,color.maroon)
		--draw.offsetgradrect(0,0,960,55,color.shine:a(85),color.shine:a(135),0x0,0x0,20)
		screen.print(480,20,"Stardew Valley Mod Installer",1.2,color.white,color.blue,__ACENTER)
		
		draw.fillrect(298,315,365,180,color.orange:a(150))
		draw.rect(298,315,365,180,color.maroon)
		
		draw.rect(1,515,958,30,color.orange)
		draw.fillrect(1,515,958,30,color.blue:a(90))
		
		
		draw.fillrect(1,412,120,24,color.cyan:a(140))
		draw.rect(1,412,120,24,color.blue)
		screen.print(4, 415, usuario,0.9,color.white,color.blue,__ALEFT)

		draw.fillrect(1,436,270,78,color.red:a(140))
		draw.rect(1,436,270,78,color.orange)
		draw.rect(1,436,270,26,color.orange)
		draw.rect(1,462,270,26,color.orange)
		draw.rect(1,488,270,26,color.orange)
		image.blit(erre,4,464)
		image.blit(erre,4,437)
		image.blit(leftd,77,463)
		image.blit(rightd,77,437)
		screen.print(110, 467, "Cambiar a EUR",0.9,color.white,color.maroon,__ALEFT)
		screen.print(60, 467, "+",1,color.white,color.maroon,__ALEFT)
		screen.print(110, 441, "Cambiar a USA",1,color.white,color.maroon,__ALEFT)
		screen.print(60, 441, "+",1,color.white,color.maroon,__ALEFT)
		image.blit(ELE,4,490)
		image.blit(square,77,489)
		screen.print(110, 493, "Actualizar installer",0.9,color.white,color.maroon,__ALEFT)
		screen.print(60, 492, "+",1,color.white,color.maroon,__ALEFT)
		
		screen.print(940,20,visual,1,color.white,color.green,__ARIGHT)
		draw.fillrect(830,427,183,87,color.red:a(140))
		draw.rect(830,427,183,87,color.orange)
		draw.rect(830,427,183,29,color.orange)
		draw.rect(830,456,183,29,color.orange)
		draw.rect(830,485,183,29,color.orange)
		image.blit(triangles,835,430)
		image.blit(circles,835,459)
		image.blit(x,835,487)
		screen.print(835, 435, "       Actualizar",0.9,color.white,color.maroon,__ALEFT)
		screen.print(835, 464, "       Volver",0.9,color.white,color.maroon,__ALEFT)
		screen.print(835, 493, "       Aceptar",0.9,color.white,color.maroon,__ALEFT)
		
		draw.fillrect(434,264,95,30,_color1:a(150))
		draw.rect(434,264,95,30,_color4)
		screen.print(480, 272,_estado,1.2,_color2,_color3,__ACENTER)
		
		draw.rect(298,315,365,45,color.maroon)
		draw.rect(298,360,365,45,color.maroon)
		draw.rect(298,405,365,45,color.maroon)
		draw.rect(298,450,365,45,color.maroon)
		local y = 330
		
		for i=scroll.ini, scroll.lim do
			if i == scroll.sel then 
			
			draw.offsetgradrect(298,y-15,365,45,color.shine:a(115),color.shine:a(49),0x0,color.shine:a(115),21)
				tam = 1.4
			draw.rect(298,y-15,365,45,color.maroon)
			else 
			tam = 1.1 
			end

			screen.print(480,y,menu[i].text,tam,color.white,color.maroon,__ACENTER)
			y += 45
			if screen.textwidth(menu[scroll.sel].desc) > 925 then
				xscroll = screen.print(xscroll, 520, menu[scroll.sel].desc,1,color.white,color.maroon,__SLEFT,935)
			else
				screen.print(480, 520, menu[scroll.sel].desc,1,color.white,color.maroon,__ACENTER)
			end
			
		end

		screen.flip()

		--Controls
		if buttons.up or buttons.analogly < -60 then scroll:up() end
		if buttons.down or buttons.analogly > 60 then scroll:down() end
		if buttons.released.triangle then
			if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
			message_wait("\n Actualizando script de mods... \n")
			os.delay(1000)
			http.download("https://github.com/Varon9/vitcht/raw/main/Downloads.lua","ux0:app/STARDEWMO/Downloads.lua")
			http.download("https://github.com/Varon9/vitcht/raw/main/Checks.lua","ux0:app/STARDEWMO/Checks.lua")
			http.download("https://github.com/Varon9/vitcht/raw/main/resources.xip","ux0:app/STARDEWMO/resources.zip")
			files.extract("resources.zip","/")
			if http.download and files.extract then
				if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
				message_wait("\n ¡Lista de descargas actualizada! \n")
				os.delay(1000)
			else
				if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
				message_wait("\n Ha ocurrido un error al actualizar... \n")
				os.delay(2000)
			end
			if not files.exists("manual.zip") then
				http.download("https://github.com/Varon9/vitcht/raw/main/manual.zip","manual.zip")
				files.extract("manual.zip", Version)
			else
				files.extract("manual.zip", Version)
			end
			files.delete("/mods/")
			
		dofile("Downloads.lua")
		end
		if _EUR and _USA then
		if buttons.held.r and buttons.held.right then
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
				message_wait("\n Cambiando a versión USA \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSE01235/"
				ruta = "ux0:app/PCSE01235/Content/"
				visual = "Versión USA"
				dofile("Checks.lua")
				dofile("funcion.lua")
				dofile("Downloads.lua")
		end
		if buttons.held.r and buttons.held.left then
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
				message_wait("\n Cambiando a versión EUR \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSB01226/"
				ruta = "ux0:app/PCSB01226/Content/"
				visual = "Versión EUR"
				dofile("Checks.lua")
				dofile("funcion.lua")
				dofile("Downloads.lua")
		end
		end
		if buttons.held.l and buttons.held.r and buttons.analogrx >=60 and buttons.analoglx <=-60 then
			if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
			message_wait("\n ¡Ahoy! ¿Un poco de ron, grumete? \n")
			os.delay(2000)
			dofile("shhh.lua")
			ahoy()
		end
		if buttons.held.l and buttons.held.square then 
			if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
				message_wait("\n Actualizando scripts del manager... \n")
				os.delay(1000)
				http.download("https://github.com/Varon9/vitcht/raw/main/Downloads.lua","ux0:app/STARDEWMO/Downloads.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/Checks.lua","ux0:app/STARDEWMO/Checks.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/commons.lua","ux0:app/STARDEWMO/commons.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/funcion.lua","ux0:app/STARDEWMO/funcion.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/script.lua","ux0:app/STARDEWMO/script.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/shhh.lua","ux0:app/STARDEWMO/shhh.lua")
				http.download("https://github.com/Varon9/vitcht/raw/main/resources.xip","ux0:app/STARDEWMO/resources.zip")
				files.extract("ux0:app/STARDEWMO/resources.zip","ux0:app/STARDEWMO/")
				if http.download and files.extract then
					if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
					message_wait("\n ¡Mod manager actualizado! \n")
					os.delay(1000)
				else
					if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
					message_wait("\n Ha ocurrido un error al actualizar... \n")
					os.delay(2000)
				end
				files.delete("/mods/")
		dofile("script.lua")
		end
		if buttons.accept then menu[scroll.sel].funct() end
		if buttons.cancel then EXIT() end


	end
  end



  
  
 function EXIT ()
	if back then back:blit(0,0) end
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
  message_wait("\n ♥ ¡Saliendo de aquí! ♥ \n")
					os.delay(1500)
  os.exit()
  end


USA()
		
os.exit()