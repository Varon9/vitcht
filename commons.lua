--[[ 
	Easy Patch
	
	Licensed by GNU General Public License v3.0
	
	Designed By:
	- DevDavisNunez (https://twitter.com/DevDavisNunez).
	
	Version 1.0 at 11:30 am - 27/09/18
	Version 2.0 gdljjrod
	
	
	
]]
local messagewait = image.load("images/messagewait.png")
function message_wait(message)
	local mge = (message or "Espere por favor ...")
	local titlew = string.format(mge)
	local w,h = screen.textwidth(titlew,1) + 30,85
	local x,y = 10 - (w/2), 320 - (h/2)
	image.blit(messagewait,0,298)
	--[[draw.fillrect(x,y,w,h,color.shadow:a(100))--color.shine:a(65))
	draw.rect(x,y,w,h,color.white)]]
	
		screen.print(19,322, titlew,1,color.white,color.blue,__ALEFT)
		
	screen.flip()
end



		


function onAppInstall(step, size_argv, written, file, totalsize, totalwritten)
	if back then back:blit(0,0) end
		draw.fillrect(0,0,960,35,color.black)
			screen.print(10,10, "Instalando...")
		screen.flip()
	return 10 -- Ok code
end



--[[
function onAppInstall(step, size_argv, written, file, totalsize, totalwritten)

    if step == 1 then -- Only msg of state
    	if back then back:blit(0,0) end
		draw.fillrect(0,0,960,35,color.black)
		screen.print(10,10,"Preparando archivos...")
		screen.flip()

	elseif step == 4 then -- Promote o install :P
	
		if back then back:blit(0,0) end
		draw.fillrect(0,0,960,35,color.black)
			screen.print(10,10, "Instalando GTA San Andreas  :D")
		screen.flip()
	end

end
]]
--Pre-requisitos
APP_VERSION_MAJOR = 0x01
APP_VERSION_MINOR = 0x00
dofile("lib/tai.lua")
tai.load()
dofile("lib/mf.lua")
dofile("lib/wave.lua")
wave = newWave()
wave:begin("wave.png")--AQui te fallaba el wavw porque la png esta en la carpeta install y solo tenias wave:begin("wave.png")
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



_EUR = false
_USA = false

--Check if the game and data exists
if game.exists("PCSE01235") then _USA = true end
if game.exists("PCSB01226") then _EUR = true end

Version = nil
visual = nil
ruta = nil

if not _USA and not _EUR then
	if back then back:blit(0,0) end
	wave:blit(1.5,300)
	message_wait("\n No se ha encontrado ninguna versión del juego instalada. Saliendo... \n")
	os.delay(2000)
	
	else
	if _USA and _EUR then
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			if os.dialog("\n\n Se han encontrado las versiones EUR y USA instaladas\n¿Con cual quieres trabajar?\n\n\n X - Versión EUR (PCSB01226)\n O - Versión USA (PCSE01235)", "Selección de versión", __DIALOG_MODE_OK_CANCEL) == true then
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				message_wait("\n Trabajando sobre la versión EUR (PCSB01226). \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSB01226/"
				ruta = "ux0:app/PCSB01226/Content/"
				visual = "Versión EUR"
			else
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				message_wait("\n Trabajando sobre la versión USA (PCSE01235). \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSE01235/"
				ruta = "ux0:app/PCSE01235/Content/"
				visual = "Versión USA"
			end
		else
			if _EUR then
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				message_wait("\n Se ha encontrado la versión EUR instalada.\nTrabajando sobre ella automáticamente \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSB01226/"
				ruta = "ux0:app/PCSB01226/Content/"
				visual = "Versión EUR"
			else
				if _USA then
				if back then back:blit(0,0) end
				wave:blit(1.5,300)
				message_wait("\n Se ha encontrado la versión USA instalada.\nTrabajando sobre ella automáticamente \n")
				os.delay(2000)
				Version = "ux0:rePatch/PCSE01235/"
				ruta = "ux0:app/PCSE01235/Content/"
				visual = "Versión USA"
				end
			end
		end
	end	
	
if files.exists(Version.."Content") and files.exists(ruta.."Content.psarc")then
		files.rename(ruta.."Content.psarc","Content.psarca")
		end
if files.exists(ruta.."Content.psarc") and not files.exists(Version.."Contenta") then
	http.download("https://github.com/Varon9/vitcht/files/10832220/base.zip","ux0:tmp/base.zip")
	if http.download then
		files.extract("ux0:tmp/base.zip", Version)
		if files.extract then
			if back then back:blit(0,0) end
			wave:blit(1.5,300)
			files.delete("ux0:tmp/base.zip")
			files.rename(ruta.."Content.psarc", "Content.psarca")
			message_wait("\n Todo listo para el modding \n")
			os.delay(2000)
		else
			message_wait("\n Ha ocurrido un error al descomprimir la base de modding, saliendo. \n")
				os.delay(2000)
				os.exit()
		end
	else
		message_wait("\n No se ha podido descargar la base de modding, saliendo \n")
				os.delay(2000)
				os.exit()
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