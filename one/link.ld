ENTRY(loader)  /* Define the entry point */

SECTIONS {
    . = 0x00100000;  /* Load code at 1MB (avoiding lower memory used by BIOS & GRUB) */

    /* Text section - stores executable code */
    .text ALIGN(0x1000) : {
        *(.text)  /* Include all .text sections from object files */
    }

    /* Read-only data section - stores constants */
    .rodata ALIGN(0x1000) : {
        *(.rodata*)  /* Include all .rodata sections from object files */
    }

    /* Data section - stores initialized global/static variables */
    .data ALIGN(0x1000) : {
        *(.data)  /* Include all .data sections */
    }

    /* BSS section - stores uninitialized global/static variables */
    .bss ALIGN(0x1000) : {
        *(COMMON)  /* Include COMMON (shared) variables */
        *(.bss)    /* Include all .bss sections */
    }
}
