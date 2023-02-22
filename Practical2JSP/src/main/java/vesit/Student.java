package vesit;

public class Student {
    private String name;
    private String dept;
    public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Student() {
    }


    @Override
	public String toString() {
		return "Student [name=" + name + ", dept=" + dept + "]";
	}

	public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}