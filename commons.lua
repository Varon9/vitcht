APP_VERSION_MAJOR = 0x01
APP_VERSION_MINOR = 0x00
dofile("lib/tai.lua")
tai.load()
dofile("lib/mf.lua")
dofile("lib/wave.lua")
wave2 = newWave2()
wave = newWave()
wave2:begin("wave2.png")
wave:begin("wave.png")
color.loadpalette()
mp3="BGM.mp3"
back = image.load("bg.png")
if files.exists(mp3) then
	snd = sound.load(mp3,1)
end
if snd then
	sound.loop(snd)
	snd:play(1)
end
local splash = image.load("splash.png")
if splash then
	for i=255, 0, -2.5 do
		splash:blit(0,0, i)
		screen.flip()
	end
end


function draw.offsetgradrect(x,y,sx,sy,c1,c2,c3,c4,offset)
	local sizey = sy/2
		draw.rect(x,y,sx,sizey + offset,c1,c2,c3,c4)
				draw.gradrect(x,y + sizey - offset,sx,sizey + offset,c3,c4,c1,c2)
end
function EXIT ()
 if back then back:blit(0,0) end
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
  message_wait("\n ♥ ¡Saliendo de aquí! ♥ \n")
					os.delay(3000)
  os.exit()
  end
 
 function disabled ()
 if back then back:blit(0,0) end
 wave2:blit(1.5,300)
 wave:blit(1.5,300)
  message_wait("\ndeshabiLitado debido a que no se ha encontRado\nnInguna versión del juego instalaDa\n")
					os.delay(3000)
end
  
local messagewait = image.load("images/messagewait.png")
function message_wait(message)
	local mge = (message or "Espere por favor ...")
	local titlew = string.format(mge)
	local w,h = screen.textwidth(titlew,1) + 30,85
	local x,y = 10 - (w/2), 320 - (h/2)
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
	image.blit(messagewait,0,298)
	--[[draw.fillrect(x,y,w,h,color.shadow:a(100))--color.shine:a(65))
	draw.rect(x,y,w,h,color.white)]]
	
		screen.print(19,322, titlew,1,color.white,color.maroon,__ALEFT)
		
	screen.flip()
end

function onAppInstall(step, size_argv, written, file, totalsize, totalwritten)
	if back then back:blit(0,0) end
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
		draw.fillrect(0,0,960,35,color.black)
			screen.print(10,10, "Instalando...")
		screen.flip()
	return 10 -- Ok code
end

--Pre-requisitos



_EUR = false
_USA = false
--Check if the game and data exists
if game.exists("PCSE01235") then _USA = true end
if game.exists("PCSB01226") then _EUR = true end

Version = nil
visual = nil
ruta = nil
disableded = false 
if not _USA and not _EUR then
	if back then back:blit(0,0) end
		wave2:blit(1.5,300)
		wave:blit(1.5,300)
		if os.dialog("\n\nNo se ha encontrado ninguna versión del juego instalada\n¿Quieres continuar? No podrás instalar mods...\n\n\n X - Continuar\n O - Salir", "¿Continuar?", __DIALOG_MODE_OK_CANCEL) == true then
			Version = "Not found"
			ruta = "Not found"
			visual = "Not found"	
			disableded = true	
				
		else
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
			message_wait("\n Saliendo. \n")
			os.delay(2000)
			os.exit()
		end
else
	if _USA and _EUR then
		if back then back:blit(0,0) end
		wave2:blit(1.5,300)
		wave:blit(1.5,300)
		if os.dialog("\n\nSe han encontrado las versiones EUR y USA instaladas\n¿Con cual quieres trabajar?\n\n\n X - Versión EUR (PCSB01226)\n O - Versión USA (PCSE01235)", "Selección de versión", __DIALOG_MODE_OK_CANCEL) == true then
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
			message_wait("\n Trabajando sobre la versión EUR (PCSB01226). \n")
			os.delay(2000)
			Version = "ux0:rePatch/PCSB01226/"
			ruta = "ux0:app/PCSB01226/Content/"
			visual = "Versión EUR"
		else
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
			message_wait("\nTrabajando sobre la versión USA (PCSE01235). \n")
			os.delay(2000)
			Version = "ux0:rePatch/PCSE01235/"
			ruta = "ux0:app/PCSE01235/Content/"
			visual = "Versión USA"
		end
	else
		if _EUR then
			if back then back:blit(0,0) end
			wave2:blit(1.5,300)
			wave:blit(1.5,300)
			message_wait("\nSe ha encontrado la versión EUR instalada.\nTrabajando sobre ella automáticamente \n")
			os.delay(2000)
			Version = "ux0:rePatch/PCSB01226/"
			ruta = "ux0:app/PCSB01226/Content/"
			visual = "Versión EUR"
		else
			if _USA then
				if back then back:blit(0,0) end
				wave2:blit(1.5,300)
				wave:blit(1.5,300)
				message_wait("\nSe ha encontrado la versión USA instalada.\nTrabajando sobre ella automáticamente \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSE01235/"
				ruta = "ux0:app/PCSE01235/Content/"
				visual = "Versión USA"
			end
		end
	end
end






function newScroll(a,b,c)

	local obj = {ini=1,sel=1,lim=1,maxim=0,minim=0}

	function obj:set(tab,mxn,modemintomin) -- Set a obj scroll
		obj.ini,obj.sel,obj.lim,obj.maxim,obj.minim, obj.mxn = 1,1,1,1,1,mxn
		if(type(tab)=="number")then
			if tab > mxn then obj.lim=mxn else obj.lim=tab end
			obj.maxim = tab
		else
			if #tab > mxn then obj.lim=mxn else obj.lim=#tab end
			obj.maxim = #tab
		end
		if modemintomin then obj.minim = obj.lim end
	end

	function obj:max(mx)
		obj.maxim = #mx
	end

	function obj:up()
		if obj.sel>obj.ini then obj.sel=obj.sel-1 return true
		elseif obj.ini-1>=obj.minim then
			obj.ini,obj.sel,obj.lim=obj.ini-1,obj.sel-1,obj.lim-1
			return true
		end
	end

	function obj:down()
		if obj.sel<obj.lim then obj.sel=obj.sel+1 return true
		elseif obj.lim+1<=obj.maxim then
			obj.ini,obj.sel,obj.lim=obj.ini+1,obj.sel+1,obj.lim+1
			return true
		end
	end

	function obj:delete(tab)
		table.remove(tab,obj.sel)

		if obj.ini == 1 then
			if obj.sel == obj.maxim then obj.sel-=1 end
			if #tab > obj.mxn then obj.lim = obj.mxn else obj.lim = #tab end
		else
			if obj.sel == obj.maxim then
				obj.sel,obj.ini,obj.lim = obj.sel-1,obj.ini-1,obj.lim-1
			else
				if (#tab - obj.ini) + 1 < obj.mxn then obj.lim,obj.ini = obj.lim-1,obj.ini-1 end
			end
		end
		obj.maxim = #tab
	end

	if a and b then
		obj:set(a,b,c)
	end

	return obj

end