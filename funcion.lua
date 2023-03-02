wave:begin("wave.png")--AQui te fallaba el wavw porque la png esta en la carpeta install y solo tenias wave:begin("wave.png")
color.loadpalette()






dofile("Downloads.lua")
dofile("Checks.lua")


function draw.offsetgradrect(x,y,sx,sy,c1,c2,c3,c4,offset)
	local sizey = sy/2
		draw.rect(x,y,sx,sizey + offset,c1,c2,c3,c4)
				draw.gradrect(x,y + sizey - offset,sx,sizey + offset,c3,c4,c1,c2)
end
function toggler()
	if not files.exists(ruta.."Content.psarc") and not files.exists(Version.."Content/Content.psarc") then
		if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Deshabilitando mods. \n")
		os.delay(1000)
		if files.exists(ruta.."Content.psarca") then
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			files.rename(ruta.."Content.psarca", "Content.psarc")
			files.rename(Version.."Content", "Contenta")
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Mods deshabilitados con éxito. \n")
			os.delay(2000)
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("No se ha encontrado el backup del juego,ndescargando base de emergencia. \n")
			os.delay(2000)
			files.rename(Version.."Content", "Contenta")
			http.download("https://github.com/Varon9/vitcht/files/10842340/Basepsarc.zip",Version.."Content/Content.psarc")
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Mods deshabilitados con éxito. \n")
			os.delay(2000)
		end
	else
		if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n Habilitando mods. \n")
		os.delay(2000)
		if files.exists(Version.."Contenta") and files.exists(Version.."Content") then
			files.delete(Version.."Content")
		end
		
		if files.exists(Version.."Contenta")then
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			files.rename(Version.."Contenta", "Content")
			if files.exists(ruta.."Content.psarc")then 
			files.rename(ruta.."Content.psarc","Content.psarca")
			end
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Mods habilitados con éxito. \n")
			os.delay(2000)
		else
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("No se ha encontrado instalación anterior de mods,\ndescargando base. \n")
			os.delay(2000)
			http.download("https://github.com/Varon9/vitcht/files/10832220/base.zip","ux0:tmp/base.zip")
			files.extract("ux0:tmp/base.zip", Version)
			if files.extract then
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				files.delete("ux0:tmp/base.zip")
				if files.exists(ruta.."Content.psarc")then 
				files.rename(ruta.."Content.psarc","Content.psarca")
				end
				if back then back:blit(0,0) end
			wave:blit(1.5,300)
				message_wait("\n Mods habilitados con éxito \n")
				os.delay(2000)
			end
		end
	end
		
end

