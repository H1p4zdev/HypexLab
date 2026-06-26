package android.security.hypex;

import android.os.SystemProperties;
import android.provider.Settings;
import android.util.Log;

import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreSpi;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.Enumeration;
import java.util.Set;

public final class HypexHook {

    private static final String TAG = "HypexHook";
    private static boolean sInitialized = false;

    private HypexHook() {}

    public static void initSystemServer() {
        Log.i(TAG, "initSystemServer: HypexHook loaded into system_server");
        sInitialized = true;
        syncSettingsToSystemProperties();
    }

    public static void initContext(String packageName) {
        Log.d(TAG, "initContext: " + packageName);
    }

    public static void syncSettingsToSystemProperties() {
        String[] keys = {
            "persist.sys.nexiun.integrity",
            "persist.sys.nexiun.playstore",
            "persist.sys.nexiun.messenger",
            "persist.sys.nexiun.games",
            "persist.sys.nexiun.photos",
            "persist.sys.nexiun.netflix",
            "persist.sys.nexiun.snapchat",
        };
        for (String key : keys) {
            try {
                int value = Settings.Secure.getInt(
                    android.app.ActivityThread.currentApplication().getContentResolver(), key, 0);
                SystemProperties.set(key, String.valueOf(value));
            } catch (Exception ignored) {}
        }
    }

    public static boolean hasSystemFeature(String name, int version) {
        if (!sInitialized) return true;
        if ("android.hardware.type.pc".equals(name)) return false;
        return true;
    }

    public static Certificate[] engineGetCertificateChain(KeyStoreSpi spi, String alias) {
        try {
            Certificate[] chain = spi.engineGetCertificateChain(alias);
            if (chain != null && chain.length > 0 && chain[0] instanceof X509Certificate) {
                Log.d(TAG, "engineGetCertificateChain: intercepted for alias=" + alias);
            }
            return chain;
        } catch (Exception e) {
            Log.e(TAG, "engineGetCertificateChain error", e);
            return null;
        }
    }
}
