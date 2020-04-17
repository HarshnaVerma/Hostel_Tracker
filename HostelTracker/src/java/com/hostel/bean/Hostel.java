package com.hostel.bean; 
public class Hostel {  
private int id;  
private String ownername,hostelname,hosteladd,hosteldesc,hostelimg;
 private String contact,hostelrent;
  

 

public Hostel() {
	}


	public Hostel(int id, String ownername, String contact, String hostelname,String hosteladd,String hostelrent,String hosteldesc,String hostelimg) {
		this(ownername,contact,hostelname,hosteladd,hostelrent,hosteldesc,hostelimg);
		this.id = id;
	}
	
	public Hostel(String ownername, String contact, String hostelname,String hosteladd,String hostelrent,String hosteldesc,String hostelimg) {
		this.ownername = ownername;
		this.contact = contact;
		this.hostelname = hostelname;
                this.hosteladd = hosteladd;
                this.hostelrent = hostelrent;
                this.hosteldesc = hosteldesc;
                this.hostelimg = hostelimg;
               
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return ownername;
	}

	public void setName(String ownername) {
		this.ownername = ownername;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public String getHostelName() {
		return hostelname;
	}

	public void setHostelName(String hostelname) {
		this.hostelname = hostelname;
	}
        public String getHostelAdd() {
		return hosteladd;
	}

	public void setHostelAdd(String hosteladd) {
		this.hosteladd = hosteladd;
	}
        public String getHostelRent() {
		return hostelrent;
	}

	public void setHostelRent(String hostelrent) {
		this.hostelrent = hostelrent;
	}
        
        public String getHostelDesc() {
		return hosteldesc;
	}

	public void setHostelDesc(String hosteldesc) {
		this.hosteldesc = hosteldesc;
	}
        
        
     
    public String getHostelImg() {
        return hostelimg;
    }
 
    public void setHostelImg(String hostelimg) {
        this.hostelimg = hostelimg;
    }


}