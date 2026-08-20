function compareArray(a,b,s)
	for i = 1, s, 1 do
	  if not (a[i] == b[i]) then
	    return false
	  end
	end
    return true
end

function findSignature(signature, size, startAddr, stride, memoryRegion)
	memSize = memory.getmemorydomainsize(memoryRegion)
	for addr = startAddr, memSize - size, stride do
		data = memory.read_bytes_as_array(addr, signatureSize, memoryRegion)
		found = compareArray(data, signature, signatureSize)
		if found == true then return addr end
	end
	return nil
end

function applyCheats(memoryRegion)

	signature = { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }
	signatureSize = # (signature)
	signatureAddr = findSignature(signature, signatureSize, 0x0, 16, memoryRegion)
		
	if signatureAddr ~= nil then
		car1WearAddr = signatureAddr + 0xDA4
		car2WearAddr = signatureAddr + 0xDA8
		car3WearAddr = signatureAddr + 0xDAC
		car4WearAddr = signatureAddr + 0xDB0

		car1DamageAddr = signatureAddr + 0xDB4
		car2DamageAddr = signatureAddr + 0xDB8
		car3DamageAddr = signatureAddr + 0xDBC
		car4DamageAddr = signatureAddr + 0xDC0

		setupPointsAddr          = signatureAddr + 0xE00
		developmentPointsAddr    = signatureAddr + 0xE04
		researchPointsAddr       = signatureAddr + 0xE08
		enginePointsAddr         = signatureAddr + 0xE0C
		typePointsAddr           = signatureAddr + 0xE10
		fuelPointsAddr           = signatureAddr + 0xE14

		engineersUsedAddr        = signatureAddr - 0x06C

		memory.writebyte(car1WearAddr, 0, memoryRegion)
		memory.writebyte(car2WearAddr, 0, memoryRegion)
		memory.writebyte(car3WearAddr, 0, memoryRegion)
		memory.writebyte(car4WearAddr, 0, memoryRegion)

		memory.writebyte(car1DamageAddr, 0, memoryRegion)
		memory.writebyte(car2DamageAddr, 0, memoryRegion)
		memory.writebyte(car3DamageAddr, 0, memoryRegion)
		memory.writebyte(car4DamageAddr, 0, memoryRegion)
		
		memory.writebyte(setupPointsAddr       , 10, memoryRegion)
		memory.writebyte(developmentPointsAddr , 10, memoryRegion)
		memory.writebyte(researchPointsAddr    , 10, memoryRegion)
		memory.writebyte(enginePointsAddr      , 10, memoryRegion)
		memory.writebyte(typePointsAddr        , 10, memoryRegion) 
		memory.writebyte(fuelPointsAddr        , 10, memoryRegion)

		memory.writebyte(engineersUsedAddr     , 0, memoryRegion)

		return true
	end
		
	return false
end



memoryRegion = "Conventional Memory"
-- memoryRegion = "Extended Memory"


isWPressedCurrent = false
isWPressedPrev = false


while true do
	
	isWPressedCurrent = input.get()["W"] ~= nil

	if isWPressedCurrent == true and isWPressedPrev == false then
	    success = applyCheats("Conventional Memory")
		if success == false then
			success = applyCheats("Extended Memory")
		end
		if success == false then
			gui.addmessage("Could not apply cheats")
		end
	end

	isWPressedPrev = isWPressedCurrent

	emu.frameadvance()
end