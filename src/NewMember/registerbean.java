package NewMember;

public class registerbean {
	private String account,name,no,email,dob,address,pin;

	public registerbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	public registerbean(String account, String name, String no, String email, String dob, String address,
			String pin) {
		super();
		this.account = account;
		this.name = name;
		this.no = no;
		this.email = email;
		this.dob = dob;
		this.address = address;
		
		this.pin = pin;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}
}
