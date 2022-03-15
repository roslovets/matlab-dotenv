TEMP_INST.uuid = "9ad54b0f-ce88-4643-885f-c00c79eb4f2f";
TEMP_INST.url = matlab.addons.repositories.FileExchangeRepository().getAddonURL(TEMP_INST.uuid);
TEMP_INST.fname = websave(tempname + ".mltbx", TEMP_INST.url);
open(TEMP_INST.fname);
clear TEMP_INST