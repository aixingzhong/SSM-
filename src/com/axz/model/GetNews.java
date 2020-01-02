package com.axz.model;

import java.util.Date;

public class GetNews {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.news_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private Integer newsId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.category_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private Integer categoryId;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.time
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private Date time;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.title
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private String title;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.image
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private String image;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.hot
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private Integer hot;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column get_news.html_content
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    private String htmlContent;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.news_id
     *
     * @return the value of get_news.news_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public Integer getNewsId() {
        return newsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.news_id
     *
     * @param newsId the value for get_news.news_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setNewsId(Integer newsId) {
        this.newsId = newsId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.category_id
     *
     * @return the value of get_news.category_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public Integer getCategoryId() {
        return categoryId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.category_id
     *
     * @param categoryId the value for get_news.category_id
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.time
     *
     * @return the value of get_news.time
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public Date getTime() {
        return time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.time
     *
     * @param time the value for get_news.time
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setTime(Date time) {
        this.time = time;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.title
     *
     * @return the value of get_news.title
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public String getTitle() {
        return title;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.title
     *
     * @param title the value for get_news.title
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.image
     *
     * @return the value of get_news.image
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public String getImage() {
        return image;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.image
     *
     * @param image the value for get_news.image
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.hot
     *
     * @return the value of get_news.hot
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public Integer getHot() {
        return hot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.hot
     *
     * @param hot the value for get_news.hot
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setHot(Integer hot) {
        this.hot = hot;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column get_news.html_content
     *
     * @return the value of get_news.html_content
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public String getHtmlContent() {
        return htmlContent;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column get_news.html_content
     *
     * @param htmlContent the value for get_news.html_content
     *
     * @mbg.generated Thu Jan 02 14:30:58 CST 2020
     */
    public void setHtmlContent(String htmlContent) {
        this.htmlContent = htmlContent == null ? null : htmlContent.trim();
    }
}