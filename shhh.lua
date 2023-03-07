__kernel = nil
__user = nil
if not __kernel then
	if files.exists("modules/kernel.skprx") then
		if os.requirek("modules/kernel.skprx")==1 then __kernel = true end
	else
		if os.requirek("ux0:VITASHELL/module/kernel.skprx")==1 then	
			__kernel = true 
		end
	end
end

if not __user then
	if files.exists("modules/user.suprx") then
		if os.requireu("modules/user.suprx")==1 then __user = true end
	else
		if os.requireu("ux0:VITASHELL/module/user.suprx")==1 then 
			__user = true 
		end
	end
end
local function EURINST ()
	if back then back:blit(0,0) end
	wave2:blit(1.5,300)
	wave:blit(1.5,300)
			message_wait("\n Descargando versión EUR... \n")
				os.delay(2000)
				http.download("http://www.mediafire.com/file/0jspk923eswgr7u/eur.zip/file","tmp")
				local url = mf.getDirectLink ("tmp")
					if url.link then 
						http.download(url.link,"ux0:temp/eur.zip")
						files.extract("ux0:temp/eur.zip","ux0:app/")
						if files.extract then
							files.delete("ux0:temp/eur.zip")
							if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
							game.refresh("ux0:app/PCSB01226")
							if game.refresh==1 then
								if back then back:blit(0,0) end
								wave:blit(2)
								message_wait("\n Instalada la versión EUR con éxito, ¡Yay!... \n")
								os.delay(2000)
							end
						
						else
							if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
							message_wait("\n Ha fallado la extracción... \n")
							os.delay(2000)
						end
					else 
						if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
						message_wait("\n Nope, no va... \n")
						os.delay(2000)
					end
end
local function USAINST ()
	if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
				message_wait("\n Descargando versión USA... \n")
					os.delay(2000)
					http.download("http://www.mediafire.com/file/7204nww8rbemp94/usa.zip/file","tmp")
					local url = mf.getDirectLink ("tmp")
						if url.link then 
							http.download(url.link,"ux0:temp/usa.zip")
							files.extract("ux0:temp/usa.zip","ux0:app/")
							if files.extract then
								files.delete("ux0:temp/usa.zip")
								if back then back:blit(0,0) end
								wave2:blit(1.5,300)
								wave:blit(1.5,300)
								game.refresh("ux0:app/PCSE01235")
								if game.refresh==1 then
									if back then back:blit(0,0) end
									wave2:blit(1.5,300)
									wave:blit(1.5,300)
									message_wait("\n Instalada la versión USA con éxito, ¡Yay!... \n")
									os.delay(2000)
								end
							
							else
								if back then back:blit(0,0) end
								wave2:blit(1.5,300)
								wave:blit(1.5,300)
								message_wait("\n Ha fallado la extracción... \n")
								os.delay(2000)
							end
						else 
							message_wait("\n Nope, no va... \n")
							os.delay(2000)
						end
	end

function ahoy ()
local menu = {
		{ text = "Versión EUR", desc = "Descarga e instala la versión EUR PCSB01226.",		funct = EURINST},
		{ text = "Versión USA", desc = "Descarga e instala la versión USA PCSE01235.",	funct = USAINST},
		{ text = "Volver", desc = "Volver al menú principal",	funct = EXIT}
	}
	local scroll = newScroll(menu,#menu)
buttons.interval(10,6)

while true do
		power.tick(0)
		buttons.read()
		if change or ReloadConfig then buttons.homepopup(0) else buttons.homepopup(1) end
		
		if back then back:blit(0,0) end
					wave2:blit(1.5,300)
					wave:blit(1.5,300)
		draw.fillrect(0,0,960,50,color.orange:a(90))
		draw.rect(0,0,960,50,color.maroon)
		--draw.offsetgradrect(0,0,960,55,color.shine:a(85),color.shine:a(135),0x0,0x0,20)
		screen.print(480,20,"Stardew Valley ¡Ahoy! Installer",1.2,color.white,color.blue,__ACENTER)
		
		draw.fillrect(298,315,365,135,color.orange:a(150))
		draw.rect(298,315,365,135,color.maroon)
		
		draw.rect(1,515,958,30,color.orange)
		draw.fillrect(1,515,958,30,color.blue:a(90))
		
		
		draw.fillrect(830,427,183,87,color.red:a(140))
		draw.rect(830,427,183,87,color.orange)

		image.blit(circles,835,459)
		image.blit(x,835,487)

		screen.print(835, 464, "       Volver",0.9,color.white,color.blue,__ALEFT)
		screen.print(835, 492, "       Aceptar",0.9,color.white,color.blue,__ALEFT)
		

		
		draw.rect(298,315,365,45,color.maroon)
		draw.rect(298,360,365,45,color.maroon)
		draw.rect(298,405,365,45,color.maroon)
		local y = 330
		
		for i=scroll.ini, scroll.lim do
			if i == scroll.sel then 
			
			draw.offsetgradrect(298,y-15,365,45,color.shine:a(115),color.shine:a(49),0x0,color.shine:a(115),21)
				tam = 1.4
			draw.rect(298,y-15,365,45,color.maroon)
			else 
			tam = 1.1 
			end

			screen.print(480,y,menu[i].text,tam,color.white,color.blue,__ACENTER)
			y += 45
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
  end
