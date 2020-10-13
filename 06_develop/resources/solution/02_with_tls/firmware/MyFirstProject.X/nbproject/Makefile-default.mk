#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=../src/config/default/library/tcpip/src/icmp.c ../src/config/default/bsp/bsp.c ../src/config/default/driver/memory/src/drv_memory.c ../src/config/default/driver/memory/src/drv_memory_file_system.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/osal/osal_freertos.c ../src/app_sensor.c ../src/app_mqtt.c ../src/config/default/tasks.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/dnss.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/fs/mpfs/mpfs.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c ../src/config/default/driver/ba414e/src/drv_ba414e.c ../src/config/default/system/wifiprov/src/sys_wifiprov.c ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c ../src/config/default/system/wifiprov/custom_http_app.c ../src/config/default/system/wifiprov/http_print.c ../src/config/default/system/wifiprov/mpfs_img2.c ../src/config/default/system/net/src/sys_net.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/driver/memory/src/drv_memory_nvm.c ../src/config/default/system/mqtt/src/sys_mqtt.c ../src/config/default/system/mqtt/src/sys_mqtt_paho.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/library/tcpip/src/http.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/library/tcpip/src/dhcps.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_external.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/common/sys_fs_shell.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/command/src/sys_command.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/interrupts_a.S ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/system_pmu_mldo_trim.c ../src/config/default/library/tcpip/src/sntp.c ../src/config/default/system/debug/src/sys_debug.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c ../src/config/default/system/wifi/src/sys_wifi.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/crypto/src/crypto.c ../src/config/default/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/992804092/drv_memory.o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ${OBJECTDIR}/_ext/1360937237/app_sensor.o ${OBJECTDIR}/_ext/1360937237/app_mqtt.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/dnss.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/699575981/mpfs.o ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o ${OBJECTDIR}/_ext/980053345/MQTTFormat.o ${OBJECTDIR}/_ext/980053345/MQTTPacket.o ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o ${OBJECTDIR}/_ext/741293594/MQTTClient.o ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o ${OBJECTDIR}/_ext/254263464/drv_ba414e.o ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o ${OBJECTDIR}/_ext/636804221/custom_http_app.o ${OBJECTDIR}/_ext/636804221/http_print.o ${OBJECTDIR}/_ext/636804221/mpfs_img2.o ${OBJECTDIR}/_ext/1766557203/sys_net.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ${OBJECTDIR}/_ext/692303624/sys_mqtt.o ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1033058136/http.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/1033058136/dhcps.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/interrupts_a.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1033058136/sntp.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o ${OBJECTDIR}/_ext/634868841/sys_wifi.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1665200909/heap_3.o ${OBJECTDIR}/_ext/951553246/port.o ${OBJECTDIR}/_ext/951553246/port_asm.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1033058136/icmp.o.d ${OBJECTDIR}/_ext/1434821282/bsp.o.d ${OBJECTDIR}/_ext/992804092/drv_memory.o.d ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d ${OBJECTDIR}/_ext/2046716756/crl.o.d ${OBJECTDIR}/_ext/2046716756/keys.o.d ${OBJECTDIR}/_ext/2046716756/ocsp.o.d ${OBJECTDIR}/_ext/2046716756/sniffer.o.d ${OBJECTDIR}/_ext/2046716756/ssl.o.d ${OBJECTDIR}/_ext/2046716756/tls.o.d ${OBJECTDIR}/_ext/2046716756/tls13.o.d ${OBJECTDIR}/_ext/2046716756/wolfio.o.d ${OBJECTDIR}/_ext/2046716756/internal.o.d ${OBJECTDIR}/_ext/1033058136/tcp.o.d ${OBJECTDIR}/_ext/1033058136/arp.o.d ${OBJECTDIR}/_ext/101884895/sys_time.o.d ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d ${OBJECTDIR}/_ext/1033058136/ipv4.o.d ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d ${OBJECTDIR}/_ext/1881668453/sys_int.o.d ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d ${OBJECTDIR}/_ext/1360937237/app_sensor.o.d ${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d ${OBJECTDIR}/_ext/1171490990/tasks.o.d ${OBJECTDIR}/_ext/1033058136/udp.o.d ${OBJECTDIR}/_ext/1033058136/dnss.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d ${OBJECTDIR}/_ext/699575981/mpfs.o.d ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d ${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d ${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d ${OBJECTDIR}/_ext/741293594/MQTTClient.o.d ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d ${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d ${OBJECTDIR}/_ext/636804221/custom_http_app.o.d ${OBJECTDIR}/_ext/636804221/http_print.o.d ${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d ${OBJECTDIR}/_ext/1766557203/sys_net.o.d ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d ${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d ${OBJECTDIR}/_ext/1033058136/http.o.d ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d ${OBJECTDIR}/_ext/1508031553/net_pres.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d ${OBJECTDIR}/_ext/1033058136/dhcps.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d ${OBJECTDIR}/_ext/1033058136/dhcp.o.d ${OBJECTDIR}/_ext/1033058136/dns.o.d ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d ${OBJECTDIR}/_ext/1033058136/helpers.o.d ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d ${OBJECTDIR}/_ext/1033058136/oahash.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d ${OBJECTDIR}/_ext/1376093119/sys_command.o.d ${OBJECTDIR}/_ext/1360937237/main.o.d ${OBJECTDIR}/_ext/1171490990/initialization.o.d ${OBJECTDIR}/_ext/1171490990/interrupts.o.d ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d ${OBJECTDIR}/_ext/1171490990/exceptions.o.d ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d ${OBJECTDIR}/_ext/60165520/plib_clk.o.d ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d ${OBJECTDIR}/_ext/1033058136/sntp.o.d ${OBJECTDIR}/_ext/944882569/sys_debug.o.d ${OBJECTDIR}/_ext/1664057780/arc4.o.d ${OBJECTDIR}/_ext/1664057780/asm.o.d ${OBJECTDIR}/_ext/1664057780/asn.o.d ${OBJECTDIR}/_ext/1664057780/blake2b.o.d ${OBJECTDIR}/_ext/1664057780/blake2s.o.d ${OBJECTDIR}/_ext/1664057780/camellia.o.d ${OBJECTDIR}/_ext/1664057780/chacha.o.d ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d ${OBJECTDIR}/_ext/1664057780/cmac.o.d ${OBJECTDIR}/_ext/1664057780/coding.o.d ${OBJECTDIR}/_ext/1664057780/compress.o.d ${OBJECTDIR}/_ext/1664057780/cpuid.o.d ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d ${OBJECTDIR}/_ext/1664057780/curve25519.o.d ${OBJECTDIR}/_ext/1664057780/curve448.o.d ${OBJECTDIR}/_ext/1664057780/dh.o.d ${OBJECTDIR}/_ext/1664057780/dsa.o.d ${OBJECTDIR}/_ext/1664057780/ecc.o.d ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d ${OBJECTDIR}/_ext/1664057780/ed25519.o.d ${OBJECTDIR}/_ext/1664057780/ed448.o.d ${OBJECTDIR}/_ext/1664057780/error.o.d ${OBJECTDIR}/_ext/1664057780/fe_448.o.d ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d ${OBJECTDIR}/_ext/1664057780/ge_448.o.d ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d ${OBJECTDIR}/_ext/1664057780/hash.o.d ${OBJECTDIR}/_ext/1664057780/hc128.o.d ${OBJECTDIR}/_ext/1664057780/hmac.o.d ${OBJECTDIR}/_ext/1664057780/idea.o.d ${OBJECTDIR}/_ext/1664057780/integer.o.d ${OBJECTDIR}/_ext/1664057780/logging.o.d ${OBJECTDIR}/_ext/1664057780/md2.o.d ${OBJECTDIR}/_ext/1664057780/md4.o.d ${OBJECTDIR}/_ext/1664057780/md5.o.d ${OBJECTDIR}/_ext/1664057780/memory.o.d ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d ${OBJECTDIR}/_ext/1664057780/poly1305.o.d ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d ${OBJECTDIR}/_ext/1664057780/rabbit.o.d ${OBJECTDIR}/_ext/1664057780/ripemd.o.d ${OBJECTDIR}/_ext/1664057780/rsa.o.d ${OBJECTDIR}/_ext/1664057780/sha3.o.d ${OBJECTDIR}/_ext/1664057780/signature.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d ${OBJECTDIR}/_ext/1664057780/sp_int.o.d ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d ${OBJECTDIR}/_ext/1664057780/srp.o.d ${OBJECTDIR}/_ext/1664057780/tfm.o.d ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d ${OBJECTDIR}/_ext/1664057780/wc_port.o.d ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d ${OBJECTDIR}/_ext/1664057780/aes.o.d ${OBJECTDIR}/_ext/1664057780/des3.o.d ${OBJECTDIR}/_ext/1664057780/random.o.d ${OBJECTDIR}/_ext/1664057780/sha.o.d ${OBJECTDIR}/_ext/1664057780/sha256.o.d ${OBJECTDIR}/_ext/1664057780/sha512.o.d ${OBJECTDIR}/_ext/1664057780/misc.o.d ${OBJECTDIR}/_ext/1664057780/evp.o.d ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d ${OBJECTDIR}/_ext/634868841/sys_wifi.o.d ${OBJECTDIR}/_ext/1832805299/sys_console.o.d ${OBJECTDIR}/_ext/1645245335/crypto.o.d ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d ${OBJECTDIR}/_ext/404212886/croutine.o.d ${OBJECTDIR}/_ext/404212886/list.o.d ${OBJECTDIR}/_ext/404212886/queue.o.d ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d ${OBJECTDIR}/_ext/404212886/timers.o.d ${OBJECTDIR}/_ext/404212886/event_groups.o.d ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d ${OBJECTDIR}/_ext/1665200909/heap_3.o.d ${OBJECTDIR}/_ext/951553246/port.o.d ${OBJECTDIR}/_ext/951553246/port_asm.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1033058136/icmp.o ${OBJECTDIR}/_ext/1434821282/bsp.o ${OBJECTDIR}/_ext/992804092/drv_memory.o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ${OBJECTDIR}/_ext/2046716756/crl.o ${OBJECTDIR}/_ext/2046716756/keys.o ${OBJECTDIR}/_ext/2046716756/ocsp.o ${OBJECTDIR}/_ext/2046716756/sniffer.o ${OBJECTDIR}/_ext/2046716756/ssl.o ${OBJECTDIR}/_ext/2046716756/tls.o ${OBJECTDIR}/_ext/2046716756/tls13.o ${OBJECTDIR}/_ext/2046716756/wolfio.o ${OBJECTDIR}/_ext/2046716756/internal.o ${OBJECTDIR}/_ext/1033058136/tcp.o ${OBJECTDIR}/_ext/1033058136/arp.o ${OBJECTDIR}/_ext/101884895/sys_time.o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ${OBJECTDIR}/_ext/1033058136/ipv4.o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ${OBJECTDIR}/_ext/1881668453/sys_int.o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ${OBJECTDIR}/_ext/1360937237/app_sensor.o ${OBJECTDIR}/_ext/1360937237/app_mqtt.o ${OBJECTDIR}/_ext/1171490990/tasks.o ${OBJECTDIR}/_ext/1033058136/udp.o ${OBJECTDIR}/_ext/1033058136/dnss.o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ${OBJECTDIR}/_ext/699575981/mpfs.o ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o ${OBJECTDIR}/_ext/980053345/MQTTFormat.o ${OBJECTDIR}/_ext/980053345/MQTTPacket.o ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o ${OBJECTDIR}/_ext/741293594/MQTTClient.o ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o ${OBJECTDIR}/_ext/254263464/drv_ba414e.o ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o ${OBJECTDIR}/_ext/636804221/custom_http_app.o ${OBJECTDIR}/_ext/636804221/http_print.o ${OBJECTDIR}/_ext/636804221/mpfs_img2.o ${OBJECTDIR}/_ext/1766557203/sys_net.o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ${OBJECTDIR}/_ext/692303624/sys_mqtt.o ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ${OBJECTDIR}/_ext/1033058136/http.o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ${OBJECTDIR}/_ext/1508031553/net_pres.o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ${OBJECTDIR}/_ext/1033058136/dhcps.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o ${OBJECTDIR}/_ext/1033058136/dhcp.o ${OBJECTDIR}/_ext/1033058136/dns.o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ${OBJECTDIR}/_ext/1033058136/helpers.o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ${OBJECTDIR}/_ext/1033058136/oahash.o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ${OBJECTDIR}/_ext/1376093119/sys_command.o ${OBJECTDIR}/_ext/1360937237/main.o ${OBJECTDIR}/_ext/1171490990/initialization.o ${OBJECTDIR}/_ext/1171490990/interrupts.o ${OBJECTDIR}/_ext/1171490990/interrupts_a.o ${OBJECTDIR}/_ext/1171490990/exceptions.o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ${OBJECTDIR}/_ext/60165520/plib_clk.o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o ${OBJECTDIR}/_ext/1033058136/sntp.o ${OBJECTDIR}/_ext/944882569/sys_debug.o ${OBJECTDIR}/_ext/1664057780/arc4.o ${OBJECTDIR}/_ext/1664057780/asm.o ${OBJECTDIR}/_ext/1664057780/asn.o ${OBJECTDIR}/_ext/1664057780/blake2b.o ${OBJECTDIR}/_ext/1664057780/blake2s.o ${OBJECTDIR}/_ext/1664057780/camellia.o ${OBJECTDIR}/_ext/1664057780/chacha.o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ${OBJECTDIR}/_ext/1664057780/cmac.o ${OBJECTDIR}/_ext/1664057780/coding.o ${OBJECTDIR}/_ext/1664057780/compress.o ${OBJECTDIR}/_ext/1664057780/cpuid.o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ${OBJECTDIR}/_ext/1664057780/curve25519.o ${OBJECTDIR}/_ext/1664057780/curve448.o ${OBJECTDIR}/_ext/1664057780/dh.o ${OBJECTDIR}/_ext/1664057780/dsa.o ${OBJECTDIR}/_ext/1664057780/ecc.o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ${OBJECTDIR}/_ext/1664057780/ed25519.o ${OBJECTDIR}/_ext/1664057780/ed448.o ${OBJECTDIR}/_ext/1664057780/error.o ${OBJECTDIR}/_ext/1664057780/fe_448.o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ${OBJECTDIR}/_ext/1664057780/ge_448.o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ${OBJECTDIR}/_ext/1664057780/hash.o ${OBJECTDIR}/_ext/1664057780/hc128.o ${OBJECTDIR}/_ext/1664057780/hmac.o ${OBJECTDIR}/_ext/1664057780/idea.o ${OBJECTDIR}/_ext/1664057780/integer.o ${OBJECTDIR}/_ext/1664057780/logging.o ${OBJECTDIR}/_ext/1664057780/md2.o ${OBJECTDIR}/_ext/1664057780/md4.o ${OBJECTDIR}/_ext/1664057780/md5.o ${OBJECTDIR}/_ext/1664057780/memory.o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ${OBJECTDIR}/_ext/1664057780/poly1305.o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ${OBJECTDIR}/_ext/1664057780/rabbit.o ${OBJECTDIR}/_ext/1664057780/ripemd.o ${OBJECTDIR}/_ext/1664057780/rsa.o ${OBJECTDIR}/_ext/1664057780/sha3.o ${OBJECTDIR}/_ext/1664057780/signature.o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ${OBJECTDIR}/_ext/1664057780/sp_int.o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ${OBJECTDIR}/_ext/1664057780/srp.o ${OBJECTDIR}/_ext/1664057780/tfm.o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ${OBJECTDIR}/_ext/1664057780/wc_port.o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ${OBJECTDIR}/_ext/1664057780/aes.o ${OBJECTDIR}/_ext/1664057780/des3.o ${OBJECTDIR}/_ext/1664057780/random.o ${OBJECTDIR}/_ext/1664057780/sha.o ${OBJECTDIR}/_ext/1664057780/sha256.o ${OBJECTDIR}/_ext/1664057780/sha512.o ${OBJECTDIR}/_ext/1664057780/misc.o ${OBJECTDIR}/_ext/1664057780/evp.o ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o ${OBJECTDIR}/_ext/634868841/sys_wifi.o ${OBJECTDIR}/_ext/1832805299/sys_console.o ${OBJECTDIR}/_ext/1645245335/crypto.o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ${OBJECTDIR}/_ext/404212886/croutine.o ${OBJECTDIR}/_ext/404212886/list.o ${OBJECTDIR}/_ext/404212886/queue.o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ${OBJECTDIR}/_ext/404212886/timers.o ${OBJECTDIR}/_ext/404212886/event_groups.o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ${OBJECTDIR}/_ext/1665200909/heap_3.o ${OBJECTDIR}/_ext/951553246/port.o ${OBJECTDIR}/_ext/951553246/port_asm.o

