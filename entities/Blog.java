package com.entities;

public class Blog {
    private int clubId;
    private int blog_id;
    private String blogName;
    private String blogDescription;
    
	public Blog(int blog_id, int clubId, String blogName, String blogDescription) {
        this.setBlog_id(blog_id);
        this.setClubId(clubId);
        this.setBlogName(blogName);
        this.setBlogDescription(blogDescription);
	}

	public String getBlogName() {
		return blogName;
	}

	public void setBlogName(String blogName) {
		this.blogName = blogName;
	}

	public String getBlogDescription() {
		return blogDescription;
	}

	public void setBlogDescription(String blogDescription) {
		this.blogDescription = blogDescription;
	}

	public int getClubId() {
		return clubId;
	}

	public void setClubId(int clubId) {
		this.clubId = clubId;
	}

	public int getBlog_id() {
		return blog_id;
	}

	public void setBlog_id(int blog_id) {
		this.blog_id = blog_id;
	}
}
