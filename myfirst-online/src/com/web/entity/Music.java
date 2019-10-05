package com.web.entity;

/**
 * @author yujie_zhao
 * @ClassName Music
 * @Description TODO
 * @Date 2019/10/4
 * @Version 1.0
 **/
public class Music {
    private Integer id;
    private String name;
    private String cover;
    private String singer;

    @Override
    public String toString() {
        return "Music{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", cover='" + cover + '\'' +
                ", singer='" + singer + '\'' +
                '}';
    }

    public Music(Integer id, String name, String cover, String singer) {
        this.id = id;
        this.name = name;
        this.cover = cover;
        this.singer = singer;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }

    public String getSinger() {
        return singer;
    }

    public void setSinger(String singer) {
        this.singer = singer;
    }
}