# Source Files
SOURCEFILES=../src/config/default/library/tcpip/src/icmp.c ../src/config/default/bsp/bsp.c ../src/config/default/driver/memory/src/drv_memory.c ../src/config/default/driver/memory/src/drv_memory_file_system.c ../src/third_party/wolfssl/src/crl.c ../src/third_party/wolfssl/src/keys.c ../src/third_party/wolfssl/src/ocsp.c ../src/third_party/wolfssl/src/sniffer.c ../src/third_party/wolfssl/src/ssl.c ../src/third_party/wolfssl/src/tls.c ../src/third_party/wolfssl/src/tls13.c ../src/third_party/wolfssl/src/wolfio.c ../src/third_party/wolfssl/src/internal.c ../src/config/default/library/tcpip/src/tcp.c ../src/config/default/library/tcpip/src/arp.c ../src/config/default/system/time/src/sys_time.c ../src/config/default/peripheral/coretimer/plib_coretimer.c ../src/config/default/library/tcpip/src/ipv4.c ../src/config/default/system/console/src/sys_console_uart.c ../src/config/default/system/int/src/sys_int.c ../src/config/default/system/cache/sys_cache.c ../src/config/default/osal/osal_freertos.c ../src/app_sensor.c ../src/app_mqtt.c ../src/config/default/tasks.c ../src/config/default/library/tcpip/src/udp.c ../src/config/default/library/tcpip/src/dnss.c ../src/config/default/system/fs/src/sys_fs.c ../src/config/default/system/fs/src/sys_fs_media_manager.c ../src/config/default/system/fs/mpfs/mpfs.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c ../src/config/default/driver/ba414e/src/drv_ba414e.c ../src/config/default/system/wifiprov/src/sys_wifiprov.c ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c ../src/config/default/system/wifiprov/custom_http_app.c ../src/config/default/system/wifiprov/http_print.c ../src/config/default/system/wifiprov/mpfs_img2.c ../src/config/default/system/net/src/sys_net.c ../src/config/default/peripheral/nvm/plib_nvm.c ../src/config/default/library/tcpip/src/tcpip_commands.c ../src/config/default/peripheral/adchs/plib_adchs.c ../src/config/default/driver/memory/src/drv_memory_nvm.c ../src/config/default/system/mqtt/src/sys_mqtt.c ../src/config/default/system/mqtt/src/sys_mqtt_paho.c ../src/config/default/peripheral/uart/plib_uart1.c ../src/config/default/library/tcpip/src/http.c ../src/config/default/peripheral/tmr/plib_tmr3.c ../src/config/default/net_pres/pres/src/net_pres.c ../src/config/default/net_pres/pres/net_pres_enc_glue.c ../src/config/default/net_pres/pres/net_pres_cert_store.c ../src/config/default/library/tcpip/src/dhcps.c ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c ../src/config/default/library/tcpip/src/tcpip_heap_external.c ../src/config/default/library/tcpip/src/dhcp.c ../src/config/default/library/tcpip/src/dns.c ../src/config/default/library/tcpip/src/common/sys_fs_shell.c ../src/config/default/library/tcpip/src/helpers.c ../src/config/default/library/tcpip/src/hash_fnv.c ../src/config/default/library/tcpip/src/oahash.c ../src/config/default/library/tcpip/src/tcpip_helpers.c ../src/config/default/library/tcpip/src/tcpip_helper_c32.S ../src/config/default/library/tcpip/src/tcpip_manager.c ../src/config/default/library/tcpip/src/tcpip_notify.c ../src/config/default/library/tcpip/src/tcpip_packet.c ../src/config/default/system/sys_time_h2_adapter.c ../src/config/default/system/command/src/sys_command.c ../src/main.c ../src/config/default/initialization.c ../src/config/default/interrupts.c ../src/config/default/interrupts_a.S ../src/config/default/exceptions.c ../src/config/default/stdio/xc32_monitor.c ../src/config/default/peripheral/clk/plib_clk.c ../src/config/default/peripheral/gpio/plib_gpio.c ../src/config/default/peripheral/cache/plib_cache.c ../src/config/default/peripheral/cache/plib_cache_pic32mz.S ../src/config/default/peripheral/evic/plib_evic.c ../src/config/default/system_pmu_mldo_trim.c ../src/config/default/library/tcpip/src/sntp.c ../src/config/default/system/debug/src/sys_debug.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c ../src/config/default/system/wifi/src/sys_wifi.c ../src/config/default/system/console/src/sys_console.c ../src/config/default/crypto/src/crypto.c ../src/config/default/freertos_hooks.c ../src/third_party/rtos/FreeRTOS/Source/croutine.c ../src/third_party/rtos/FreeRTOS/Source/list.c ../src/third_party/rtos/FreeRTOS/Source/queue.c ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c ../src/third_party/rtos/FreeRTOS/Source/timers.c ../src/third_party/rtos/FreeRTOS/Source/event_groups.c ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MZ1025W104132
MP_LINKER_FILE_OPTION=,--script="..\src\config\default\p32MZ1025W104132.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts_a.o: ../src/config/default/interrupts_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.ok ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1171490990/interrupts_a.o ../src/config/default/interrupts_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1171490990/interrupts_a.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d" "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553246/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/951553246" 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o.ok ${OBJECTDIR}/_ext/951553246/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -D__DEBUG  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/951553246/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553246/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553246/port_asm.o.asm.d",--defsym=__ICD2RAM=1,--defsym=__MPLAB_DEBUG=1,--gdwarf-2,--defsym=__DEBUG=1,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553246/port_asm.o.d" "${OBJECTDIR}/_ext/951553246/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o: ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.ok ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d"  -o ${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o ../src/config/default/library/tcpip/src/tcpip_helper_c32.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d",--gdwarf-2,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.d" "${OBJECTDIR}/_ext/1033058136/tcpip_helper_c32.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts_a.o: ../src/config/default/interrupts_a.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.ok ${OBJECTDIR}/_ext/1171490990/interrupts_a.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d"  -o ${OBJECTDIR}/_ext/1171490990/interrupts_a.o ../src/config/default/interrupts_a.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1171490990/interrupts_a.o.asm.d",--gdwarf-2,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.d" "${OBJECTDIR}/_ext/1171490990/interrupts_a.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o: ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.ok ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d"  -o ${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o ../src/config/default/peripheral/cache/plib_cache_pic32mz.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d",--gdwarf-2,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.d" "${OBJECTDIR}/_ext/1984157808/plib_cache_pic32mz.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553246/port_asm.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/951553246" 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o 
	@${RM} ${OBJECTDIR}/_ext/951553246/port_asm.o.ok ${OBJECTDIR}/_ext/951553246/port_asm.o.err 
	${MP_CC} $(MP_EXTRA_AS_PRE)  -c -mprocessor=$(MP_PROCESSOR_OPTION) -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -MMD -MF "${OBJECTDIR}/_ext/951553246/port_asm.o.d"  -o ${OBJECTDIR}/_ext/951553246/port_asm.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port_asm.S  -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  -Wa,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_AS_POST),-MD="${OBJECTDIR}/_ext/951553246/port_asm.o.asm.d",--gdwarf-2,-I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default" -mdfp="${DFP_DIR}"
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553246/port_asm.o.d" "${OBJECTDIR}/_ext/951553246/port_asm.o.asm.d" -t $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434821282/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory.o: ../src/config/default/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory.o ../src/config/default/driver/memory/src/drv_memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o: ../src/config/default/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ../src/config/default/driver/memory/src/drv_memory_file_system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/crl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/keys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/ssl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/tls13.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/101884895/sys_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos.o: ../src/config/default/osal/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ../src/config/default/osal/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_sensor.o: ../src/app_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_sensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_sensor.o ../src/app_sensor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_mqtt.o: ../src/app_mqtt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt.o ../src/app_mqtt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dnss.o: ../src/config/default/library/tcpip/src/dnss.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dnss.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dnss.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dnss.o.d" -o ${OBJECTDIR}/_ext/1033058136/dnss.o ../src/config/default/library/tcpip/src/dnss.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dnss.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/699575981/mpfs.o: ../src/config/default/system/fs/mpfs/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/699575981" 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/699575981/mpfs.o.d" -o ${OBJECTDIR}/_ext/699575981/mpfs.o ../src/config/default/system/fs/mpfs/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/699575981/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTFormat.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTFormat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTFormat.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTPacket.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTPacket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTPacket.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/741293594/MQTTClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/741293594" 
	@${RM} ${OBJECTDIR}/_ext/741293594/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/741293594/MQTTClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/741293594/MQTTClient.o.d" -o ${OBJECTDIR}/_ext/741293594/MQTTClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/741293594/MQTTClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o: ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/603994634" 
	@${RM} ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d 
	@${RM} ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d" -o ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/254263464/drv_ba414e.o: ../src/config/default/driver/ba414e/src/drv_ba414e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/254263464" 
	@${RM} ${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/254263464/drv_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d" -o ${OBJECTDIR}/_ext/254263464/drv_ba414e.o ../src/config/default/driver/ba414e/src/drv_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/790589778/sys_wifiprov.o: ../src/config/default/system/wifiprov/src/sys_wifiprov.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/790589778" 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d" -o ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o ../src/config/default/system/wifiprov/src/sys_wifiprov.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o: ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/790589778" 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d" -o ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/custom_http_app.o: ../src/config/default/system/wifiprov/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/636804221/custom_http_app.o ../src/config/default/system/wifiprov/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/http_print.o: ../src/config/default/system/wifiprov/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/http_print.o.d" -o ${OBJECTDIR}/_ext/636804221/http_print.o ../src/config/default/system/wifiprov/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/mpfs_img2.o: ../src/config/default/system/wifiprov/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/636804221/mpfs_img2.o ../src/config/default/system/wifiprov/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1766557203/sys_net.o: ../src/config/default/system/net/src/sys_net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1766557203" 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_net.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1766557203/sys_net.o.d" -o ${OBJECTDIR}/_ext/1766557203/sys_net.o ../src/config/default/system/net/src/sys_net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1766557203/sys_net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o: ../src/config/default/driver/memory/src/drv_memory_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ../src/config/default/driver/memory/src/drv_memory_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/692303624/sys_mqtt.o: ../src/config/default/system/mqtt/src/sys_mqtt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_mqtt.o ../src/config/default/system/mqtt/src/sys_mqtt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o: ../src/config/default/system/mqtt/src/sys_mqtt_paho.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o ../src/config/default/system/mqtt/src/sys_mqtt_paho.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/http.o: ../src/config/default/library/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/http.o.d" -o ${OBJECTDIR}/_ext/1033058136/http.o ../src/config/default/library/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dhcps.o: ../src/config/default/library/tcpip/src/dhcps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcps.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcps.o ../src/config/default/library/tcpip/src/dhcps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dhcps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o: ../src/config/default/library/tcpip/src/tcpip_heap_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o ../src/config/default/library/tcpip/src/tcpip_heap_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o: ../src/config/default/library/tcpip/src/common/sys_fs_shell.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1751889202" 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" -o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ../src/config/default/library/tcpip/src/common/sys_fs_shell.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o: ../src/config/default/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o ../src/config/default/system_pmu_mldo_trim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/sntp.o: ../src/config/default/library/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/sntp.o.d" -o ${OBJECTDIR}/_ext/1033058136/sntp.o ../src/config/default/library/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/asn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/camellia.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/chacha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/coding.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/curve448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/dh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/dsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ed448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hc128.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/idea.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/integer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/signature.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/srp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/tfm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/evp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o: ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d" -o ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/634868841/sys_wifi.o: ../src/config/default/system/wifi/src/sys_wifi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wifi.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wifi.o ../src/config/default/system/wifi/src/sys_wifi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/634868841/sys_wifi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1645245335/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/freertos_hooks.o: ../src/config/default/freertos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ../src/config/default/freertos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1665200909/heap_3.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_3.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_3.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1665200909/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553246/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/951553246" 
	@${RM} ${OBJECTDIR}/_ext/951553246/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553246/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/951553246/port.o.d" -o ${OBJECTDIR}/_ext/951553246/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553246/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
else
${OBJECTDIR}/_ext/1033058136/icmp.o: ../src/config/default/library/tcpip/src/icmp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/icmp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/icmp.o.d" -o ${OBJECTDIR}/_ext/1033058136/icmp.o ../src/config/default/library/tcpip/src/icmp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/icmp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1434821282/bsp.o: ../src/config/default/bsp/bsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1434821282" 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1434821282/bsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1434821282/bsp.o.d" -o ${OBJECTDIR}/_ext/1434821282/bsp.o ../src/config/default/bsp/bsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1434821282/bsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory.o: ../src/config/default/driver/memory/src/drv_memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory.o ../src/config/default/driver/memory/src/drv_memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o: ../src/config/default/driver/memory/src/drv_memory_file_system.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o ../src/config/default/driver/memory/src/drv_memory_file_system.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory_file_system.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/crl.o: ../src/third_party/wolfssl/src/crl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/crl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/crl.o.d" -o ${OBJECTDIR}/_ext/2046716756/crl.o ../src/third_party/wolfssl/src/crl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/crl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/keys.o: ../src/third_party/wolfssl/src/keys.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/keys.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/keys.o.d" -o ${OBJECTDIR}/_ext/2046716756/keys.o ../src/third_party/wolfssl/src/keys.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/keys.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/ocsp.o: ../src/third_party/wolfssl/src/ocsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ocsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" -o ${OBJECTDIR}/_ext/2046716756/ocsp.o ../src/third_party/wolfssl/src/ocsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/ocsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/sniffer.o: ../src/third_party/wolfssl/src/sniffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/sniffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" -o ${OBJECTDIR}/_ext/2046716756/sniffer.o ../src/third_party/wolfssl/src/sniffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/sniffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/ssl.o: ../src/third_party/wolfssl/src/ssl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/ssl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/ssl.o.d" -o ${OBJECTDIR}/_ext/2046716756/ssl.o ../src/third_party/wolfssl/src/ssl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/ssl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/tls.o: ../src/third_party/wolfssl/src/tls.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls.o ../src/third_party/wolfssl/src/tls.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/tls.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/tls13.o: ../src/third_party/wolfssl/src/tls13.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/tls13.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/tls13.o.d" -o ${OBJECTDIR}/_ext/2046716756/tls13.o ../src/third_party/wolfssl/src/tls13.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/tls13.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/wolfio.o: ../src/third_party/wolfssl/src/wolfio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/wolfio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" -o ${OBJECTDIR}/_ext/2046716756/wolfio.o ../src/third_party/wolfssl/src/wolfio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/wolfio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/2046716756/internal.o: ../src/third_party/wolfssl/src/internal.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/2046716756" 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o.d 
	@${RM} ${OBJECTDIR}/_ext/2046716756/internal.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/2046716756/internal.o.d" -o ${OBJECTDIR}/_ext/2046716756/internal.o ../src/third_party/wolfssl/src/internal.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/2046716756/internal.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcp.o: ../src/config/default/library/tcpip/src/tcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcp.o ../src/config/default/library/tcpip/src/tcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/arp.o: ../src/config/default/library/tcpip/src/arp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/arp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/arp.o.d" -o ${OBJECTDIR}/_ext/1033058136/arp.o ../src/config/default/library/tcpip/src/arp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/arp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/101884895/sys_time.o: ../src/config/default/system/time/src/sys_time.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/101884895" 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o.d 
	@${RM} ${OBJECTDIR}/_ext/101884895/sys_time.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/101884895/sys_time.o.d" -o ${OBJECTDIR}/_ext/101884895/sys_time.o ../src/config/default/system/time/src/sys_time.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/101884895/sys_time.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1249264884/plib_coretimer.o: ../src/config/default/peripheral/coretimer/plib_coretimer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1249264884" 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" -o ${OBJECTDIR}/_ext/1249264884/plib_coretimer.o ../src/config/default/peripheral/coretimer/plib_coretimer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1249264884/plib_coretimer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/ipv4.o: ../src/config/default/library/tcpip/src/ipv4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/ipv4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" -o ${OBJECTDIR}/_ext/1033058136/ipv4.o ../src/config/default/library/tcpip/src/ipv4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/ipv4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1832805299/sys_console_uart.o: ../src/config/default/system/console/src/sys_console_uart.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console_uart.o ../src/config/default/system/console/src/sys_console_uart.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1832805299/sys_console_uart.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1881668453/sys_int.o: ../src/config/default/system/int/src/sys_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1881668453" 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1881668453/sys_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" -o ${OBJECTDIR}/_ext/1881668453/sys_int.o ../src/config/default/system/int/src/sys_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1881668453/sys_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1014039709/sys_cache.o: ../src/config/default/system/cache/sys_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1014039709" 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1014039709/sys_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" -o ${OBJECTDIR}/_ext/1014039709/sys_cache.o ../src/config/default/system/cache/sys_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1014039709/sys_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1529399856/osal_freertos.o: ../src/config/default/osal/osal_freertos.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1529399856" 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d 
	@${RM} ${OBJECTDIR}/_ext/1529399856/osal_freertos.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" -o ${OBJECTDIR}/_ext/1529399856/osal_freertos.o ../src/config/default/osal/osal_freertos.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1529399856/osal_freertos.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_sensor.o: ../src/app_sensor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_sensor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_sensor.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_sensor.o ../src/app_sensor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_sensor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/app_mqtt.o: ../src/app_mqtt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/app_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d" -o ${OBJECTDIR}/_ext/1360937237/app_mqtt.o ../src/app_mqtt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/app_mqtt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/tasks.o: ../src/config/default/tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/tasks.o.d" -o ${OBJECTDIR}/_ext/1171490990/tasks.o ../src/config/default/tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/udp.o: ../src/config/default/library/tcpip/src/udp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/udp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/udp.o.d" -o ${OBJECTDIR}/_ext/1033058136/udp.o ../src/config/default/library/tcpip/src/udp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/udp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dnss.o: ../src/config/default/library/tcpip/src/dnss.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dnss.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dnss.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dnss.o.d" -o ${OBJECTDIR}/_ext/1033058136/dnss.o ../src/config/default/library/tcpip/src/dnss.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dnss.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1269487135/sys_fs.o: ../src/config/default/system/fs/src/sys_fs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs.o ../src/config/default/system/fs/src/sys_fs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1269487135/sys_fs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o: ../src/config/default/system/fs/src/sys_fs_media_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1269487135" 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" -o ${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o ../src/config/default/system/fs/src/sys_fs_media_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1269487135/sys_fs_media_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/699575981/mpfs.o: ../src/config/default/system/fs/mpfs/mpfs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/699575981" 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o.d 
	@${RM} ${OBJECTDIR}/_ext/699575981/mpfs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/699575981/mpfs.o.d" -o ${OBJECTDIR}/_ext/699575981/mpfs.o ../src/config/default/system/fs/mpfs/mpfs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/699575981/mpfs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTConnectClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTConnectServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTConnectServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTDeserializePublish.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTDeserializePublish.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTFormat.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTFormat.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTFormat.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTFormat.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTFormat.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTPacket.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTPacket.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTPacket.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTPacket.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTPacket.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSerializePublish.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSerializePublish.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSubscribeClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTSubscribeServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTSubscribeServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o: ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/980053345" 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d 
	@${RM} ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d" -o ${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o ../src/third_party/paho.mqtt.embedded-c/MQTTPacket/src/MQTTUnsubscribeServer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/980053345/MQTTUnsubscribeServer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/741293594/MQTTClient.o: ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/741293594" 
	@${RM} ${OBJECTDIR}/_ext/741293594/MQTTClient.o.d 
	@${RM} ${OBJECTDIR}/_ext/741293594/MQTTClient.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/741293594/MQTTClient.o.d" -o ${OBJECTDIR}/_ext/741293594/MQTTClient.o ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/src/MQTTClient.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/741293594/MQTTClient.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o: ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/603994634" 
	@${RM} ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d 
	@${RM} ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d" -o ${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o ../src/third_party/paho.mqtt.embedded-c/MQTTClient-C/Platforms/MCHP_pic32mzw1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/603994634/MCHP_pic32mzw1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/254263464/drv_ba414e.o: ../src/config/default/driver/ba414e/src/drv_ba414e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/254263464" 
	@${RM} ${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/254263464/drv_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d" -o ${OBJECTDIR}/_ext/254263464/drv_ba414e.o ../src/config/default/driver/ba414e/src/drv_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/254263464/drv_ba414e.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/790589778/sys_wifiprov.o: ../src/config/default/system/wifiprov/src/sys_wifiprov.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/790589778" 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d" -o ${OBJECTDIR}/_ext/790589778/sys_wifiprov.o ../src/config/default/system/wifiprov/src/sys_wifiprov.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/790589778/sys_wifiprov.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o: ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/790589778" 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d 
	@${RM} ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d" -o ${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o ../src/config/default/system/wifiprov/src/sys_wifiprov_json.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/790589778/sys_wifiprov_json.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/custom_http_app.o: ../src/config/default/system/wifiprov/custom_http_app.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/custom_http_app.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/custom_http_app.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/custom_http_app.o.d" -o ${OBJECTDIR}/_ext/636804221/custom_http_app.o ../src/config/default/system/wifiprov/custom_http_app.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/custom_http_app.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/http_print.o: ../src/config/default/system/wifiprov/http_print.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/http_print.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/http_print.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/http_print.o.d" -o ${OBJECTDIR}/_ext/636804221/http_print.o ../src/config/default/system/wifiprov/http_print.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/http_print.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/636804221/mpfs_img2.o: ../src/config/default/system/wifiprov/mpfs_img2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/636804221" 
	@${RM} ${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d 
	@${RM} ${OBJECTDIR}/_ext/636804221/mpfs_img2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d" -o ${OBJECTDIR}/_ext/636804221/mpfs_img2.o ../src/config/default/system/wifiprov/mpfs_img2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/636804221/mpfs_img2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1766557203/sys_net.o: ../src/config/default/system/net/src/sys_net.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1766557203" 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_net.o.d 
	@${RM} ${OBJECTDIR}/_ext/1766557203/sys_net.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1766557203/sys_net.o.d" -o ${OBJECTDIR}/_ext/1766557203/sys_net.o ../src/config/default/system/net/src/sys_net.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1766557203/sys_net.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60176403/plib_nvm.o: ../src/config/default/peripheral/nvm/plib_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60176403" 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/60176403/plib_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" -o ${OBJECTDIR}/_ext/60176403/plib_nvm.o ../src/config/default/peripheral/nvm/plib_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60176403/plib_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_commands.o: ../src/config/default/library/tcpip/src/tcpip_commands.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_commands.o ../src/config/default/library/tcpip/src/tcpip_commands.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_commands.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1982400153/plib_adchs.o: ../src/config/default/peripheral/adchs/plib_adchs.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1982400153" 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d 
	@${RM} ${OBJECTDIR}/_ext/1982400153/plib_adchs.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" -o ${OBJECTDIR}/_ext/1982400153/plib_adchs.o ../src/config/default/peripheral/adchs/plib_adchs.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1982400153/plib_adchs.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o: ../src/config/default/driver/memory/src/drv_memory_nvm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/992804092" 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d 
	@${RM} ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" -o ${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o ../src/config/default/driver/memory/src/drv_memory_nvm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/992804092/drv_memory_nvm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/692303624/sys_mqtt.o: ../src/config/default/system/mqtt/src/sys_mqtt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_mqtt.o ../src/config/default/system/mqtt/src/sys_mqtt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/692303624/sys_mqtt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o: ../src/config/default/system/mqtt/src/sys_mqtt_paho.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/692303624" 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d 
	@${RM} ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d" -o ${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o ../src/config/default/system/mqtt/src/sys_mqtt_paho.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/692303624/sys_mqtt_paho.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865657120/plib_uart1.o: ../src/config/default/peripheral/uart/plib_uart1.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865657120" 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865657120/plib_uart1.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" -o ${OBJECTDIR}/_ext/1865657120/plib_uart1.o ../src/config/default/peripheral/uart/plib_uart1.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865657120/plib_uart1.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/http.o: ../src/config/default/library/tcpip/src/http.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/http.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/http.o.d" -o ${OBJECTDIR}/_ext/1033058136/http.o ../src/config/default/library/tcpip/src/http.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/http.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60181895/plib_tmr3.o: ../src/config/default/peripheral/tmr/plib_tmr3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60181895" 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d 
	@${RM} ${OBJECTDIR}/_ext/60181895/plib_tmr3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" -o ${OBJECTDIR}/_ext/60181895/plib_tmr3.o ../src/config/default/peripheral/tmr/plib_tmr3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60181895/plib_tmr3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1508031553/net_pres.o: ../src/config/default/net_pres/pres/src/net_pres.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1508031553" 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o.d 
	@${RM} ${OBJECTDIR}/_ext/1508031553/net_pres.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" -o ${OBJECTDIR}/_ext/1508031553/net_pres.o ../src/config/default/net_pres/pres/src/net_pres.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1508031553/net_pres.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o: ../src/config/default/net_pres/pres/net_pres_enc_glue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o ../src/config/default/net_pres/pres/net_pres_enc_glue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640433940/net_pres_enc_glue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o: ../src/config/default/net_pres/pres/net_pres_cert_store.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1640433940" 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d 
	@${RM} ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" -o ${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o ../src/config/default/net_pres/pres/net_pres_cert_store.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1640433940/net_pres_cert_store.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dhcps.o: ../src/config/default/library/tcpip/src/dhcps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcps.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcps.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcps.o ../src/config/default/library/tcpip/src/dhcps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dhcps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o: ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o ../src/config/default/library/tcpip/src/tcpip_heap_alloc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_heap_alloc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o: ../src/config/default/library/tcpip/src/tcpip_heap_external.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o ../src/config/default/library/tcpip/src/tcpip_heap_external.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_heap_external.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dhcp.o: ../src/config/default/library/tcpip/src/dhcp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dhcp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" -o ${OBJECTDIR}/_ext/1033058136/dhcp.o ../src/config/default/library/tcpip/src/dhcp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dhcp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/dns.o: ../src/config/default/library/tcpip/src/dns.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/dns.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/dns.o.d" -o ${OBJECTDIR}/_ext/1033058136/dns.o ../src/config/default/library/tcpip/src/dns.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/dns.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o: ../src/config/default/library/tcpip/src/common/sys_fs_shell.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1751889202" 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d 
	@${RM} ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" -o ${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o ../src/config/default/library/tcpip/src/common/sys_fs_shell.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1751889202/sys_fs_shell.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/helpers.o: ../src/config/default/library/tcpip/src/helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/helpers.o ../src/config/default/library/tcpip/src/helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/hash_fnv.o: ../src/config/default/library/tcpip/src/hash_fnv.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/hash_fnv.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" -o ${OBJECTDIR}/_ext/1033058136/hash_fnv.o ../src/config/default/library/tcpip/src/hash_fnv.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/hash_fnv.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/oahash.o: ../src/config/default/library/tcpip/src/oahash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/oahash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/oahash.o.d" -o ${OBJECTDIR}/_ext/1033058136/oahash.o ../src/config/default/library/tcpip/src/oahash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/oahash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o: ../src/config/default/library/tcpip/src/tcpip_helpers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o ../src/config/default/library/tcpip/src/tcpip_helpers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_helpers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_manager.o: ../src/config/default/library/tcpip/src/tcpip_manager.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_manager.o ../src/config/default/library/tcpip/src/tcpip_manager.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_manager.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_notify.o: ../src/config/default/library/tcpip/src/tcpip_notify.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_notify.o ../src/config/default/library/tcpip/src/tcpip_notify.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_notify.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/tcpip_packet.o: ../src/config/default/library/tcpip/src/tcpip_packet.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" -o ${OBJECTDIR}/_ext/1033058136/tcpip_packet.o ../src/config/default/library/tcpip/src/tcpip_packet.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/tcpip_packet.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o: ../src/config/default/system/sys_time_h2_adapter.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/753841488" 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d 
	@${RM} ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" -o ${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o ../src/config/default/system/sys_time_h2_adapter.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/753841488/sys_time_h2_adapter.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1376093119/sys_command.o: ../src/config/default/system/command/src/sys_command.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1376093119" 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o.d 
	@${RM} ${OBJECTDIR}/_ext/1376093119/sys_command.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" -o ${OBJECTDIR}/_ext/1376093119/sys_command.o ../src/config/default/system/command/src/sys_command.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1376093119/sys_command.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1360937237/main.o: ../src/main.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1360937237" 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o.d 
	@${RM} ${OBJECTDIR}/_ext/1360937237/main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1360937237/main.o.d" -o ${OBJECTDIR}/_ext/1360937237/main.o ../src/main.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1360937237/main.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/initialization.o: ../src/config/default/initialization.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/initialization.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/initialization.o.d" -o ${OBJECTDIR}/_ext/1171490990/initialization.o ../src/config/default/initialization.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/initialization.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/interrupts.o: ../src/config/default/interrupts.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/interrupts.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" -o ${OBJECTDIR}/_ext/1171490990/interrupts.o ../src/config/default/interrupts.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/interrupts.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/exceptions.o: ../src/config/default/exceptions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/exceptions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" -o ${OBJECTDIR}/_ext/1171490990/exceptions.o ../src/config/default/exceptions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/exceptions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/163028504/xc32_monitor.o: ../src/config/default/stdio/xc32_monitor.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/163028504" 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d 
	@${RM} ${OBJECTDIR}/_ext/163028504/xc32_monitor.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" -o ${OBJECTDIR}/_ext/163028504/xc32_monitor.o ../src/config/default/stdio/xc32_monitor.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/163028504/xc32_monitor.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/60165520/plib_clk.o: ../src/config/default/peripheral/clk/plib_clk.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/60165520" 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o.d 
	@${RM} ${OBJECTDIR}/_ext/60165520/plib_clk.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" -o ${OBJECTDIR}/_ext/60165520/plib_clk.o ../src/config/default/peripheral/clk/plib_clk.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/60165520/plib_clk.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865254177/plib_gpio.o: ../src/config/default/peripheral/gpio/plib_gpio.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865254177" 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865254177/plib_gpio.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" -o ${OBJECTDIR}/_ext/1865254177/plib_gpio.o ../src/config/default/peripheral/gpio/plib_gpio.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865254177/plib_gpio.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1984157808/plib_cache.o: ../src/config/default/peripheral/cache/plib_cache.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1984157808" 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o.d 
	@${RM} ${OBJECTDIR}/_ext/1984157808/plib_cache.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" -o ${OBJECTDIR}/_ext/1984157808/plib_cache.o ../src/config/default/peripheral/cache/plib_cache.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1984157808/plib_cache.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1865200349/plib_evic.o: ../src/config/default/peripheral/evic/plib_evic.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1865200349" 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o.d 
	@${RM} ${OBJECTDIR}/_ext/1865200349/plib_evic.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" -o ${OBJECTDIR}/_ext/1865200349/plib_evic.o ../src/config/default/peripheral/evic/plib_evic.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1865200349/plib_evic.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o: ../src/config/default/system_pmu_mldo_trim.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d" -o ${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o ../src/config/default/system_pmu_mldo_trim.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/system_pmu_mldo_trim.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1033058136/sntp.o: ../src/config/default/library/tcpip/src/sntp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1033058136" 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1033058136/sntp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1033058136/sntp.o.d" -o ${OBJECTDIR}/_ext/1033058136/sntp.o ../src/config/default/library/tcpip/src/sntp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1033058136/sntp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/944882569/sys_debug.o: ../src/config/default/system/debug/src/sys_debug.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/944882569" 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o.d 
	@${RM} ${OBJECTDIR}/_ext/944882569/sys_debug.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" -o ${OBJECTDIR}/_ext/944882569/sys_debug.o ../src/config/default/system/debug/src/sys_debug.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/944882569/sys_debug.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/arc4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/arc4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/arc4.o.d" -o ${OBJECTDIR}/_ext/1664057780/arc4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/arc4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/arc4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/asm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/asm.o.d" -o ${OBJECTDIR}/_ext/1664057780/asm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/asm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/asn.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/asn.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/asn.o.d" -o ${OBJECTDIR}/_ext/1664057780/asn.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/asn.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/asn.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/blake2b.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2b.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2b.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2b.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/blake2b.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/blake2s.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/blake2s.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" -o ${OBJECTDIR}/_ext/1664057780/blake2s.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/blake2s.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/blake2s.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/camellia.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/camellia.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/camellia.o.d" -o ${OBJECTDIR}/_ext/1664057780/camellia.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/camellia.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/camellia.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/chacha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/chacha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/chacha20_poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/chacha20_poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/cmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/coding.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/coding.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/coding.o.d" -o ${OBJECTDIR}/_ext/1664057780/coding.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/coding.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/coding.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/compress.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/compress.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/compress.o.d" -o ${OBJECTDIR}/_ext/1664057780/compress.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/compress.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/compress.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cpuid.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cpuid.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" -o ${OBJECTDIR}/_ext/1664057780/cpuid.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cpuid.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cpuid.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/cryptocb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/cryptocb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" -o ${OBJECTDIR}/_ext/1664057780/cryptocb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/cryptocb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/cryptocb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/curve25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/curve25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/curve448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/curve448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/curve448.o.d" -o ${OBJECTDIR}/_ext/1664057780/curve448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/curve448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/curve448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/dh.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dh.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/dh.o.d" -o ${OBJECTDIR}/_ext/1664057780/dh.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dh.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/dh.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/dsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/dsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/dsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/dsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/dsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/dsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ecc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ecc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ecc_fp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ecc_fp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" -o ${OBJECTDIR}/_ext/1664057780/ecc_fp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ecc_fp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ecc_fp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ed25519.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed25519.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed25519.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed25519.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ed25519.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ed448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ed448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ed448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ed448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ed448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ed448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/error.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/error.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/error.o.d" -o ${OBJECTDIR}/_ext/1664057780/error.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/error.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/error.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_low_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/fe_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/fe_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/fe_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/fe_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/fe_operations.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_448.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_448.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_448.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_448.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_448.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_low_mem.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_low_mem.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_low_mem.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_low_mem.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ge_operations.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ge_operations.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" -o ${OBJECTDIR}/_ext/1664057780/ge_operations.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ge_operations.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ge_operations.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hash.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hash.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hash.o.d" -o ${OBJECTDIR}/_ext/1664057780/hash.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hash.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hash.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hc128.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hc128.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hc128.o.d" -o ${OBJECTDIR}/_ext/1664057780/hc128.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hc128.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hc128.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/hmac.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/hmac.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/hmac.o.d" -o ${OBJECTDIR}/_ext/1664057780/hmac.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/hmac.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/hmac.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/idea.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/idea.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/idea.o.d" -o ${OBJECTDIR}/_ext/1664057780/idea.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/idea.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/idea.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/integer.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/integer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/integer.o.d" -o ${OBJECTDIR}/_ext/1664057780/integer.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/integer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/integer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/logging.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/logging.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/logging.o.d" -o ${OBJECTDIR}/_ext/1664057780/logging.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/logging.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/logging.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md2.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md2.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md2.o.d" -o ${OBJECTDIR}/_ext/1664057780/md2.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md2.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md2.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md4.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md4.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md4.o.d" -o ${OBJECTDIR}/_ext/1664057780/md4.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md4.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md4.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/md5.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/md5.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/md5.o.d" -o ${OBJECTDIR}/_ext/1664057780/md5.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/md5.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/md5.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/memory.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/memory.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/memory.o.d" -o ${OBJECTDIR}/_ext/1664057780/memory.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/memory.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/memory.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pkcs12.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs12.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs12.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs12.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pkcs12.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pkcs7.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pkcs7.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" -o ${OBJECTDIR}/_ext/1664057780/pkcs7.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pkcs7.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pkcs7.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/poly1305.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/poly1305.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" -o ${OBJECTDIR}/_ext/1664057780/poly1305.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/poly1305.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/poly1305.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/pwdbased.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/pwdbased.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" -o ${OBJECTDIR}/_ext/1664057780/pwdbased.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/pwdbased.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/pwdbased.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/rabbit.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rabbit.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" -o ${OBJECTDIR}/_ext/1664057780/rabbit.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rabbit.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/rabbit.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/ripemd.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/ripemd.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" -o ${OBJECTDIR}/_ext/1664057780/ripemd.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/ripemd.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/ripemd.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/rsa.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/rsa.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/rsa.o.d" -o ${OBJECTDIR}/_ext/1664057780/rsa.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/rsa.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/rsa.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha3.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/signature.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/signature.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/signature.o.d" -o ${OBJECTDIR}/_ext/1664057780/signature.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/signature.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/signature.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_arm32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_arm32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_arm64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_arm64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_arm64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_arm64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_arm64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_armthumb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_armthumb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_armthumb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_armthumb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_c32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_c32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_c64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_c64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_c64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_c64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_c64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_cortexm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_cortexm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_cortexm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_cortexm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_dsp32.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_dsp32.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_dsp32.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_dsp32.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_int.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_int.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sp_x86_64.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" -o ${OBJECTDIR}/_ext/1664057780/sp_x86_64.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sp_x86_64.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sp_x86_64.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/srp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/srp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/srp.o.d" -o ${OBJECTDIR}/_ext/1664057780/srp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/srp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/srp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/tfm.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/tfm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/tfm.o.d" -o ${OBJECTDIR}/_ext/1664057780/tfm.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/tfm.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/tfm.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_dsp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_dsp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_dsp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_dsp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_dsp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_encrypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_encrypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_encrypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_encrypt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_pkcs11.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_pkcs11.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wc_port.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wc_port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" -o ${OBJECTDIR}/_ext/1664057780/wc_port.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wc_port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wc_port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wolfevent.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfevent.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfevent.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfevent.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wolfevent.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/wolfmath.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/wolfmath.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" -o ${OBJECTDIR}/_ext/1664057780/wolfmath.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/wolfmath.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/wolfmath.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" -o ${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/pic32mz-crypt.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/pic32mz-crypt.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_sam6149.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_aes_sam6149.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_aes_u2238.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_aes_u2238.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_ba414e.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_ecc_ba414e.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_ecc_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_ecc_pukcl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_pukcl_functions.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_pukcl_functions.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_sam6334.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rng_sam6334.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rng_u2242.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rng_u2242.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_rsa_pukcl.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_rsa_pukcl.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sam_u2803.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sam_u2803.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha1_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha1_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha224_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha224_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam11105.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam11105.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha256_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha256_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha384_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha384_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_sha512_sam6156.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_sha512_sam6156.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_tdes_sam6150.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_tdes_sam6150.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/172253694" 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d 
	@${RM} ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" -o ${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/port/pic32/crypt_wolfcryptcb.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/172253694/crypt_wolfcryptcb.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/aes.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/aes.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/aes.o.d" -o ${OBJECTDIR}/_ext/1664057780/aes.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/aes.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/aes.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/des3.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/des3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/des3.o.d" -o ${OBJECTDIR}/_ext/1664057780/des3.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/des3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/des3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/random.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/random.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/random.o.d" -o ${OBJECTDIR}/_ext/1664057780/random.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/random.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/random.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha256.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha256.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha256.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha256.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha256.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha256.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/sha512.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/sha512.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/sha512.o.d" -o ${OBJECTDIR}/_ext/1664057780/sha512.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/sha512.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/sha512.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/misc.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/misc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/misc.o.d" -o ${OBJECTDIR}/_ext/1664057780/misc.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/misc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/misc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1664057780/evp.o: ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1664057780" 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o.d 
	@${RM} ${OBJECTDIR}/_ext/1664057780/evp.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1664057780/evp.o.d" -o ${OBJECTDIR}/_ext/1664057780/evp.o ../src/third_party/wolfssl/wolfssl/wolfcrypt/src/evp.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1664057780/evp.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o: ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d" -o ${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o ../src/config/default/driver/wifi/pic32mzw1/drv_pic32mzw1_crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/drv_pic32mzw1_crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_assoc.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_assoc.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_authctx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_authctx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssctx.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssctx.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_bssfind.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_bssfind.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_cfg.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_cfg.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_int.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_int.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_regdomain.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_regdomain.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_softap.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_softap.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_sta.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_sta.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o: ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/850128284" 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d 
	@${RM} ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d" -o ${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o ../src/config/default/driver/wifi/pic32mzw1/wdrv_pic32mzw_ps.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/850128284/wdrv_pic32mzw_ps.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/634868841/sys_wifi.o: ../src/config/default/system/wifi/src/sys_wifi.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/634868841" 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wifi.o.d 
	@${RM} ${OBJECTDIR}/_ext/634868841/sys_wifi.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/634868841/sys_wifi.o.d" -o ${OBJECTDIR}/_ext/634868841/sys_wifi.o ../src/config/default/system/wifi/src/sys_wifi.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/634868841/sys_wifi.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1832805299/sys_console.o: ../src/config/default/system/console/src/sys_console.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1832805299" 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o.d 
	@${RM} ${OBJECTDIR}/_ext/1832805299/sys_console.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" -o ${OBJECTDIR}/_ext/1832805299/sys_console.o ../src/config/default/system/console/src/sys_console.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1832805299/sys_console.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1645245335/crypto.o: ../src/config/default/crypto/src/crypto.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1645245335" 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o.d 
	@${RM} ${OBJECTDIR}/_ext/1645245335/crypto.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1645245335/crypto.o.d" -o ${OBJECTDIR}/_ext/1645245335/crypto.o ../src/config/default/crypto/src/crypto.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1645245335/crypto.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1171490990/freertos_hooks.o: ../src/config/default/freertos_hooks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1171490990" 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d 
	@${RM} ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" -o ${OBJECTDIR}/_ext/1171490990/freertos_hooks.o ../src/config/default/freertos_hooks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1171490990/freertos_hooks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/croutine.o: ../src/third_party/rtos/FreeRTOS/Source/croutine.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/croutine.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/croutine.o.d" -o ${OBJECTDIR}/_ext/404212886/croutine.o ../src/third_party/rtos/FreeRTOS/Source/croutine.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/croutine.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/list.o: ../src/third_party/rtos/FreeRTOS/Source/list.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/list.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/list.o.d" -o ${OBJECTDIR}/_ext/404212886/list.o ../src/third_party/rtos/FreeRTOS/Source/list.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/list.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/queue.o: ../src/third_party/rtos/FreeRTOS/Source/queue.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/queue.o.d" -o ${OBJECTDIR}/_ext/404212886/queue.o ../src/third_party/rtos/FreeRTOS/Source/queue.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/queue.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o: ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" -o ${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o ../src/third_party/rtos/FreeRTOS/Source/FreeRTOS_tasks.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/FreeRTOS_tasks.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/timers.o: ../src/third_party/rtos/FreeRTOS/Source/timers.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/timers.o.d" -o ${OBJECTDIR}/_ext/404212886/timers.o ../src/third_party/rtos/FreeRTOS/Source/timers.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/timers.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/event_groups.o: ../src/third_party/rtos/FreeRTOS/Source/event_groups.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/event_groups.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/event_groups.o.d" -o ${OBJECTDIR}/_ext/404212886/event_groups.o ../src/third_party/rtos/FreeRTOS/Source/event_groups.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/event_groups.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/404212886/stream_buffer.o: ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/404212886" 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o.d 
	@${RM} ${OBJECTDIR}/_ext/404212886/stream_buffer.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" -o ${OBJECTDIR}/_ext/404212886/stream_buffer.o ../src/third_party/rtos/FreeRTOS/Source/stream_buffer.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/404212886/stream_buffer.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/1665200909/heap_3.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/1665200909" 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_3.o.d 
	@${RM} ${OBJECTDIR}/_ext/1665200909/heap_3.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/1665200909/heap_3.o.d" -o ${OBJECTDIR}/_ext/1665200909/heap_3.o ../src/third_party/rtos/FreeRTOS/Source/portable/MemMang/heap_3.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/1665200909/heap_3.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
${OBJECTDIR}/_ext/951553246/port.o: ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c  nbproject/Makefile-${CND_CONF}.mk
	@${MKDIR} "${OBJECTDIR}/_ext/951553246" 
	@${RM} ${OBJECTDIR}/_ext/951553246/port.o.d 
	@${RM} ${OBJECTDIR}/_ext/951553246/port.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -ffunction-sections -O1 -DWOLFSSL_IGNORE_FILE_WARN -DHAVE_CONFIG_H -I"../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ" -I"../src/third_party/rtos/FreeRTOS/Source/include" -I"../src/config/default/driver/wifi/pic32mzw1/include/" -I"../src/third_party/wolfssl/wolfssl" -I"../src/third_party/wolfssl" -I"../src" -I"../src/config/default" -I"../src/packs/PIC32MZ1025W104132_DFP" -I"../src/config/default/library" -I"../src/config/default/library/tcpip/src" -I"../src/config/default/library/tcpip/src/common" -I"../src/third_party/paho.mqtt.embedded-c" -Werror -Wall -MMD -MF "${OBJECTDIR}/_ext/951553246/port.o.d" -o ${OBJECTDIR}/_ext/951553246/port.o ../src/third_party/rtos/FreeRTOS/Source/portable/MPLAB/PIC32MZ/port.c    -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	@${FIXDEPS} "${OBJECTDIR}/_ext/951553246/port.o.d" $(SILENT) -rsi ${MP_CC_DIR}../ 
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/driver/wifi/pic32mzw1/lib/pic32mzw1.a  ../src/config/default/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\driver\wifi\pic32mzw1\lib\pic32mzw1.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=160000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk  ../src/config/default/driver/wifi/pic32mzw1/lib/pic32mzw1.a ../src/config/default/p32MZ1025W104132.ld
	@${MKDIR} dist/${CND_CONF}/${IMAGE_TYPE} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}    ..\src\config\default\driver\wifi\pic32mzw1\lib\pic32mzw1.a      -DXPRJ_default=$(CND_CONF)  -no-legacy-libc  $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=160000,--gc-sections,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,dist/${CND_CONF}/${IMAGE_TYPE}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex dist/${CND_CONF}/${IMAGE_TYPE}/MyFirstProject.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif


# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r build/default
	${RM} -r dist/default

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
