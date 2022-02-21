#include <cstring>
#include <iostream>
#include "salsa.hpp"
#include "salsaText.hpp"

std::unordered_map<std::string, SalsaRead> read_map = {
    {"mainscript.salsa", &salsa_maintext_read},
    {"misctext.salsa", &salsa_misctext_read},
};

std::unordered_map<std::string, SalsaWrite> write_map = {
    {"mainscript.salsa", &salsa_maintext_write},
    {"misctext.salsa", &salsa_misctext_write},
};

int main(int argc, char** argv) {
    std::vector<const char*> args{};

    auto printusage = [&]() {
        std::cerr << "Usage: [-xb] " << args[0] << " ..." << std::endl;
        std::cerr << " -x, --extract    <rom_path> <dest_path>" << std::endl;
        std::cerr << " -b, --build      <src_path> <dest_path>" << std::endl;
        exit(1);
    };

    for (int i = 0; i < argc; ++i) {
        args.emplace_back(argv[i]);
    }

    if (args.size() != 4) {
        printusage();
    }

    bool extract = args[1] == std::string("-x") || args[1] == std::string("--extract");
    bool build = args[1] == std::string("-b") || args[1] == std::string("--build");
    const char* src_path = args[2];
    const char* dest_path = args[3];

    if (!(extract || build)) {
        printusage();
    }

    // file content type is determined by name
    // this makes it a lot easier for the build process
    if (extract) {
        SalsaStream src(src_path);
        SalsaPath dest(dest_path);

        const char* dest_filename = std::strrchr(dest_path, '/');
        if (dest_filename == nullptr) {
            dest_filename = dest_path;
        } else {
            ++dest_filename;
        }
        if (read_map.find(dest_filename) == read_map.end()) {
            std::cerr << "Unknown file type: " << dest_filename << std::endl;
            exit(1);
        }
        read_map[dest_filename](src, dest);
    } else {
        SalsaPath src(src_path);
        SalsaStream dest(dest_path);

        const char* src_filename = std::strrchr(src_path, '/');
        if (src_filename == nullptr) {
            src_filename = src_path;
        } else {
            ++src_filename;
        }
        if (write_map.find(src_filename) == write_map.end()) {
            std::cerr << "Unknown file type: " << src_filename << std::endl;
            exit(1);
        }
        write_map[src_filename](src, dest);
    }
    return 0;
}
