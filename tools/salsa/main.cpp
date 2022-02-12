#include <iostream>
#include "salsa.hpp"
#include "salsa_text.hpp"

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

    if (extract) {
        SalsaText::read_binary(src_path, dest_path);
    } else {
        SalsaText::write_binary(src_path, dest_path);
    }
    return 0;
}
