# Salsa

Salsa is a tool for reading and writing Mother 3 assets. It currently supports the following:
 Asset Type | Read | Write | Root filename
 -----------|------|-------|---------
 Text       | Yes  | Yes   | mainscript.salsa
 Misc Text  | Yes  | Yes   | misctext.salsa
 Logic      | WIP  | WIP   | logic.salsa

## Usage

Salsa will automatically determine the asset you are trying to extract based on the filename. The content of the extracted asset should be straight forward, but more details for each asset type are below.

When building, the asset will be converted back into binary data.

```
salsa --extract [baserom] [root_filename]
salsa --build [root_filename] [output_filename]
```

## Program Structure

Salsa's parsing routine is roughly based on what Mother 3 implements, with a layer of abstraction on top. In order to produce identical content to the original, the same format has been implemented. The game dictates that each asset has the following structure:
```c
struct Bank {
    int BLOCK_COUNT;

    struct BlockHeader headers[BLOCK_COUNT]
    {
        int DATA_HEADERS_OFFSET; /* Not Present for Fixed-Length. Points to 'data_offsets' */
        int DATA_OFFSET; /* points to 'data' */
    };

    int BANK_SIZE;

    struct Block blocks[BLOCK_COUNT]
    {
        int data_offsets[NUM_DATA]; /* Relative to this block. Fixed-Length replaces with 'int DATA_SIZE' */
        int NUM_DATA;
        struct Data data[NUM_DATA];
    };

    /* BlockHeader, Block, and Data are polymorphic */
};
```
That is, each asset has a single bank. The bank contains multiple blocks, and each block contains an array of the target data, whether it be a message or a logic command script etc.

This format is observed for both fixed and variable length data.

## Asset Formats

### Main Script
Consists of a single file (`mainscript.salsa`). Every line of dialogue must be in descending order. The block index/message index is determined by the numbers preceding the line in the format `block_index-message_index:`.

Note: ASCII is not supported at this time. Latin characters must be encoded in Shift-JIS' "full width" ASCII characters.

### Misc Text
Consists of a file and a folder. `misctext.salsa` specifies the file name of the blocks inside the folder. Fixed width length is given by an optional suffix: `:length`. The format of the blocks themselves is the same as the main script, without the block index.

### Logic
WIP

# TODO
* Consistency on the following terms: extract, build, read, write, parse, dump
* Change jp_charmap to utf8 char literals, account for this in `Message::parse`
* Abstract bank, block, and data to `salsaContainer.hpp`
* Document remaining text commands
* Better block/data iteration
* Better logging
* Document remaining extended logic commands
* unique_ptr in salsaLogic
