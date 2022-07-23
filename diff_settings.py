def apply(config, args):
    config["baseimg"] = "baserom.gba"
    config["myimg"] = "mother3.gba"
    config["mapfile"] = "mother3.map"
    config["source_directories"] = ["src"]
    # config["show_line_numbers_default"] = True
    config["arch"] = "thumb"
    config["map_format"] = "agbcc"
    # config["mw_build_dir"] = "build/" # only needed for mw map format
    # config["makeflags"] = []
    config["objdump_executable"] = "arm-none-eabi-objdump"
