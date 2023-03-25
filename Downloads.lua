--global
local resource1 = nil
local resource2 = nil
local resource3 = nil
local concrete = nil
local repatchmanual = Version.."sce_sys/manual/03/"
local checka = nil
--endglobal
wave:begin("wave.png")--AQui te fallaba el wavw porque la png esta en la carpeta install y solo tenias wave:begin("wave.png")
color.loadpalette()
--images

nudebachelorsprev = image.load("previews/nudebachelorsprev.png")
pamwakeupprev = image.load("previews/pamwakeupprev.png")
hornybachelorsprev = image.load("previews/hornybachelorsprev.png")
nudefarmermuscledprev = image.load("previews/nudefarmermuscle.png")
gayrdewprev = image.load("previews/gayrdewvalley.png")
EASYFISHINGPREV = image.load("previews/easyfishing.png")
DEVIOUSFURNITUREPREV = image.load("previews/deviousfurniture.png")
AMBROSIAPREV = image.load("previews/ambrosia.png")
TRANSLUCENTUIPREV = image.load("previews/translucentui.png")
OPENTHEDOORPREV = image.load("previews/openthedoor.png")
HOTBARNPREV = image.load("previews/hotbarn.png")
EXTRADATABLEPREV = image.load("previews/extradatableprev.png")


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
	local name = "NUDEBACHELORS"
	local URL = "https://github.com/Varon9/vitcht/files/11069428/NDBACHELORS.zip"
	checka = Nudebachelors_check
	local routedfilename = "/mods/NUDEBACHELORS.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					Nudebachelors_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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
	
end

function NUDEFARMER()
	local name = "NUDEFARMER"
	local URL = "https://github.com/Varon9/vitcht/files/11069432/NFARMERMUSCLE.zip"
	checka = Nudefarmer_check
	local routedfilename = "/mods/NUDEFARMER.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					Nudefarmer_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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

function HORNYBACHELORS()
	local name = "HornyBachelors"
	local URL = "https://github.com/Varon9/vitcht/files/11069426/HornyBachel.zip"
	checka = HornyBachelors_check
	local routedfilename = "/mods/HornyBachelors.zip"
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					HornyBachelors_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual(checka)
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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

function EASYFISHING()
	local name = "EASYFISHING"
	local URL = "https://github.com/Varon9/vitcht/files/10934334/EASYFISHING.zip"
	local routedfilename = "/mods/EASYFISHING.zip"
	checka = EASYFISHING_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					EASYFISHING_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							EASYFISHING_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							EASYFISHING_check = true
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
	local name = "PAMWAKEUP"
	local URL = "https://github.com/Varon9/vitcht/files/10834385/PAMWAKEUP.zip"
	local routedfilename = "/mods/PAMWAKEUP.zip"
	checka = PAMWAKEUP_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					PAMWAKEUP_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							PAMWAKEUP_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							PAMWAKEUP_check = true
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

function DEVIOUSFURNITURE()
	local routedfilename = "/mods/DEVIOUSFURNITURE.zip"
	local name = "DEVIOUSFURNITURE"
	local URL = "https://github.com/Varon9/vitcht/files/10951344/DEVIOUSFURNITURE.zip"
	checka = DEVIOUSFURNITURE_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					DEVIOUSFURNITURE_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							DEVIOUSFURNITURE_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							DEVIOUSFURNITURE_check = true
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
	local name = "GAYRDEWVALLEY"
	local URL = "https://github.com/Varon9/vitcht/files/10892298/GAYRDEWVALLEY.zip"
	local routedfilename = "/mods/GAYRDEWVALLEY.zip"
	checka = GAYRDEWVALLEY_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					GAYRDEWVALLEY_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
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

function AMBROSIA()
	local name = "AMBROSIA"
	local URL = "https://github.com/Varon9/vitcht/files/10982185/AMBROSIA.zip"
	local routedfilename = "/mods/AMBROSIA.zip"
	checka = AMBROSIA_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					AMBROSIA_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							AMBROSIA_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							AMBROSIA_check = true
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

function TRANSLUCENTUI()
	local name = "TRANSLUCENTUI"
	local URL = "https://github.com/Varon9/vitcht/files/10961725/TRANSLUCENTUI.zip"
	local routedfilename = "/mods/TRANSLUCENTUI.zip"
	checka = TRANSLUCENTUI_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					TRANSLUCENTUI_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							TRANSLUCENTUI_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							TRANSLUCENTUI_check = true
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

function OPENTHEDOOR()
	local name = "OPENTHEDOOR"
	local URL = "https://github.com/Varon9/vitcht/files/10961497/OPENTHEDOOR.zip"
	local routedfilename = "/mods/OPENTHEDOOR.zip"
	checka = OPENTHEDOOR_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					OPENTHEDOOR_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							OPENTHEDOOR_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							OPENTHEDOOR_check = true
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

function HOTBARN()
	local name = "HOTBARN"
	local URL = "https://github.com/Varon9/vitcht/files/10982362/HOTBARN.zip"
	local routedfilename = "/mods/HOTBARN.zip"
	checka = HOTBARN_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					HOTBARN_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							HOTBARN_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							HOTBARN_check = true
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

