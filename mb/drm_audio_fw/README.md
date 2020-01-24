## Src Project structure
The src code is structured as follows

 * `legacy/`           - Old/insecure MITRE files
 * `drm.c`             - Main DRM source code
 * `drm.h`             - Main DRM header file
 * `include/`          - Libsodium header files
 * `lib/`              - Libsodium library files
 * `ldscript.ld`       - Linker script generated file
 * `platform.c`        - MicroBlaze platform-specific source code
 * `platform.h`        - MicroBlaze platform-specific header file
 * `platform_config.h` - MicroBlaze platform-specific configuration header file
 * `secrets.h`         - Header file containing generated user/drm secrets
 * `util.c`            - Board-specific controllers source code
 * `util.h`            - Board-specific controllers header file

