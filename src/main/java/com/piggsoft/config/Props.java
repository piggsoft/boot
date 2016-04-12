package com.piggsoft.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * <br>Created by fire pigg on 2016/4/12.
 *
 * @author piggsoft@163.com
 */
@Component
@ConfigurationProperties(prefix = "config")
public class Props {
    private String url;

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
