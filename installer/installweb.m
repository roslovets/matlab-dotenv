TEMP_INST.uuid = 'xxx';
TEMP_INST.url = matlab.addons.repositories.FileExchangeRepository().getAddonURL(TEMP_INST.uuid);
TEMP_INST.fname = websave(tempname + ".mltbx", TEMP_INST.url);
open(TEMP_INST.fname);
clear TEMP_INST