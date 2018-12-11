package BEAN;

public class announce {
	private String idNews;
	private String titleMainNews;
	private String titleNews;
	private String ContentNews;
	public announce(String idNews, String titleMainNews, String titleNews, String contentNews) {
		super();
		this.idNews = idNews;
		this.titleMainNews = titleMainNews;
		this.titleNews = titleNews;
		ContentNews = contentNews;
	}
    public announce()
    {
    	
    }
	public String getIdNews() {
		return idNews;
	}
	public void setIdNews(String idNews) {
		this.idNews = idNews;
	}
	public String getTitleMainNews() {
		return titleMainNews;
	}
	public void setTitleMainNews(String titleMainNews) {
		this.titleMainNews = titleMainNews;
	}
	public String getTitleNews() {
		return titleNews;
	}
	public void setTitleNews(String titleNews) {
		this.titleNews = titleNews;
	}
	public String getContentNews() {
		return ContentNews;
	}
	public void setContentNews(String contentNews) {
		ContentNews = contentNews;
	}
    
}
