package com.sxit.Util;

import java.io.BufferedOutputStream;
import java.io.OutputStream;

import jcifs.smb.NtlmPasswordAuthentication;
import jcifs.smb.SmbFile;
import jcifs.smb.SmbFileOutputStream;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class SambaUtil {
    private static final Logger LOGGER = LoggerFactory.getLogger(SambaUtil.class);


    private static SambaUtil smbUtil;

    public static SambaUtil newinstance() {
        if (smbUtil == null) {
            smbUtil = new SambaUtil();
        }
        return smbUtil;
    }

    public void putSmb(String filename, byte[] bytes) throws Exception {
        OutputStream out = null;
        try {
            ImgConfigUtil icUtil = ImgConfigUtil.newinstance();
            System.setProperty("jcifs.smb.client.dfs.disabled", "true");
            NtlmPasswordAuthentication auth = new NtlmPasswordAuthentication(icUtil.getIp(), icUtil.getUsername(), icUtil.getPwd());
            String filepath = "smb://" + icUtil.getIp() + icUtil.getFilename();
            SmbFile file = new SmbFile(filepath + filename, auth);
            out = new BufferedOutputStream(new SmbFileOutputStream(file, true));
            out.write(bytes);
            out.flush();
        } catch (Exception e) {
            LOGGER.error(e.getMessage());
            throw e;
        } finally {
            if (out != null) {
                out.close();
            }
        }

    }
}
