package BiziLocal;

import MongoStatics.MongoDBMethods;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;

public class User {
    private String firstName, lastName, email, password;
    private ArrayList<Device> devices = new ArrayList<>();

    public User(String firstName, String lastName, String email, String password) {
        this.firstName = firstName;
        this.lastName  = lastName;
        this.email = email;
        this.password = password;
        addDevice();
        MongoDBMethods.insertUser(this);
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    public ArrayList<Device> getDevices() {
        return devices;
    }

    public void addDevice() {
        String hostname = "Unknown";
        boolean duplicateDevice = false;
        try {
            InetAddress addr;
            addr = InetAddress.getLocalHost();
            hostname = addr.getHostName();
            for (Device device : devices) {
                // Need to check if hostname is unknown and deal with it accordingly
                if (hostname.equals(device.getHostname())) {
                    duplicateDevice = true;
                    break;
                }
            }
            if (!duplicateDevice) {
                devices.add(new Device(hostname, devices.size()));
            }
        }
        catch (UnknownHostException ex)
        {
            System.out.println("Hostname can not be resolved");
        }
    }
}