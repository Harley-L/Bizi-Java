package BiziLocal;

public class Application {
    private String name;
    private String processName;
    private String iconPath;

    public Application(String name, String processName, String iconPath) {
        this.name = name;
        this.processName = processName;
        this.iconPath = iconPath;
    }

    public String getName() {
        return name;
    }

    public String getProcessName() {
        return processName;
    }

    public String getIconPath() {
        return iconPath;
    }
}
