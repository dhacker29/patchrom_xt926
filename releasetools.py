import common
import edify_generator

def AddAssertions(info):
    info.script.AppendExtra('symlink("/system/etc/firmware/wlan/prima/inis/WCNSS_qcom_cfg.ini", "/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini");');
    info.script.AppendExtra('symlink("/persist/WCNSS_qcom_wlan_nv.bin", "/system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin");');
    info.script.AppendExtra('symlink("/system/bin/wiperiface_v02", "/system/bin/wiperiface");');
    info.script.AppendExtra('symlink("/system/lib/libwiperjni_v02.so", "/system/lib/libwiperjni.so");');
    info.script.AppendExtra('symlink("/system/lib/libxt_v02.so", "/system/lib/libxt_native.so");');
    info.script.AppendExtra('symlink("/system/etc/firmware/wlan/prima/inis/WCNSS_qcom_cfg.ini", "/system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini");');

def FullOTA_InstallEnd(info):
    AddAssertions(info)

def IncrementalOTA_InstallEnd(info):
    AddAssertions(info)