function EXTRADATABLE()
	if not Nudebachelors_check and not HornyBachelors_check then
		local name = "EXTRADATABLE"
		local URL = "https://github.com/Varon9/vitcht/files/11069424/EXTRADATABLE.zip"
		local routedfilename = "/mods/EXTRADATABLE.zip"
	end
	if Nudebachelors_check or HornyBachelors_check then
		local name = "EXTRADATABLEN"
		local URL = "(https://github.com/Varon9/vitcht/files/11069425/EXTRADATABLEN.zip"
		local routedfilename = "/mods/EXTRADATABLEN.zip"	
	end
	checka = EXTRADATABLE_check
	if files.exists(routedfilename) then
		files.extract(routedfilename,Version)
			if files.extract then
				if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Instalado con éxito.\n")
					os.delay(1000)
					files.mkdir(Version.."/checks/"..name)
					concrete = "/resources/"..name.."/"
					resource1 = "000.png"
					resource2 = "001.png"
					resource3 = "002.png"
					manual()
					EXTRADATABLE_check = true
					dofile("funcion.lua")
					MODS()
			else
					if back then back:blit(0,0) end
					wave:blit(1.5,300)
					message_wait("\n Comenzando la descarga... \n")
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							EXTRADATABLE_check = true
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
					os.delay(1000)
					http.download(URL,routedfilename)
					if http.download then
						files.extract(routedfilename,Version)
						if files.extract then
							if back then back:blit(0,0) end
							wave:blit(1.5,300)
							message_wait("\n Instalado con éxito.\n")
							os.delay(1000)
							files.mkdir(Version.."/checks/"..name)
							concrete = "/resources/"..name.."/"
							resource1 = "000.png"
							resource2 = "001.png"
							resource3 = "002.png"
							manual()
							EXTRADATABLE_check = true
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
		{ text = "Pam, despierta, coño!", desc = "Cambia la hora a la que Pam va al bus", imageprev = pamwakeupprev, modcheck = PAMWAKEUP_check, moddesc = "Archivo de tarea modificado para que Pam esté en el autobús\na las 08:00.",		funct = PAMWAKEUP  },
		{ text = "Gayrdew Valley", desc = "Modifica el menú principal", imageprev = gayrdewprev, modcheck = GAYRDEWVALLEY_check, moddesc = "Modifica el menú principal:\n\n-Nombre del juego\n\n-Botones de Nueva partida y Cargar partida\n\n-Logo de Concerned Ape al hacerle click en la cara.",	funct = GAYRDEWVALLEY},
		{ text = "Easy Fishing", desc = "¿Te rompe las bolas el mini juego de pesca?", imageprev = EASYFISHINGPREV, modcheck = EASYFISHING_check, moddesc = "Si tú, al igual que polo, estás hart@ del minijuego de pesca\naquí tienes la solución:\n\n¡Convierte a todos los peces en zombis y deja de cagarte en\ndios cada vez que se te escapan!\n\nSe han modificado TODOS los peces para que a penas se muevan\nen el mini juego",	funct = EASYFISHING},
		{ text = "Devious Furniture", desc = "Dale un toque picante al mobiliario", imageprev = DEVIOUSFURNITUREPREV, modcheck = DEVIOUSFURNITURE_check, moddesc = "Añade un toque picante al juego sustituyendo el\nmobiliario del juego por escenas explícitas.\n\n-Muebles\n\n-Cuadros\n\n-Estatuas\n\n-¡Hasta los espantapájaros!",	funct = DEVIOUSFURNITURE},
		{ text = "Ambrosía Divina", desc = "¿Quieres sabes que se siente al comer como un dios?", imageprev = AMBROSIAPREV, modcheck = AMBROSIA_check, moddesc = "Sustituye el Almuerzo de la suerte por algo más...divíno.\nPrueba la comida de un dios, y siéntete como tal durante un día.\n\n-Velocidad\n\n-Magnetismo\n\n-Pesca\n\n-Y un largo etc.",	funct = AMBROSIA},
		{ text = "Translucent UI", desc = "¿Te molesta la interfaz del juego?", imageprev = TRANSLUCENTUIPREV, modcheck = TRANSLUCENTUI_check, moddesc = "Reduce drásticamente la opacidad de la interfaz de usuario.\n\n-Las barras de vida y energía no se pueden editar.\n\n-Toda la zona del reloj, dinero, etc menos invasivas.\n\n-Opacidad de la barra de herramientas reducida al 65%",	funct = TRANSLUCENTUI},
		{ text = "¡Abreme la puerta!", desc = "¿Qué somos, amish?", imageprev = OPENTHEDOORPREV, modcheck = OPENTHEDOOR_check, moddesc = "¿Cada vez que te paseas por pueblo pelícano, sientes que vives\n en una comuna amish? Con este mod podrás violar la intimidad\n de estos amish...\n\n-Todos los edificios del juego abren de 06:00 a 00:00.",	funct = OPENTHEDOOR},
		{ text = "Hot barn", desc = "Dale cariño a tus animalitos", imageprev = HOTBARNPREV, modcheck = HOTBARN_check, moddesc = "¿Te aburren las vaquitas? ¿Los cerditos? ¿Las cabritas? ¿todo?\n¿Preferirías cuidar de tus congéneres? ¡Con este mod, puedes!\nSustituye a tus animalitos por hombres 7w7r:\n\n-Cerdos\n\n-cabras\n\n-Vacas\n\n-¡Hasta el gato!\n\nEl perro no ha sido sustituido",	funct = HOTBARN},
		{ text = "Extra Datable Bachelors", desc = "¿Se te hacen pocos?", imageprev = EXTRADATABLEPREV, modcheck = EXTRADATABLE_check, moddesc = "¿Se te hacen pocos los candidatos a tu amor?\n¿Crees que Kent no es feliz con Jodi?\n¿O que Willy tambien merece amor?\nHabilita para noviazgo y boda:\n\n-Kent    -Gus\n\n-Clint    -Demetrius\n\n-Willy    -Rasmodius",	funct = EXTRADATABLE}
		
		
	}