//package BiziLocal;
//
//import org.bson.Document;
//
//import java.util.ArrayList;
//
//
//public class Device {
//    private String hostname;
//    private int deviceID;
//    private ArrayList<Application> applications = new ArrayList<>();
//
//    public Device(String hostname, int deviceID) {
//        this.hostname = hostname;
//        this.deviceID = deviceID;
//        applications.add(new Application("Discord", "Discord_Process", "C:/Pathway"));
//        applications.add(new Application("Minecraft", "Minecraft_Process", "C:/Pathway"));
//    }
//
//    public String getHostname() {
//        return hostname;
//    }
//
//    public int getDeviceID() {
//        return deviceID;
//    }
//
//    public ArrayList<Document> getApplicationsList() {
//        ArrayList<Document> list = new ArrayList<>(applications.size());
//        for (int i = 0; i < applications.size(); i++) {
//            list.add(new Document("name", applications.get(i).getName())
//                    .append("process_name", applications.get(i).getProcessName())
//                    .append("icon_path", applications.get(i).getIconPath()));
//        }
//        return list;
//    }
//}
