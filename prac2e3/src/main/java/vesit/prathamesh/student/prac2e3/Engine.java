package vesit.prathamesh.student.prac2e3;

public class Engine {
    private String chasisNumber;
    private Integer gears;

    public Engine() {
    }

    public String getChasisNumber() {
        return chasisNumber;
    }

    public void setChasisNumber(String chasisNumber) {
        this.chasisNumber = chasisNumber;
    }

    @Override
    public String toString() {
        return "Engine{" +
                "chasisNumber='" + chasisNumber + '\'' +
                ", gears=" + gears +
                '}';
    }

    public Integer getGears() {
        return gears;
    }

    public void setGears(Integer gears) {
        this.gears = gears;
    }
}