function MODS()
if _tristate then
	  local VOLVER = function()
	USA()
	end
	

	local scroll = newScroll(menu,18)
	local xscroll = 10	
	buttons.interval(10,6)
	while true do
		power.tick(0)
		buttons.read()
		if change or ReloadConfig then buttons.homepopup(0) else buttons.homepopup(1) end

		if back then back:blit(0,0) end
		if snow then stars.render() end
		wave:blit(1.5,300)
		local descripcion = 500

		draw.fillrect(0,0,960,50,color.orange:a(90))
		draw.rect(0,0,960,50,color.maroon)
		--draw.offsetgradrect(0,0,960,55,color.shine:a(85),color.shine:a(135),0x0,0x0,20)
		screen.print(940,20,visual,1,color.white,color.green,__ARIGHT)
		screen.print(20,20,"Ruta: "..Version,1,color.white,color.blue,__ALEFT)
		
		--seccion mods
		draw.rect(1,50,296,464,color.maroon)
		draw.fillrect(1,50,296,464,color.orange:a(150))
		
		--descripcion breve pie
		draw.rect(1,514,958,30,color.green)
		draw.fillrect(1,514,958,30,color.blue:a(90))
	
		--Fondo descripcion avanzada
		draw.rect(300,255,659,257,color.green)
		draw.fillrect(300,255,659,257,color.cyan:a(120))
		local descripcionavanzada = menu[scroll.sel].moddesc
		if descripcionavanzada then
		screen.print(310, 290, menu[scroll.sel].moddesc,1,color.white,color.blue,__ALEFT)
		end

		screen.print(310, 265, menu[scroll.sel].text,1.2,color.white,color.blue,__ALEFT)
		
		local preview = menu[scroll.sel].imageprev
		
		draw.fillrect(467,51,355,201,color.shadow:a(120))
		draw.rect(467,51,355,201,color.red)
		if preview then 
			image.blit(menu[scroll.sel].imageprev,469,52)
		else
		screen.print(645, 140, "No hay vista previa disponible",1.1,color.white,color.blue,__ACENTER)
		end
		--Leyenda de botones
		draw.rect(775,487,183,25,color.green)
		draw.fillrect(775,487,183,25,color.red:a(140))
		image.blit(circles,875,488)
		image.blit(x,776,488)
		screen.print(776, 492, "     Aceptar       Volver",0.9,color.white,color.blue,__ALEFT)

		local y = 57
		for i=scroll.ini, scroll.lim do
			if i == scroll.sel then 
			if menu[scroll.sel].modcheck then
				draw.gradcircle(281,y+7,9,color.green:a(200),color.yellow:a(300),5)
			end
			draw.offsetgradrect(1,y-5,296,26,color.shine:a(115),color.shine:a(49),0x0,color.shine:a(115),13)
				tam = 1.1
			draw.rect(1,y-5,296,26,color.maroon)
			else tam = 1 end

			screen.print(10,y,menu[i].text,tam,color.white,color.cyan,__ALEFT)
			y += 25
			if screen.textwidth(menu[scroll.sel].desc) > 925 then
			xscroll = screen.print(xscroll, 520, menu[scroll.sel].desc,1,color.white,color.blue,__SLEFT,935)
		else
			screen.print(480, 520, menu[scroll.sel].desc,1,color.white,color.blue,__ACENTER)
		end
				
		end

		screen.flip()

		--Controls
		if buttons.up or buttons.analogly < -60 then scroll:up() end
		if buttons.down or buttons.analogly > 60 then scroll:down() end
		
		if buttons.accept then menu[scroll.sel].funct() end
		if buttons.cancel then USA() end


	end

 else
 if back then back:blit(0,0) end
		wave:blit(1.5,300)
		message_wait("\n El mod manager está en modo 'vanilla', cambiando a modo 'Mod' \n")
		os.delay(2000)
		toggler()
end
end



function uninstall()
if files.exists(ruta.."Content.psarca") then
	if back then back:blit(0,0) end
	wave:blit(1.5,300)
	message_wait("Desinstalando mods, por favor, espera... \n")
	os.delay(2000)
	files.rename(ruta.."Content.psarca", "Content.psarc")
	files.delete(Version.."Content")
	files.delete(Version.."Contenta")
	files.delete(Version.."checks")
	if back then back:blit(0,0) end
	wave:blit(1.5,300)
	message_wait("Mods desinstalados con éxito. \n")
	os.delay(2000)
	dofile("funcion.lua")
else
	if not files.exists(ruta.."Content.psarc") then
	if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("No se ha encontrado el backup del juego,\ndescargando base de emergencia. \n")
			os.delay(2000)
			files.delete(Version.."Content")
			files.delete(Version.."Contenta")
			files.delete(Version.."checks")
			http.download("https://github.com/Varon9/vitcht/files/10842340/Basepsarc.zip",Version.."Content/Content.psarc")
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			message_wait("\n Mods desinstalados con éxito. \n")
			os.delay(2000)
	else
	if back then back:blit(0,0) end
	wave:blit(1.5,300)
	message_wait("Desinstalando mods, por favor, espera... \n")
	os.delay(2000)
	files.delete(Version.."Content")
	files.delete(Version.."Contenta")
	if back then back:blit(0,0) end
	wave:blit(1.5,300)
	message_wait("\n Mods desinstalados con éxito. \n")
	os.delay(2000)
	dofile("funcion.lua")
	end
end
end